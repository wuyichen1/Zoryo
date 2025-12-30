import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:zoryo/zzokdet_fangfa/payfunc.dart';

import '../models/diamond_pack.dart';
import '../zzokdet_fangfa/app_state.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({
    super.key,
    required this.url,
    this.title,
  });

  final String url;
  final String? title;

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  InAppWebViewController? webViewController;
  bool isLoading = true;
  UnmodifiableListView<UserScript>? _initialUserScripts;
  URLRequest? _initialUrlRequest;
  InAppWebViewSettings? _initialSettings;

  @override
  void initState() {
    super.initState();
    // 在initState中初始化不依赖context的配置，确保只创建一次
    _initialUrlRequest = URLRequest(url: WebUri(widget.url));

    _initialSettings = InAppWebViewSettings(
      javaScriptEnabled: true,
      domStorageEnabled: true,
      useHybridComposition: true,
      javaScriptCanOpenWindowsAutomatically: true,
      iframeAllowFullscreen: true,
      useShouldOverrideUrlLoading: true,
      allowsInlineMediaPlayback: true,
      transparentBackground: true,
      cacheEnabled: true,
      iframeAllow: "camera; microphone",
      mediaPlaybackRequiresUserGesture: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    // 只在初始化时需要app数据，避免数据更新时触发rebuild导致H5刷新
    final app = Provider.of<AppState>(context, listen: false);

    // 只在首次build时初始化脚本（需要app数据），避免rebuild时重新创建导致页面重新加载
    _initialUserScripts ??= UnmodifiableListView([
      UserScript(
        source: _buildInjectionScript(app),
        injectionTime: UserScriptInjectionTime.AT_DOCUMENT_START,
      ),
    ]);
    return Scaffold(
      body: Stack(
        children: [
          InAppWebView(
            // 不设置key，依赖缓存的initial*属性和WebViewScreen的key来保证稳定性
            // 如果设置key，需要与路由中的WebViewScreen key保持一致，但这会导致key管理复杂
            // 通过缓存initial*属性，确保每次build时使用的都是相同的对象引用
            initialUrlRequest: _initialUrlRequest!, // 使用缓存的URLRequest，确保对象引用不变
            initialUserScripts: _initialUserScripts!, // 使用缓存的脚本，确保对象引用不变
            initialSettings: _initialSettings!, // 使用缓存的设置，确保对象引用不变
            onConsoleMessage: (controller, consoleMessage) {
              debugPrint('WebView Console: ${consoleMessage.message}');
            },
            onWebViewCreated: (controller) {
              webViewController = controller;
              // 不在onWebViewCreated中注入，等待onLoadStop时注入，确保页面已加载完成

              // close - 关闭H5网页
              webViewController!.addJavaScriptHandler(
                handlerName: 'close',
                callback: (args) {
                  // 在关闭H5页面之前，清除可能保存的H5路由位置，防止路由重新评估时恢复H5页面
                  final currentPath = GoRouter.of(context)
                      .routerDelegate
                      .currentConfiguration
                      .uri
                      .toString();
                  if (currentPath.startsWith('/h5/')) {
                    app.saveRouteLocation('');
                  }
                  if (mounted) {
                    Navigator.of(context).pop();
                  }
                  return null;
                },
              );

              // logout - 退出登录
              webViewController!.addJavaScriptHandler(
                handlerName: 'logout',
                callback: (args) {
                  app.logout();
                  return null;
                },
              );

              // updateUser - 更新用户数据
              webViewController!.addJavaScriptHandler(
                handlerName: 'updateUser',
                callback: (args) async {
                  try {
                    if (args.isNotEmpty && args[0] is List) {
                      // H5会自动关闭页面，这里延迟一下数据更新，确保H5页面关闭完成后再触发路由重新评估
                      // 这样可以避免路由重新评估时H5路由仍在栈中导致重新打开的问题
                      await Future.delayed(const Duration(milliseconds: 300));
                      // 在页面关闭后再更新数据，触发路由重新评估时H5路由已经不在栈中了
                      await app.updateUsers(args[0] as List<dynamic>);
                    }
                  } catch (e) {
                    debugPrint('Error in updateUser handler: $e');
                  }
                  return null;
                },
              );

              // updatePost - 更新帖子数据
              webViewController!.addJavaScriptHandler(
                handlerName: 'updatePost',
                callback: (args) async {
                  print('updatePost: $args');
                  try {
                    if (args.isNotEmpty && args[0] is List) {
                      // H5会自动关闭页面，这里延迟一下数据更新，确保H5页面关闭完成后再触发路由重新评估
                      // 这样可以避免路由重新评估时H5路由仍在栈中导致重新打开的问题
                      await Future.delayed(const Duration(milliseconds: 300));
                      // 在页面关闭后再更新数据，触发路由重新评估时H5路由已经不在栈中了
                      await app.updatePosts(args[0] as List<dynamic>);
                    }
                  } catch (e) {
                    debugPrint('Error in updatePost handler: $e');
                  }
                  return null;
                },
              );

              // updateComment - 更新评论数据
              webViewController!.addJavaScriptHandler(
                handlerName: 'updateComment',
                callback: (args) async {
                  try {
                    if (args.isNotEmpty && args[0] is List) {
                      await app.updateComments(args[0] as List<dynamic>);
                    }
                  } catch (e) {
                    debugPrint('Error in updateComment handler: $e');
                  }
                  return null;
                },
              );

              // uploadChat - 更新聊天室数据
              webViewController!.addJavaScriptHandler(
                handlerName: 'uploadChat',
                callback: (args) async {
                  try {
                    if (args.isNotEmpty && args[0] is List) {
                      await app.updateChatRooms(args[0] as List<dynamic>);
                    }
                  } catch (e) {
                    debugPrint('Error in uploadChat handler: $e');
                  }
                  return null;
                },
              );

              // uploadMessage - 更新消息数据
              webViewController!.addJavaScriptHandler(
                handlerName: 'uploadMessage',
                callback: (args) async {
                  try {
                    if (args.isNotEmpty && args[0] is List) {
                      await app.updateMessages(args[0] as List<dynamic>);
                    }
                  } catch (e) {
                    debugPrint('Error in uploadMessage handler: $e');
                  }
                  return null;
                },
              );

              // deleteaccount - 注销账号
              webViewController!.addJavaScriptHandler(
                handlerName: 'deleteaccount',
                callback: (args) async {
                  try {
                    await app.deleteAccount();
                  } catch (e) {
                    debugPrint('Error in deleteaccount handler: $e');
                  }
                  return null;
                },
              );

              // Recharge - 支付事件
              webViewController!.addJavaScriptHandler(
                handlerName: 'Recharge',
                callback: (args) async {
                  try {
                    if (args.isNotEmpty && args[0] is String) {
                      final paymentId = args[0] as String;
                      // 查找对应的金币包
                      final pack = app.diamondPacks.firstWhere(
                        (p) => p.key == paymentId,
                        orElse: () => app.diamondPacks.isNotEmpty
                            ? app.diamondPacks.first
                            : DiamondPack(key: '', cions: 0, meney: 0),
                      );

                      if (pack.key.isNotEmpty) {
                        // 执行支付，等待支付结果
                        final paymentSuccess =
                            await thotharapisRahephylothFanffa(
                                context, paymentId);

                        // 只有支付成功后才调用H5的onRechargeSuccess回调，传入购买的金币数量（不是用户金币总数）
                        if (paymentSuccess) {
                          await controller.evaluateJavascript(
                            source:
                                'window.onRechargeSuccess && window.onRechargeSuccess(${pack.cions})',
                          );
                        }
                      }
                    }
                  } catch (e) {
                    debugPrint('Error in Recharge handler: $e');
                  }
                  return null;
                },
              );
            },
            onLoadStart: (controller, url) {
              setState(() {
                isLoading = true;
              });
            },
            onLoadStop: (controller, url) async {
              // 只在首次加载完成时注入数据，避免H5更新数据后再次注入导致刷新
              // if (!_hasInitialized) {
              //   await _injectDataToWebView(controller, app);
              //   _hasInitialized = true;
              // }
              setState(() {
                isLoading = false;
              });
            },
            onReceivedError: (controller, request, error) {
              setState(() {
                isLoading = false;
              });
            },
            shouldOverrideUrlLoading: (controller, navigationAction) async {
              // Allow all navigation
              return NavigationActionPolicy.ALLOW;
            },
          ),
          // 显示loading指示器
          if (isLoading)
            Container(
              color: Colors.transparent,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
        ],
      ),
    );
  }

  // 将本地资源路径转换为网络URL
  static const String _baseUrl =
      'https://huanniuchat.oss-accelerate.aliyuncs.com/template_development/';

  String _convertToNetworkUrl(String path) {
    if (path.isEmpty) return path;
    // 如果已经是网络URL，直接返回
    if (path.startsWith('http://') || path.startsWith('https://')) {
      return path;
    }
    // 如果是assets路径，转换为网络URL
    if (path.startsWith('assets/')) {
      // 提取文件名（去掉assets/前缀和所有中间目录）
      // 例如: assets/images/xxx.png -> xxx.png
      final fileName = path.split('/').last;
      return '$_baseUrl$fileName';
    }
    // 其他情况（可能是相对路径），提取文件名
    final fileName = path.split('/').last;
    return '$_baseUrl$fileName';
  }

  String _buildInjectionScript(AppState app) {
    // 转换用户数据 - 处理头像
    final currentUserMap = app.currentUser.toMap();
    currentUserMap['avator'] =
        _convertToNetworkUrl(currentUserMap['avator'] as String);
    final userJson = jsonEncode(currentUserMap);

    // 转换用户列表数据 - 处理每个用户的头像
    final userListJson = jsonEncode(
      app.users.map((u) {
        final userMap = u.toMap();
        userMap['avator'] = _convertToNetworkUrl(userMap['avator'] as String);
        return userMap;
      }).toList(),
    );

    // 转换帖子数据 - 处理图片和视频（使用过滤后的帖子列表，排除blockList中用户的帖子）
    final dynamicJson = jsonEncode(
      app.filteredPosts.map((p) {
        final postMap = p.toMap();
        // 转换图片列表
        final picList = (postMap['dynamicPic'] as List<dynamic>)
            .map((pic) => _convertToNetworkUrl(pic.toString()))
            .toList();
        postMap['dynamicPic'] = picList;
        // 转换视频路径
        postMap['dynamicVideo'] =
            _convertToNetworkUrl(postMap['dynamicVideo'] as String);
        return postMap;
      }).toList(),
    );

    // Build commentJson (评论数据不需要转换资源路径，但需要过滤blockList中用户的评论)
    // 注意：这里传递所有评论，H5页面应该根据blockList过滤
    // 但由于我们在Flutter端已经过滤，为了保持一致性，这里也过滤
    final commentJson = jsonEncode(
      app.comments
          .where((c) => !app.currentUser.blockList.contains(c.userId))
          .map((c) => c.toMap())
          .toList(),
    );

    // Build chatListJson (聊天室数据不需要转换资源路径，但需要过滤包含blockList用户的聊天室)
    final chatListJson = jsonEncode(
      app.filteredChatRooms.map((c) => c.toMap()).toList(),
    );

    // 转换消息数据 - 处理图片
    final messageListJson = jsonEncode(
      app.messages.map((m) {
        final messageMap = m.toMap();
        messageMap['sendPicUrl'] =
            _convertToNetworkUrl(messageMap['sendPicUrl'] as String);
        return messageMap;
      }).toList(),
    );

    // Build coinListJson (金币包数据不需要转换资源路径)
    final coinListJson = jsonEncode(
      app.diamondPacks.map((d) => d.toMap()).toList(),
    );

    // Build reportListJson (举报选项数据不需要转换资源路径)
    final reportListJson = jsonEncode(
      app.reportOptions.map((r) => r.toMap()).toList(),
    );

    // Build publishImageListJson (发布选项数据不需要转换资源路径)
    final publishImageListJson = jsonEncode(
      app.publishOptions.map((p) => p.toMap()).toList(),
    );

    // Build chatBotDesc (AI模块数据不需要转换资源路径)
    final chatBotDescJson =
        app.chatBotDesc != null ? jsonEncode(app.chatBotDesc!.toMap()) : 'null';

    return '''
      (function() {
        // Set all window objects according to Flutter ↔ H5 Communication Rules
        window.userJson = $userJson;
        window.userListJson = $userListJson;
        window.dynamicJson = $dynamicJson;
        window.commentJson = $commentJson;
        window.chatListJson = $chatListJson;
        window.messageListJson = $messageListJson;
        window.coinListJson = $coinListJson;
        window.reportListJson = $reportListJson;
        window.publishImageListJson = $publishImageListJson;
        window.chatBotDesc = $chatBotDescJson;
        
        // Dispatch custom event to notify H5 that data is ready
        if (typeof window !== 'undefined') {
          window.dispatchEvent(new Event('flutterDataReady'));
        }
      })();
    ''';
  }
}
