import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:zoryo/zzokdet_fangfa/rFj3K214p596M2gf_payfunc.dart';

import '../models/bJpjHVrAqvtNbCtL_diapack.dart';
import '../zzokdet_fangfa/app_state.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({
    super.key,
    required this.xV7wDbbWHIG4ebaBUrl,
    this.lOrJMO5uyGbwIXgb,
  });

  final String xV7wDbbWHIG4ebaBUrl;
  final String? lOrJMO5uyGbwIXgb;

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
    final a4vdQjcrZlNJQJ4EH = Provider.of<AppState>(context, listen: false);

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
                callback: (vpIsKCIc4NenJOi1) {
                  final Z4Ytu7kCNUX2I8IX = GoRouter.of(context)
                      .routerDelegate
                      .currentConfiguration
                      .uri
                      .toString();
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

  static const String C9d1wmXEp2oiAZm1 =
      'https://huanniuchat.oss-accelerate.aliyuncs.com/template_development/';

  String wE010MAHjv7VBASGtonet(String WCTKBYT4bFNT0qGs) {
    if (WCTKBYT4bFNT0qGs.isEmpty) return WCTKBYT4bFNT0qGs;
    if (WCTKBYT4bFNT0qGs.startsWith('http://') ||
        WCTKBYT4bFNT0qGs.startsWith('https://')) {
      return WCTKBYT4bFNT0qGs;
    }
    if (WCTKBYT4bFNT0qGs.startsWith('assets/')) {
      // assets/images/xxx.png -> xxx.png
      final o9CDDnv7u5RNptvQ = WCTKBYT4bFNT0qGs.split('/').last;
      return '$C9d1wmXEp2oiAZm1$o9CDDnv7u5RNptvQ';
    }
    final o9CDDnv7u5RNptvQ = WCTKBYT4bFNT0qGs.split('/').last;
    return '$C9d1wmXEp2oiAZm1$o9CDDnv7u5RNptvQ';
  }

  String jNh5ixTdr1Ni67Eb(AppState qkfAkzV1Omau2nW3) {
    final zwYQoJk5KrCwZOnS = qkfAkzV1Omau2nW3.NLbGEpZKzMfAbV3k.toMap();
    zwYQoJk5KrCwZOnS['avator'] =
        wE010MAHjv7VBASGtonet(zwYQoJk5KrCwZOnS['avator'] as String);
    final u2YU986pmty1rFTJ1 = jsonEncode(zwYQoJk5KrCwZOnS);

    final l9VBXsOIUDp4etC0P = jsonEncode(
      qkfAkzV1Omau2nW3.EGX7N1GxSRqAoJMH.map((u) {
        final uNh7rO1lVlbTgkJr = u.toMap();
        uNh7rO1lVlbTgkJr['avator'] =
            wE010MAHjv7VBASGtonet(uNh7rO1lVlbTgkJr['avator'] as String);
        return uNh7rO1lVlbTgkJr;
      }).toList(),
    );

    final DlbCYUuVp6z52ut2 = jsonEncode(
      qkfAkzV1Omau2nW3.glufK0J7UE7AEAHL.map((p) {
        final cwJTwPtP10VRiHZA = p.toMap();
        final GqCymKEFp3ltpQIX =
            (cwJTwPtP10VRiHZA['dynamicPic'] as List<dynamic>)
                .map((pic) => wE010MAHjv7VBASGtonet(pic.toString()))
                .toList();
        cwJTwPtP10VRiHZA['dynamicPic'] = GqCymKEFp3ltpQIX;
        cwJTwPtP10VRiHZA['dynamicVideo'] =
            wE010MAHjv7VBASGtonet(cwJTwPtP10VRiHZA['dynamicVideo'] as String);
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
        oqXBK8axnty5uLnq['sendPicUrl'] =
            wE010MAHjv7VBASGtonet(oqXBK8axnty5uLnq['sendPicUrl'] as String);
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
