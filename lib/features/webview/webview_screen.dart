import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';
import 'package:zoryo/features/diamond/payfunc.dart';

import '../../models/diamond_pack.dart';
import '../../providers/app_state.dart';

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
  double progress = 0;
  AppState? _previousAppState;
  bool _isUpdatingFromH5 = false; // 标记是否正在处理H5回调更新

  @override
  void initState() {
    super.initState();
  }

  // 检查数据是否发生变化
  bool _hasDataChanged(AppState oldState, AppState newState) {
    // 检查登录状态变化
    if (oldState.isLoggedIn != newState.isLoggedIn) {
      return true;
    }

    // 检查当前用户关键数据是否变化
    final oldUser = oldState.currentUser;
    final newUser = newState.currentUser;
    if (oldUser.userId != newUser.userId ||
        oldUser.coins != newUser.coins ||
        oldUser.name != newUser.name ||
        oldUser.email != newUser.email ||
        oldUser.avator != newUser.avator ||
        oldUser.about != newUser.about ||
        oldUser.follow.length != newUser.follow.length ||
        oldUser.fans.length != newUser.fans.length ||
        oldUser.blockList.length != newUser.blockList.length ||
        oldUser.picPostLikeIds.length != newUser.picPostLikeIds.length ||
        oldUser.videoPostLikeIds.length != newUser.videoPostLikeIds.length) {
      return true;
    }

    // 检查列表长度变化（快速检测）
    if (oldState.users.length != newState.users.length ||
        oldState.posts.length != newState.posts.length ||
        oldState.comments.length != newState.comments.length ||
        oldState.chatRooms.length != newState.chatRooms.length ||
        oldState.messages.length != newState.messages.length) {
      return true;
    }

    // 如果列表长度相同，检查是否有新增或修改（通过比较关键字段）
    // 这里只做简单检查，避免性能问题
    if (oldState.posts.isNotEmpty && newState.posts.isNotEmpty) {
      final oldFirstPost = oldState.posts.first;
      final newFirstPost = newState.posts.first;
      if (oldFirstPost.dynamicId != newFirstPost.dynamicId ||
          oldFirstPost.dynamicLikeCount != newFirstPost.dynamicLikeCount ||
          oldFirstPost.dynamicCommentCount !=
              newFirstPost.dynamicCommentCount) {
        return true;
      }
    }

    return false;
  }

  // 同步数据到H5
  Future<void> _syncDataToH5(AppState app) async {
    if (webViewController == null || isLoading) return;

    try {
      await _injectDataToWebView(webViewController!, app);
      debugPrint('Data synced to H5 from Flutter');
    } catch (e) {
      debugPrint('Error syncing data to H5: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final app = context.watch<AppState>();

    // 检测AppState数据变化，自动同步到H5
    if (_previousAppState != null &&
        webViewController != null &&
        !_isUpdatingFromH5 &&
        !isLoading) {
      // 检查数据是否真的发生了变化
      if (_hasDataChanged(_previousAppState!, app)) {
        // 延迟注入，避免在build过程中执行
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted) {
            _syncDataToH5(app);
          }
        });
      }
    }
    _previousAppState = app;

    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title ?? ''),
      //   leading: IconButton(
      //     icon: const Icon(Icons.arrow_back_ios_new),
      //     onPressed: () => Navigator.of(context).pop(),
      //   ),
      // ),
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(
              url: WebUri(widget.url),
            ),
            initialUserScripts: UnmodifiableListView([
              UserScript(
                source: _buildInjectionScript(app),
                injectionTime: UserScriptInjectionTime.AT_DOCUMENT_START,
              ),
            ]),
            initialSettings: InAppWebViewSettings(
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
            ),
            onConsoleMessage: (controller, consoleMessage) {
              debugPrint('WebView Console: ${consoleMessage.message}');
            },
            onWebViewCreated: (controller) {
              webViewController = controller;
              _injectDataToWebView(controller, app);

              // close - 关闭H5网页
              webViewController!.addJavaScriptHandler(
                handlerName: 'close',
                callback: (args) {
                  Navigator.of(context).pop();
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
                      _isUpdatingFromH5 = true;
                      await app.updateUsers(args[0] as List<dynamic>);
                      // 重新注入数据到WebView，确保H5获取最新数据
                      await _injectDataToWebView(controller, app);
                      _isUpdatingFromH5 = false;
                      // if (context.mounted) {
                      //   Navigator.of(context).pop();
                      // }
                    }
                  } catch (e) {
                    _isUpdatingFromH5 = false;
                    debugPrint('Error in updateUser handler: $e');
                  }
                  return null;
                },
              );

              // updatePost - 更新帖子数据
              webViewController!.addJavaScriptHandler(
                handlerName: 'updatePost',
                callback: (args) async {
                  try {
                    if (args.isNotEmpty && args[0] is List) {
                      _isUpdatingFromH5 = true;
                      await app.updatePosts(args[0] as List<dynamic>);
                      // 重新注入数据到WebView，确保H5获取最新数据
                      await _injectDataToWebView(controller, app);
                      _isUpdatingFromH5 = false;
                      if (context.mounted) {
                        Navigator.of(context).pop();
                      }
                    }
                  } catch (e) {
                    _isUpdatingFromH5 = false;
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
                      _isUpdatingFromH5 = true;
                      await app.updateComments(args[0] as List<dynamic>);
                      // 重新注入数据到WebView，确保H5获取最新数据
                      await _injectDataToWebView(controller, app);
                      _isUpdatingFromH5 = false;
                    }
                  } catch (e) {
                    _isUpdatingFromH5 = false;
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
                      _isUpdatingFromH5 = true;
                      await app.updateChatRooms(args[0] as List<dynamic>);
                      // 重新注入数据到WebView，确保H5获取最新数据
                      await _injectDataToWebView(controller, app);
                      _isUpdatingFromH5 = false;
                    }
                  } catch (e) {
                    _isUpdatingFromH5 = false;
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
                      _isUpdatingFromH5 = true;
                      await app.updateMessages(args[0] as List<dynamic>);
                      // 重新注入数据到WebView，确保H5获取最新数据
                      await _injectDataToWebView(controller, app);
                      _isUpdatingFromH5 = false;
                    }
                  } catch (e) {
                    _isUpdatingFromH5 = false;
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
                    _isUpdatingFromH5 = true;
                    await app.deleteAccount();
                    // 重新注入数据到WebView，确保H5获取最新数据
                    await _injectDataToWebView(controller, app);
                    _isUpdatingFromH5 = false;
                  } catch (e) {
                    _isUpdatingFromH5 = false;
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
                        _isUpdatingFromH5 = true;
                        // 执行支付
                        // await app.handleRecharge(paymentId);
                        thotharapisRahephylothFanffa(context, paymentId);

                        // 调用H5的onRechargeSuccess回调，传入购买的金币数量（不是用户金币总数）
                        await controller.evaluateJavascript(
                          source:
                              'window.onRechargeSuccess && window.onRechargeSuccess(${pack.cions})',
                        );

                        // 重新注入数据到WebView，确保H5获取最新数据
                        await _injectDataToWebView(controller, app);
                        _isUpdatingFromH5 = false;
                      }
                    }
                  } catch (e) {
                    _isUpdatingFromH5 = false;
                    debugPrint('Error in Recharge handler: $e');
                  }
                  return null;
                },
              );
            },
            onLoadStart: (controller, url) {
              setState(() {
                isLoading = true;
                progress = 0;
              });
            },
            onLoadStop: (controller, url) async {
              // Re-inject data when page loads (in case of navigation)
              await _injectDataToWebView(controller, app);
              setState(() {
                isLoading = false;
                // 初始化previousAppState，避免首次加载时触发同步
                _previousAppState = app;
              });
            },
            onProgressChanged: (controller, progress) {
              setState(() {
                this.progress = progress / 100;
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
          if (isLoading && progress < 1.0)
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: LinearProgressIndicator(
                value: progress,
                backgroundColor: Colors.grey[800],
                valueColor:
                    const AlwaysStoppedAnimation<Color>(Color(0xFFD47A2F)),
              ),
            ),
        ],
      ),
    );
  }

  Future<void> _injectDataToWebView(
    InAppWebViewController controller,
    AppState app,
  ) async {
    // Wait a bit for the page to be ready (only if page is loading)
    if (isLoading) {
      await Future.delayed(const Duration(milliseconds: 500));
    } else {
      // For data sync, use shorter delay
      await Future.delayed(const Duration(milliseconds: 100));
    }

    // Inject all required data according to Flutter ↔ H5 Communication Rules
    final injectionScript = _buildInjectionScript(app);

    try {
      await controller.evaluateJavascript(source: injectionScript);
    } catch (e) {
      debugPrint('Error injecting data to WebView: $e');
    }
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

    // 转换帖子数据 - 处理图片和视频
    final dynamicJson = jsonEncode(
      app.posts.map((p) {
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

    // Build commentJson (评论数据不需要转换资源路径)
    final commentJson = jsonEncode(
      app.comments.map((c) => c.toMap()).toList(),
    );

    // Build chatListJson (聊天室数据不需要转换资源路径)
    final chatListJson = jsonEncode(
      app.chatRooms.map((c) => c.toMap()).toList(),
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
