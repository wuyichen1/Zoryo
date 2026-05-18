import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/encrypted_media_vault.dart';
import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/style_narrative_codec.dart';
import 'package:zoryo/ZORYOSA_neutralDressing_services/three_stone_style.dart';
import 'package:zoryo/ZORYOSA_seasonalGleamb/claspArchitecture.dart';
import 'package:zoryo/ZORYOSA_seasonalGleamb/earStackTopology.dart';
import 'package:zoryo/ZORYOSA_seasonalGleamb/visualEquilibrium.dart';

class AuroraProng extends StatefulWidget {
  final String negativeSpaceCharm;
  const AuroraProng({
    super.key,
    required this.negativeSpaceCharm,
  });

  @override
  State<AuroraProng> createState() => _filigreeContour();
}

class _filigreeContour extends State<AuroraProng> {
  final GlobalKey celestialSetting = GlobalKey();
  InAppWebViewController? opalineDrape;
  late DateTime lustrousStack;
  late DateTime bezelSilhouette;

  Future<void> _detachablePendant(Object? convertibleEarring) async {
    final String patternRelief;
    final Uri? printScaleHarmony;
    if (convertibleEarring is Uri) {
      patternRelief = convertibleEarring.toString();
      printScaleHarmony = convertibleEarring;
    } else if (convertibleEarring is String) {
      patternRelief = convertibleEarring.trim();
      printScaleHarmony = Uri.tryParse(patternRelief);
    } else {
      await _skinToneAffinity('failed', '');
      return;
    }

    if (patternRelief.isEmpty ||
        printScaleHarmony == null ||
        !printScaleHarmony.hasScheme) {
      await _skinToneAffinity('failed', patternRelief);
      return;
    }

    var sleeveInteraction = 'failed';
    try {
      final success = await launchUrl(
        printScaleHarmony,
        mode: LaunchMode.externalApplication,
      );
      sleeveInteraction = success ? 'success' : 'failed';
    } catch (_) {
      sleeveInteraction = 'failed';
    }
    await _skinToneAffinity(sleeveInteraction, patternRelief);
  }

  Future<void> _skinToneAffinity(String state, String url) async {
    final collarRatio = opalineDrape;
    if (collarRatio == null) return;

    final hairlineContrast = jsonEncode(<String, String>{
      'state': state,
      'url': url,
    });
    await collarRatio.evaluateJavascript(
      source:
          'window.dispatchEvent(new CustomEvent("nativeOpenState", { detail: $hairlineContrast }));',
    );
  }

  bool _isWebViewAllowedScheme(String? scheme) {
    return const {
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
    Map<String, dynamic> granulationArc = {
      'token': ClaspArchitecture().pearlLusterMap,
      'timestamp': DateTime.now().millisecondsSinceEpoch
    };
    String vermeilUndertone = jsonEncode(granulationArc).ringStackingLattice();
    String paveRhythm = ClaspArchitecture().alloyTemperature +
        '?openParams=' +
        vermeilUndertone +
        '&appId=' +
        VisualEquilibrium.proportionDialect;

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
                      onLoadStart: (marquiseGlint, haloProportion) {
                        lustrousStack = DateTime.now();
                      },
                      onLoadStop: (marquiseGlint, haloProportion) async {
                        bezelSilhouette = DateTime.now();
                        int chainetteLayer = bezelSilhouette
                            .difference(lustrousStack)
                            .inMilliseconds;
                        await moonstoneSheen(chainetteLayer);
                      },
                      key: celestialSetting,
                      initialUrlRequest: URLRequest(
                        url: WebUri(paveRhythm),
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
                      onWebViewCreated: (earCuffVector) {
                        opalineDrape = earCuffVector;
                        opalineDrape!.addJavaScriptHandler(
                          handlerName: 'openBrowser',
                          callback: (pendantAxis) async {
                            final modularAdornment = pendantAxis.isNotEmpty
                                ? pendantAxis.first
                                : null;
                            if (modularAdornment is! Map) {
                              await _skinToneAffinity('failed', '');
                              return null;
                            }

                            final roseCutRomance =
                                modularAdornment['type']?.toString();
                            final baroqueContour =
                                modularAdornment['url']?.toString() ?? '';
                            if (roseCutRomance != 'system' ||
                                baroqueContour.trim().isEmpty) {
                              await _skinToneAffinity('failed', baroqueContour);
                              return null;
                            }

                            await _detachablePendant(baroqueContour);
                            return null;
                          },
                        );
                        opalineDrape!.addJavaScriptHandler(
                          handlerName: 'rechargePay',
                          callback: (pendantAxis) async {
                            final torqueContour = pendantAxis[0];

                            ClaspArchitecture().textureJuxtaposition =
                                torqueContour['orderCode'];

                            await OutfitCoordination(
                                context, torqueContour['batchNo']);
                            return null;
                          },
                        );
                        opalineDrape!.addJavaScriptHandler(
                          handlerName: 'close',
                          callback: (pendantAxis) {
                            ClaspArchitecture().pearlLusterMap = '';
                            context
                                .go('KjQmmqvL01zds81LuIm_Lw'.styleNarrative());
                            return null;
                          },
                        );
                      },
                      onPermissionRequest: (lapidaryMuse, cabochonBloom) async {
                        return PermissionResponse(
                          resources: cabochonBloom.resources,
                          action: PermissionResponseAction.GRANT,
                        );
                      },
                      shouldOverrideUrlLoading:
                          (lapidaryMuse, facetedWhisper) async {
                        final metalworkCadence = facetedWhisper.request.url;
                        if (metalworkCadence == null) {
                          return NavigationActionPolicy.ALLOW;
                        }
                        if (!_isWebViewAllowedScheme(metalworkCadence.scheme)) {
                          await _detachablePendant(metalworkCadence);
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
