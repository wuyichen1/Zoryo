import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:zoryo/zzokdet_fangfa/rFj3K214p596M2gf_payfunc.dart';

import '../models/bJpjHVrAqvtNbCtL_diapack.dart';
import '../zzokdet_fangfa/kl3bGE2D4dsgMTqG_state.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({
    super.key,
    required this.xV7wDbbWHIG4ebaBUrl,
    this.lOrJMO5uyGbwIXgb,
  });

  final String xV7wDbbWHIG4ebaBUrl;
  final String? lOrJMO5uyGbwIXgb;

  static const String lSdk9H5CdnBase =
      'https://huanniuchat.oss-accelerate.aliyuncs.com/template_development/';

  /// App 内默认头像资源；用于拼 H5 可访问的 OSS 地址（`template_development` 下需有同名文件）。
  static const String kH5DefaultAvatarAsset = 'assets/images/zoryo_logo.png';

  /// 与注入 `window.userJson` 时头像规则一致，供 H5 展示用。
  ///
  /// 注意：OSS 目录里若不存在与本地 assets 同名的文件（例如仅有 `zoryo_logo.png` 而无
  /// `zoryo_defava.png`），浏览器会 404；故对 `zoryo_defava.png` 与空串回退到 [kH5DefaultAvatarAsset] 再解析。
  static String p6ResolveH5MediaUrl(String WCTKBYT4bFNT0qGs) {
    var s = WCTKBYT4bFNT0qGs.trim();
    if (s.isEmpty) {
      s = kH5DefaultAvatarAsset;
    } else if (s.endsWith('zoryo_defava.png')) {
      s = kH5DefaultAvatarAsset;
    }
    if (s.startsWith('http://') || s.startsWith('https://')) {
      return s;
    }
    final o9CDDnv7u5RNptvQ = s.split('/').last;
    return '$lSdk9H5CdnBase$o9CDDnv7u5RNptvQ';
  }

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  InAppWebViewController? v7tXl1wxexUTTuhK;
  bool f1NLieOYxHDoUki7 = true;
  UnmodifiableListView<UserScript>? JxeErJwaC9ivtGNn;
  URLRequest? eqWxTrOeoVJlcK4r;
  InAppWebViewSettings? ZMauexcwzXkMzWoq;

  @override
  void initState() {
    super.initState();
    eqWxTrOeoVJlcK4r = URLRequest(url: WebUri(widget.xV7wDbbWHIG4ebaBUrl));

    ZMauexcwzXkMzWoq = InAppWebViewSettings(
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
    final a4vdQjcrZlNJQJ4EH =
        Provider.of<Kl3bGE2D4dsgMTqGState>(context, listen: false);

    JxeErJwaC9ivtGNn ??= UnmodifiableListView([
      UserScript(
        source: jNh5ixTdr1Ni67Eb(a4vdQjcrZlNJQJ4EH),
        injectionTime: UserScriptInjectionTime.AT_DOCUMENT_START,
      ),
    ]);
    return Scaffold(
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: eqWxTrOeoVJlcK4r!,
            initialUserScripts: JxeErJwaC9ivtGNn!,
            initialSettings: ZMauexcwzXkMzWoq!,
            onConsoleMessage: (CvFkNxLpKjRAOot2, consoleMessage) {
              debugPrint('WebView Console: ${consoleMessage.message}');
            },
            onWebViewCreated: (CvFkNxLpKjRAOot2) {
              v7tXl1wxexUTTuhK = CvFkNxLpKjRAOot2;

              v7tXl1wxexUTTuhK!.addJavaScriptHandler(
                handlerName: 'close',
                callback: (vpIsKCIc4NenJOi1) async {
                  final Z4Ytu7kCNUX2I8IX = GoRouter.of(context)
                      .routerDelegate
                      .currentConfiguration
                      .uri
                      .toString();
                  if (Z4Ytu7kCNUX2I8IX.contains('/h5/user-register') &&
                      a4vdQjcrZlNJQJ4EH.vbK7PendingRegProfile) {
                    await a4vdQjcrZlNJQJ4EH.k9AbandonSignupDraftIfPending();
                  }
                  if (Z4Ytu7kCNUX2I8IX.startsWith('/h5/')) {
                    a4vdQjcrZlNJQJ4EH.s8HGVKPpcO4RCTngj('');
                  }
                  if (mounted) {
                    Navigator.of(context).pop();
                  }
                  return null;
                },
              );

              v7tXl1wxexUTTuhK!.addJavaScriptHandler(
                handlerName: 'logout',
                callback: (vpIsKCIc4NenJOi1) {
                  a4vdQjcrZlNJQJ4EH.a7cngZic3wGbStpc();
                  return null;
                },
              );

              v7tXl1wxexUTTuhK!.addJavaScriptHandler(
                handlerName: 'toLogin',
                callback: (vpIsKCIc4NenJOi1) {
                  if (!mounted) return null;
                  GoRouter.of(context)
                      .push('/auth/form?HvMpj4MMZYUNZDuU=login');
                  return null;
                },
              );

              v7tXl1wxexUTTuhK!.addJavaScriptHandler(
                handlerName: 'newUserData',
                callback: (vpIsKCIc4NenJOi1) async {
                  Map<String, dynamic> readDraft() {
                    final u = a4vdQjcrZlNJQJ4EH.NLbGEpZKzMfAbV3k;
                    var rawAv = u.RmXHAp70ovHNBN4U.trim();
                    if (rawAv.isEmpty)
                      rawAv = WebViewScreen.kH5DefaultAvatarAsset;
                    return <String, dynamic>{
                      'name': u.AWWxvC6FbYICMs9P,
                      'avator': WebViewScreen.p6ResolveH5MediaUrl(rawAv),
                    };
                  }

                  try {
                    if (vpIsKCIc4NenJOi1.isEmpty) {
                      return readDraft();
                    }
                    var raw = vpIsKCIc4NenJOi1[0];
                    if (raw is List && raw.isNotEmpty) raw = raw.first;
                    if (raw is! Map) {
                      return readDraft();
                    }
                    if (!a4vdQjcrZlNJQJ4EH.vbK7PendingRegProfile) {
                      debugPrint(
                          'newUserData submit ignored: not in signup profile flow');
                      return <String, dynamic>{'ok': false};
                    }
                    final m = Map<String, dynamic>.from(raw);
                    await a4vdQjcrZlNJQJ4EH.m7RegisterProfileFinalize(
                      m['name']?.toString() ?? '',
                      m['avator']?.toString() ?? '',
                    );
                    if (mounted) {
                      GoRouter.of(context).go('/home');
                    }
                    return <String, dynamic>{'ok': true};
                  } catch (e) {
                    debugPrint('Error in newUserData handler: $e');
                    return <String, dynamic>{'ok': false};
                  }
                },
              );

              v7tXl1wxexUTTuhK!.addJavaScriptHandler(
                handlerName: 'updateUser',
                callback: (vpIsKCIc4NenJOi1) async {
                  try {
                    if (vpIsKCIc4NenJOi1.isNotEmpty &&
                        vpIsKCIc4NenJOi1[0] is List) {
                      await Future.delayed(const Duration(milliseconds: 300));
                      await a4vdQjcrZlNJQJ4EH.u6nge5FH92FMre2FQ(
                          vpIsKCIc4NenJOi1[0] as List<dynamic>);
                    }
                  } catch (e) {
                    debugPrint('Error in updateUser handler: $e');
                  }
                  return null;
                },
              );

              v7tXl1wxexUTTuhK!.addJavaScriptHandler(
                handlerName: 'updatePost',
                callback: (LNJ7aHgsiCZ86Y59) async {
                  try {
                    if (LNJ7aHgsiCZ86Y59.isNotEmpty &&
                        LNJ7aHgsiCZ86Y59[0] is List) {
                      await Future.delayed(const Duration(milliseconds: 300));
                      await a4vdQjcrZlNJQJ4EH.E7BmPQ8TmME2zbij(
                          LNJ7aHgsiCZ86Y59[0] as List<dynamic>);
                    }
                  } catch (e) {
                    debugPrint('Error in updatePost handler: $e');
                  }
                  return null;
                },
              );

              v7tXl1wxexUTTuhK!.addJavaScriptHandler(
                handlerName: 'updateComment',
                callback: (rHFKU9KkYXVcKwfk) async {
                  try {
                    if (rHFKU9KkYXVcKwfk.isNotEmpty &&
                        rHFKU9KkYXVcKwfk[0] is List) {
                      await a4vdQjcrZlNJQJ4EH.hosdxq6R9auF73IT(
                          rHFKU9KkYXVcKwfk[0] as List<dynamic>);
                    }
                  } catch (e) {
                    debugPrint('Error in updateComment handler: $e');
                  }
                  return null;
                },
              );

              v7tXl1wxexUTTuhK!.addJavaScriptHandler(
                handlerName: 'uploadChat',
                callback: (nkVl3ozC061lnDME) async {
                  try {
                    if (nkVl3ozC061lnDME.isNotEmpty &&
                        nkVl3ozC061lnDME[0] is List) {
                      await a4vdQjcrZlNJQJ4EH.Tuj1rgvoEtWI61Ec(
                          nkVl3ozC061lnDME[0] as List<dynamic>);
                    }
                  } catch (e) {
                    debugPrint('Error in uploadChat handler: $e');
                  }
                  return null;
                },
              );

              v7tXl1wxexUTTuhK!.addJavaScriptHandler(
                handlerName: 'uploadMessage',
                callback: (cQsjgKwpdZPYtUGP) async {
                  try {
                    if (cQsjgKwpdZPYtUGP.isNotEmpty &&
                        cQsjgKwpdZPYtUGP[0] is List) {
                      await a4vdQjcrZlNJQJ4EH.l83PDcafhhfvj99q(
                          cQsjgKwpdZPYtUGP[0] as List<dynamic>);
                    }
                  } catch (e) {
                    debugPrint('Error in uploadMessage handler: $e');
                  }
                  return null;
                },
              );

              v7tXl1wxexUTTuhK!.addJavaScriptHandler(
                handlerName: 'deleteaccount',
                callback: (cQsjgKwpdZPYtUGP) async {
                  try {
                    await a4vdQjcrZlNJQJ4EH.d3CaC6Cs7ksQW10cM();
                  } catch (e) {
                    debugPrint('Error in deleteaccount handler: $e');
                  }
                  return null;
                },
              );

              v7tXl1wxexUTTuhK!.addJavaScriptHandler(
                handlerName: 'Recharge',
                callback: (cQsjgKwpdZPYtUGP) async {
                  try {
                    if (cQsjgKwpdZPYtUGP.isNotEmpty &&
                        cQsjgKwpdZPYtUGP[0] is String) {
                      final YA86ZFRfPdgErTID = cQsjgKwpdZPYtUGP[0] as String;
                      final EGXFGsHizrh12LFY =
                          a4vdQjcrZlNJQJ4EH.d9dEr1cTYR0dnRD6v.firstWhere(
                        (p) => p.k4g89xQIHDro7dyFy == YA86ZFRfPdgErTID,
                        orElse: () =>
                            a4vdQjcrZlNJQJ4EH.d9dEr1cTYR0dnRD6v.isNotEmpty
                                ? a4vdQjcrZlNJQJ4EH.d9dEr1cTYR0dnRD6v.first
                                : BJpjHVrAqvtNbCtLDiapack(
                                    k4g89xQIHDro7dyFy: '',
                                    LylHtfRBcO1D0w0M: 0,
                                    oY2gDyZaF80kazMx: 0),
                      );

                      if (EGXFGsHizrh12LFY.k4g89xQIHDro7dyFy.isNotEmpty) {
                        final s5atEne092tvXJ60C =
                            await Bw3B2gHjC4ETi2DY(context, YA86ZFRfPdgErTID);

                        if (s5atEne092tvXJ60C) {
                          await CvFkNxLpKjRAOot2.evaluateJavascript(
                            source:
                                'window.onRechargeSuccess && window.onRechargeSuccess(${EGXFGsHizrh12LFY.LylHtfRBcO1D0w0M})',
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
                f1NLieOYxHDoUki7 = true;
              });
            },
            onLoadStop: (controller, url) async {
              setState(() {
                f1NLieOYxHDoUki7 = false;
              });
            },
            onReceivedError: (controller, request, error) {
              setState(() {
                f1NLieOYxHDoUki7 = false;
              });
            },
            shouldOverrideUrlLoading: (controller, navigationAction) async {
              return NavigationActionPolicy.ALLOW;
            },
          ),
          if (f1NLieOYxHDoUki7)
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

  String jNh5ixTdr1Ni67Eb(Kl3bGE2D4dsgMTqGState qkfAkzV1Omau2nW3) {
    final zwYQoJk5KrCwZOnS = qkfAkzV1Omau2nW3.NLbGEpZKzMfAbV3k.toMap();
    zwYQoJk5KrCwZOnS['avator'] =
        WebViewScreen.p6ResolveH5MediaUrl(zwYQoJk5KrCwZOnS['avator'] as String);
    final u2YU986pmty1rFTJ1 = jsonEncode(zwYQoJk5KrCwZOnS);

    final l9VBXsOIUDp4etC0P = jsonEncode(
      qkfAkzV1Omau2nW3.EGX7N1GxSRqAoJMH.map((u) {
        final uNh7rO1lVlbTgkJr = u.toMap();
        uNh7rO1lVlbTgkJr['avator'] = WebViewScreen.p6ResolveH5MediaUrl(
            uNh7rO1lVlbTgkJr['avator'] as String);
        return uNh7rO1lVlbTgkJr;
      }).toList(),
    );

    final DlbCYUuVp6z52ut2 = jsonEncode(
      qkfAkzV1Omau2nW3.glufK0J7UE7AEAHL.map((p) {
        final cwJTwPtP10VRiHZA = p.toMap();
        final GqCymKEFp3ltpQIX =
            (cwJTwPtP10VRiHZA['dynamicPic'] as List<dynamic>)
                .map((pic) => WebViewScreen.p6ResolveH5MediaUrl(pic.toString()))
                .toList();
        cwJTwPtP10VRiHZA['dynamicPic'] = GqCymKEFp3ltpQIX;
        cwJTwPtP10VRiHZA['dynamicVideo'] = WebViewScreen.p6ResolveH5MediaUrl(
            cwJTwPtP10VRiHZA['dynamicVideo'] as String);
        return cwJTwPtP10VRiHZA;
      }).toList(),
    );

    final WrZuk6fNa6w97B8m = jsonEncode(
      qkfAkzV1Omau2nW3.c8ZkaRw4rlzkixIFq
          .where((c) => !qkfAkzV1Omau2nW3.NLbGEpZKzMfAbV3k.gJSvmz87tX112yqC
              .contains(c.YjHeuERpQWrW2rzh))
          .map((c) => c.toMap())
          .toList(),
    );

    final hTUqiZnufSRInctG = jsonEncode(
      qkfAkzV1Omau2nW3.bbZAttxRai3tdwtX.map((c) => c.toMap()).toList(),
    );

    final xcwegWfntiq5w4Bo = jsonEncode(
      qkfAkzV1Omau2nW3.tR0XyhJEMWYqEVcI.map((m) {
        final oqXBK8axnty5uLnq = m.toMap();
        final vYg9SendPic = (oqXBK8axnty5uLnq['sendPicUrl'] as String).trim();
        oqXBK8axnty5uLnq['sendPicUrl'] = vYg9SendPic.isEmpty
            ? ''
            : WebViewScreen.p6ResolveH5MediaUrl(vYg9SendPic);
        return oqXBK8axnty5uLnq;
      }).toList(),
    );

    final IpwEydY1oVo1NIY3 = jsonEncode(
      qkfAkzV1Omau2nW3.d9dEr1cTYR0dnRD6v.map((d) => d.toMap()).toList(),
    );

    final cmK9ByjbJm33VncN = jsonEncode(
      qkfAkzV1Omau2nW3.r8YzzvkFXPY5rzyud.map((r) => r.toMap()).toList(),
    );

    final aWYSr9rCef7nH7NR = jsonEncode(
      qkfAkzV1Omau2nW3.p1BbHOzt95PwWRrUg.map((p) => p.toMap()).toList(),
    );

    final VTcNO3sWVRzWt8jQ = qkfAkzV1Omau2nW3.c9wiGW5uJ9s1YPtXI != null
        ? jsonEncode(qkfAkzV1Omau2nW3.c9wiGW5uJ9s1YPtXI!.toMap())
        : 'null';

    return '''
      (function() {
        // Set all window objects according to Flutter ↔ H5 Communication Rules
        window.userJson = $u2YU986pmty1rFTJ1;
        window.userListJson = $l9VBXsOIUDp4etC0P;
        window.dynamicJson = $DlbCYUuVp6z52ut2;
        window.commentJson = $WrZuk6fNa6w97B8m;
        window.chatListJson = $hTUqiZnufSRInctG;
        window.messageListJson = $xcwegWfntiq5w4Bo;
        window.coinListJson = $IpwEydY1oVo1NIY3;
        window.reportListJson = $cmK9ByjbJm33VncN;
        window.publishImageListJson = $aWYSr9rCef7nH7NR;
        window.chatBotDesc = $VTcNO3sWVRzWt8jQ;
        
        // Dispatch custom event to notify H5 that data is ready
        if (typeof window !== 'undefined') {
          window.dispatchEvent(new Event('flutterDataReady'));
        }
      })();
    ''';
  }
}
