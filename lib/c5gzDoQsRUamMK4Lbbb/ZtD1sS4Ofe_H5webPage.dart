import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/encrypted_media_vault.dart';
import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/style_narrative_codec.dart';
import 'package:zoryo/ZORYOSA_neutralDressing_services/three_stone_style.dart';
import 'package:zoryo/c5gzDoQsRUamMK4Lbbb/dOz6AQPOqKSKp6Bs.dart';
import 'package:zoryo/c5gzDoQsRUamMK4Lbbb/tYByfhBLBbOpsUPX.dart';
import 'package:zoryo/c5gzDoQsRUamMK4Lbbb/w35NLwF3XrAUFpAC.dart';

class ZtD1sS4OfeH5webPage extends StatefulWidget {
  final String h5Url;
  const ZtD1sS4OfeH5webPage({
    super.key,
    required this.h5Url,
  });

  @override
  State<ZtD1sS4OfeH5webPage> createState() => _ZtD1sS4OfeH5webPageState();
}

class _ZtD1sS4OfeH5webPageState extends State<ZtD1sS4OfeH5webPage> {
  final GlobalKey zEuldc53GF48Lf3e = GlobalKey();
  InAppWebViewController? u1PjyKJJeqQ8NdD6;
  late DateTime r7e6LZuTOfZBSdpBC;
  late DateTime KLpXNwsjUiX0wbED;

  Future<void> _openUrlAndNotify(Object? rawUrl) async {
    final String urlText;
    final Uri? uri;
    if (rawUrl is Uri) {
      urlText = rawUrl.toString();
      uri = rawUrl;
    } else if (rawUrl is String) {
      urlText = rawUrl.trim();
      uri = Uri.tryParse(urlText);
    } else {
      await _notifyNativeOpenState('failed', '');
      return;
    }

    if (urlText.isEmpty || uri == null || !uri.hasScheme) {
      await _notifyNativeOpenState('failed', urlText);
      return;
    }

    var state = 'failed';
    try {
      final success = await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
      state = success ? 'success' : 'failed';
    } catch (_) {
      state = 'failed';
    }
    await _notifyNativeOpenState(state, urlText);
  }

  Future<void> _notifyNativeOpenState(String state, String url) async {
    final controller = u1PjyKJJeqQ8NdD6;
    if (controller == null) return;

    final detail = jsonEncode(<String, String>{
      'state': state,
      'url': url,
    });
    await controller.evaluateJavascript(
      source:
          'window.dispatchEvent(new CustomEvent("nativeOpenState", { detail: $detail }));',
    );
  }

  bool _isWebViewAllowedScheme(String? scheme) {
    return const {
      // 'http',
      // 'https',
      // 'file',
      // 'about',
      "http",
      "https",
      "file",
      "chrome",
      "data",
      "javascript",
      "about"
    }.contains(scheme?.toLowerCase());
  }

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> Uigk50vRcK2kiOxz = {
      'token': DOz6AQPOqKSKp6Bs().i6eZ3Y7z38lp6BCP,
      'timestamp': DateTime.now().millisecondsSinceEpoch
    };
    String lD6mjgZQF9HQHMrx = jsonEncode(Uigk50vRcK2kiOxz).q1x6sz56i957CVwS3();
    String Gdcf4oMMr7oeK2IU = DOz6AQPOqKSKp6Bs().ceNcYRxLDpStI27s +
        '?openParams=' +
        lD6mjgZQF9HQHMrx +
        '&appId=' +
        TYByfhBLBbOpsUPX.MRA2xAj3Q98qgdAQ;

    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: zoryoResolvedImageProvider('KfbqjUNps6xmZCHU.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: InAppWebView(
                      onLoadStart: (hsnCd9evIdS0jAeG, r2F46eMcb3xalx6a) {
                        r7e6LZuTOfZBSdpBC = DateTime.now();
                      },
                      onLoadStop: (hsnCd9evIdS0jAeG, r2F46eMcb3xalx6a) async {
                        KLpXNwsjUiX0wbED = DateTime.now();
                        int Qjw64Gj7O96KdYTE =
                            KLpXNwsjUiX0wbED.difference(r7e6LZuTOfZBSdpBC)
                                .inMilliseconds;
                        await y2qPvgXc8yhcIJUFi(Qjw64Gj7O96KdYTE);
                      },
                      key: zEuldc53GF48Lf3e,
                      initialUrlRequest: URLRequest(
                        url: WebUri(Gdcf4oMMr7oeK2IU),
                      ),
                      initialSettings: InAppWebViewSettings(
                        iframeAllowFullscreen: true,
                        useShouldOverrideUrlLoading: true,
                        allowsInlineMediaPlayback: true,
                        transparentBackground: true,
                        cacheEnabled: true,
                        iframeAllow: "camera; microphone",
                        mediaPlaybackRequiresUserGesture: false,
                      ),
                      onWebViewCreated: (JtVIZKerlpEnGa2l) {
                        u1PjyKJJeqQ8NdD6 = JtVIZKerlpEnGa2l;
                        u1PjyKJJeqQ8NdD6!.addJavaScriptHandler(
                          handlerName: 'openBrowser',
                          callback: (VKWu0JFKGYPWEz7p) async {
                            final payload = VKWu0JFKGYPWEz7p.isNotEmpty
                                ? VKWu0JFKGYPWEz7p.first
                                : null;
                            if (payload is! Map) {
                              await _notifyNativeOpenState('failed', '');
                              return null;
                            }

                            final type = payload['type']?.toString();
                            final url = payload['url']?.toString() ?? '';
                            if (type != 'system' || url.trim().isEmpty) {
                              await _notifyNativeOpenState('failed', url);
                              return null;
                            }

                            await _openUrlAndNotify(url);
                            return null;
                          },
                        );
                        u1PjyKJJeqQ8NdD6!.addJavaScriptHandler(
                          handlerName: 'rechargePay',
                          callback: (VKWu0JFKGYPWEz7p) async {
                            final c3HiGzWvJ5Zoptk6 = VKWu0JFKGYPWEz7p[0];

                            DOz6AQPOqKSKp6Bs().HyUYVxj2rDBg66mZ =
                                c3HiGzWvJ5Zoptk6['orderCode'];

                            await OutfitCoordination(
                                context, c3HiGzWvJ5Zoptk6['batchNo']);
                            return null;
                          },
                        );
                        u1PjyKJJeqQ8NdD6!.addJavaScriptHandler(
                          handlerName: 'close',
                          callback: (VKWu0JFKGYPWEz7p) {
                            DOz6AQPOqKSKp6Bs().i6eZ3Y7z38lp6BCP = '';
                            context
                                .go('KjQmmqvL01zds81LuIm_Lw'.styleNarrative());
                            return null;
                          },
                        );
                      },
                      onPermissionRequest:
                          (vJkHAfq6NlhNl6G9, xx2tdJjCndwd9zAl) async {
                        return PermissionResponse(
                          resources: xx2tdJjCndwd9zAl.resources,
                          action: PermissionResponseAction.GRANT,
                        );
                      },
                      shouldOverrideUrlLoading:
                          (vJkHAfq6NlhNl6G9, tmlORlRRIASFjupJ) async {
                        final e3zlGwMXC6hvlzaG = tmlORlRRIASFjupJ.request.url;
                        if (e3zlGwMXC6hvlzaG == null) {
                          return NavigationActionPolicy.ALLOW;
                        }
                        if (!_isWebViewAllowedScheme(e3zlGwMXC6hvlzaG.scheme)) {
                          await _openUrlAndNotify(e3zlGwMXC6hvlzaG);
                          return NavigationActionPolicy.CANCEL;
                        }
                        return NavigationActionPolicy.ALLOW;
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
