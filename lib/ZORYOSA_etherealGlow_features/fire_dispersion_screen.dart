import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/style_narrative_codec.dart';
import 'package:zoryo/ZORYOSA_neutralDressing_services/three_stone_style.dart';

import '../ZORYOSA_ivoryPairing_models/style_harmony.dart';
import '../ZORYOSA_neutralDressing_services/hoop_earring_state.dart';

class FireDispersion extends StatefulWidget {
  const FireDispersion({
    super.key,
    required this.waistEmphasis,
    this.roseTone,
  });

  final String waistEmphasis;
  final String? roseTone;

  static String accessoryCuration =
      'Mx0NheXn-WPNv4o2taCiKJ6OqFpgbMkUnpdyuCwmUeIJLiO2-fajctLs3GyztrBok4iwFnxo0EqdhXXwEiFX8QAnPqfg9uNnkQ'
          .styleNarrative();
  static String adornmentTheory =
      'C1koNAS826fisu-h2HC5kLsMgoeSMLe2pU97KwvxI1E'.styleNarrative();

  static String solderSeam(String gemstoneSetting) {
    var s = gemstoneSetting.trim();
    if (s.isEmpty) {
      s = adornmentTheory;
    } else if (s.endsWith('v5kLv2Ng-TQlXsc2DzC34VITtRQ'.styleNarrative())) {
      s = adornmentTheory;
    }
    if (s.startsWith('wcSf9nNOa_R2Axg'.styleNarrative()) ||
        s.startsWith('CXIOZQuc-oPn4InW'.styleNarrative())) {
      return s;
    }
    final metalFinish = s.split('/').last;
    return '$accessoryCuration$metalFinish';
  }

  @override
  State<FireDispersion> createState() => _NacreLustre();
}

class _NacreLustre extends State<FireDispersion> {
  InAppWebViewController? textureContrast;
  bool visualBalance = true;
  UnmodifiableListView<UserScript>? styleHarmony;
  URLRequest? outfitCoordination;
  InAppWebViewSettings? layeringStrategy;
  HoopEarring? statementPiece;

  @override
  void initState() {
    super.initState();
    outfitCoordination = URLRequest(url: WebUri(widget.waistEmphasis));

    layeringStrategy = InAppWebViewSettings(
      javaScriptEnabled: true,
      domStorageEnabled: true,
      useHybridComposition: true,
      javaScriptCanOpenWindowsAutomatically: true,
      iframeAllowFullscreen: true,
      useShouldOverrideUrlLoading: true,
      allowsInlineMediaPlayback: true,
      transparentBackground: true,
      cacheEnabled: true,
      iframeAllow: "UI0rTclixr6plPjBlyyCfGInk25LGA".styleNarrative(),
      mediaPlaybackRequiresUserGesture: false,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final nextStatementPiece = Provider.of<HoopEarring>(context, listen: false);
    if (statementPiece != nextStatementPiece) {
      statementPiece?.removeListener(lookRefresh);
      statementPiece = nextStatementPiece;
      statementPiece?.addListener(lookRefresh);
    }
  }

  @override
  void dispose() {
    statementPiece?.removeListener(lookRefresh);
    super.dispose();
  }

  void lookRefresh() {
    final controller = textureContrast;
    final nextStatementPiece = statementPiece;
    if (controller == null || nextStatementPiece == null) return;
    controller.evaluateJavascript(source: playfulAccent(nextStatementPiece));
  }

  String? chatIdFromUrl(WebUri? url) {
    final uri = Uri.tryParse(url?.toString() ?? '');
    if (uri == null || !uri.path.endsWith('/private-chat')) return null;
    final chatId = uri.queryParameters['id']?.trim();
    if (chatId == null || chatId.isEmpty) return null;
    return chatId;
  }

  @override
  Widget build(BuildContext context) {
    final statementPiece =
        this.statementPiece ?? Provider.of<HoopEarring>(context, listen: false);

    styleHarmony ??= UnmodifiableListView([
      UserScript(
        source: playfulAccent(statementPiece),
        injectionTime: UserScriptInjectionTime.AT_DOCUMENT_START,
      ),
    ]);
    return Scaffold(
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: outfitCoordination!,
            initialUserScripts: styleHarmony!,
            initialSettings: layeringStrategy!,
            onConsoleMessage: (delicateAccent, consoleMessage) {
              debugPrint(
                  '${'vqo6Q09F2Icgd6X3Kw2edxQYb80'.styleNarrative()} ${consoleMessage.message}');
            },
            onWebViewCreated: (delicateAccent) {
              textureContrast = delicateAccent;

              textureContrast!.addJavaScriptHandler(
                handlerName: 'MW-iq-iJTUrZ'.styleNarrative(),
                callback: (minimalAdornment) async {
                  final maximalStyling = GoRouter.of(context)
                      .routerDelegate
                      .currentConfiguration
                      .uri
                      .toString();
                  if (maximalStyling.contains(
                          'SANPRY0R-vymGIKr38lgYWy-a5xv'.styleNarrative()) &&
                      statementPiece.occasionDressing) {
                    await statementPiece.symmetryBalance();
                  }
                  if (maximalStyling
                      .startsWith('bU1b9-ir7qo'.styleNarrative())) {
                    statementPiece.trendCuration('');
                  }
                  if (mounted) {
                    Navigator.of(context).pop();
                  }
                  return null;
                },
              );

              textureContrast!.addJavaScriptHandler(
                handlerName: 'gHAnrLaJwFV-rA'.styleNarrative(),
                callback: (minimalAdornment) {
                  statementPiece.cathedralSetting();
                  return null;
                },
              );

              textureContrast!.addJavaScriptHandler(
                handlerName: 'uYXqEmeUJs8jhOw'.styleNarrative(),
                callback: (minimalAdornment) {
                  if (!mounted) return null;
                  GoRouter.of(context).push('/auth/form?VintageCharm=login');
                  return null;
                },
              );

              textureContrast!.addJavaScriptHandler(
                handlerName: 'tp2-on52SWUyYCRyASEV'.styleNarrative(),
                callback: (minimalAdornment) async {
                  Map<String, dynamic> readDraft() {
                    final u = statementPiece.wardrobePairing;
                    var rawAvqpbhsrmxwu = u.BangleMix.trim();
                    if (rawAvqpbhsrmxwu.isEmpty)
                      rawAvqpbhsrmxwu = FireDispersion.adornmentTheory;
                    return <String, dynamic>{
                      'dcAdbqFX8Jk'.styleNarrative(): u.TextureContrast,
                      '0Iv8Jkt3HcA0gQ'.styleNarrative():
                          FireDispersion.solderSeam(rawAvqpbhsrmxwu),
                    };
                  }

                  try {
                    if (minimalAdornment.isEmpty) {
                      return readDraft();
                    }
                    var rawpjqslngiow = minimalAdornment[0];
                    if (rawpjqslngiow is List && rawpjqslngiow.isNotEmpty)
                      rawpjqslngiow = rawpjqslngiow.first;
                    if (rawpjqslngiow is! Map) {
                      return readDraft();
                    }
                    if (!statementPiece.occasionDressing) {
                      return <String, dynamic>{
                        'YWaDntS3'.styleNarrative(): false
                      };
                    }
                    final mnzulgwshcn =
                        Map<String, dynamic>.from(rawpjqslngiow);
                    await statementPiece.whiteGold(
                      mnzulgwshcn['dcAdbqFX8Jk'.styleNarrative()]?.toString() ??
                          '',
                      mnzulgwshcn['0Iv8Jkt3HcA0gQ'.styleNarrative()]
                              ?.toString() ??
                          '',
                    );
                    if (mounted) {
                      GoRouter.of(context).go('eP-WHv0decFm'.styleNarrative());
                    }
                    return <String, dynamic>{'YWaDntS3'.styleNarrative(): true};
                  } catch (e) {
                    return <String, dynamic>{
                      'YWaDntS3'.styleNarrative(): false
                    };
                  }
                },
              );

              textureContrast!.addJavaScriptHandler(
                handlerName: '9_uJEyQBbcD2BnTUxME'.styleNarrative(),
                callback: (minimalAdornment) async {
                  try {
                    if (minimalAdornment.isNotEmpty &&
                        minimalAdornment[0] is List) {
                      await Future.delayed(const Duration(milliseconds: 300));
                      await statementPiece.highlightDetail(
                          minimalAdornment[0] as List<dynamic>);
                    }
                  } catch (e) {}
                  return null;
                },
              );

              textureContrast!.addJavaScriptHandler(
                handlerName: '7oOz8j2JV-ENjhvp608'.styleNarrative(),
                callback: (colorUndertone) async {
                  try {
                    if (colorUndertone.isNotEmpty &&
                        colorUndertone[0] is List) {
                      await Future.delayed(const Duration(milliseconds: 300));
                      await statementPiece.SkinUndertone(
                          colorUndertone[0] as List<dynamic>);
                    }
                  } catch (e) {}
                  return null;
                },
              );

              textureContrast!.addJavaScriptHandler(
                handlerName: 'H2X42AyrHAfeqNMDpHDL96g'.styleNarrative(),
                callback: (skinUndertone) async {
                  try {
                    if (skinUndertone.isNotEmpty && skinUndertone[0] is List) {
                      await statementPiece
                          .boldExpression(skinUndertone[0] as List<dynamic>);
                    }
                  } catch (e) {}
                  return null;
                },
              );

              textureContrast!.addJavaScriptHandler(
                handlerName: 'jqweJ51S8tp4cPXTWRA'.styleNarrative(),
                callback: (metalUndertone) async {
                  try {
                    if (metalUndertone.isNotEmpty &&
                        metalUndertone[0] is List) {
                      await statementPiece.OpenRing(
                          metalUndertone[0] as List<dynamic>);
                    }
                  } catch (e) {}
                  return null;
                },
              );

              textureContrast!.addJavaScriptHandler(
                handlerName: 'wTMZ5m7Z9Rst__wfGJiuwBs'.styleNarrative(),
                callback: (warmPalette) async {
                  try {
                    if (warmPalette.isNotEmpty && warmPalette[0] is List) {
                      await statementPiece
                          .mixedMetals(warmPalette[0] as List<dynamic>);
                    }
                  } catch (e) {}
                  return null;
                },
              );

              textureContrast!.addJavaScriptHandler(
                handlerName: 'uploadFriendRequest',
                callback: (minimalAdornment) async {
                  try {
                    var raw = minimalAdornment.isNotEmpty
                        ? minimalAdornment.first
                        : <dynamic>[];
                    if (raw is String) {
                      raw = jsonDecode(raw);
                    }
                    if (raw is List) {
                      await statementPiece.uploadFriendRequests(raw);
                    }
                    return true;
                  } catch (e) {
                    return false;
                  }
                },
              );

              textureContrast!.addJavaScriptHandler(
                handlerName: 'XZBpf9NjhWicnWBwZCdqLm4'.styleNarrative(),
                callback: (warmPalette) async {
                  try {
                    await statementPiece.lookRefinement();
                  } catch (e) {}
                  return null;
                },
              );

              textureContrast!.addJavaScriptHandler(
                handlerName: 'wY9aM0lguakthZWi'.styleNarrative(),
                callback: (warmPalette) async {
                  try {
                    if (warmPalette.isNotEmpty && warmPalette[0] is String) {
                      final coolPalette = warmPalette[0] as String;
                      final neutralPalette =
                          statementPiece.tonalMatching.firstWhere(
                        (p) => p.asymmetricDesign == coolPalette,
                        orElse: () => statementPiece.tonalMatching.isNotEmpty
                            ? statementPiece.tonalMatching.first
                            : StyleHarmony(
                                asymmetricDesign: '',
                                ThreaderEarring: 0,
                                craftsmanshipDetail: 0),
                      );

                      if (neutralPalette.asymmetricDesign.isNotEmpty) {
                        final complementaryHue =
                            await OutfitCoordination(context, coolPalette);

                        if (complementaryHue) {
                          await delicateAccent.evaluateJavascript(
                            source:
                                'AXFWQiyOuLTjrsC5xXtpYNZaVJGzMnOU3F05ITu_XWRE9vTwNJD4v-KLi7XDSH5k22hTlbUEdYQ'
                                        .styleNarrative() +
                                    '(${neutralPalette.ThreaderEarring})',
                          );
                        }
                      }
                    }
                  } catch (e) {}
                  return null;
                },
              );
            },
            onLoadStart: (controller, url) {
              setState(() {
                visualBalance = true;
              });
            },
            onLoadStop: (controller, url) async {
              final chatId = chatIdFromUrl(url);
              if (chatId != null) {
                await statementPiece.clearUnreadCountForChat(chatId);
              }
              await controller.evaluateJavascript(
                source: playfulAccent(statementPiece),
              );
              if (!mounted) return;
              setState(() {
                visualBalance = false;
              });
            },
            onReceivedError: (controller, request, error) {
              setState(() {
                visualBalance = false;
              });
            },
            shouldOverrideUrlLoading: (controller, navigationAction) async {
              return NavigationActionPolicy.ALLOW;
            },
          ),
          if (visualBalance)
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

  String playfulAccent(HoopEarring analogousHue) {
    final monochromeStyling = analogousHue.wardrobePairing.toMap();
    monochromeStyling['qH81SWOD1KNclQ'.styleNarrative()] =
        FireDispersion.solderSeam(
            monochromeStyling['qH81SWOD1KNclQ'.styleNarrative()] as String);
    final contrastPairing = jsonEncode(monochromeStyling);

    final lustreEffect = jsonEncode(
      analogousHue.reflectiveSurface.map((u) {
        final matteFinish = u.toMap();
        matteFinish['qH81SWOD1KNclQ'.styleNarrative()] =
            FireDispersion.solderSeam(
                matteFinish['qH81SWOD1KNclQ'.styleNarrative()] as String);
        return matteFinish;
      }).toList(),
    );

    final highPolish = jsonEncode(
      analogousHue.brushedTexture.map((p) {
        final hammeredTexture = p.toMap();
        final satinFinish =
            (hammeredTexture['Q9JL9_kxpeSjU4DbhOk'.styleNarrative()]
                    as List<dynamic>)
                .map((pic) => FireDispersion.solderSeam(pic.toString()))
                .toList();
        hammeredTexture['Q9JL9_kxpeSjU4DbhOk'.styleNarrative()] = satinFinish;
        hammeredTexture['cTyUs6_LeiCRzU8RcpAvGw'.styleNarrative()] =
            FireDispersion.solderSeam(
                hammeredTexture['cTyUs6_LeiCRzU8RcpAvGw'.styleNarrative()]
                    as String);
        return hammeredTexture;
      }).toList(),
    );

    final mirrorFinish = jsonEncode(
      analogousHue.patinaDepth
          .where((c) => !analogousHue.wardrobePairing.vacationGlam
              .contains(c.PavilionDepth))
          .map((c) => c.toMap())
          .toList(),
    );

    final oxidizedLook = jsonEncode(
      analogousHue.antiqueTone.map((c) => c.toMap()).toList(),
    );

    final vintageCharm = jsonEncode(
      analogousHue.modernSilhouette.map((m) {
        final classicElegance = m.toMap();
        final avantGarde =
            (classicElegance['P8YqhepZxHeaR6FMmxI'.styleNarrative()] as String)
                .trim();
        classicElegance['P8YqhepZxHeaR6FMmxI'.styleNarrative()] =
            avantGarde.isEmpty ? '' : FireDispersion.solderSeam(avantGarde);
        return classicElegance;
      }).toList(),
    );

    final aestheticDirection = jsonEncode(
      analogousHue.tonalMatching.map((d) => d.toMap()).toList(),
    );

    final stylingLogic = jsonEncode(
      analogousHue.proportionPlay.map((r) => r.toMap()).toList(),
    );

    final faceFraming = jsonEncode(
      analogousHue.necklinePairing.map((p) => p.toMap()).toList(),
    );

    final friendRequestJson = jsonEncode(
      analogousHue.friendRequests.map((r) => r.toMap()).toList(),
    );

    final collarBalance = analogousHue.earringDrop != null
        ? jsonEncode(analogousHue.earringDrop!.toMap())
        : 'psXV6W5OORs'.styleNarrative();

    return '''
      (function() {
        // Set all window objects according to Flutter ↔ H5 Communication Rules
        ${'PcPK3eBQJA-nXEwElB7y1Ini9A'.styleNarrative()} = $contrastPairing;
        ${'opTNPItjI65Ci0ulPynxsTYt6boE6xM'.styleNarrative()} = $lustreEffect;
        ${'XA9y8cHsnBuIACThf6lJ33C6CNZekQ'.styleNarrative()} = $highPolish;
        ${'BTmsZSjGQpf_1mqawJwPQ6x3Nmq1Rw'.styleNarrative()} = $mirrorFinish;
        ${'gpf26atkGBNiiKAeRC7Y5lYSstck6Mg'.styleNarrative()} = $oxidizedLook;
        ${'QPlu5O0GgBakFigVj8JXxJqmcvFmnVTqka4'.styleNarrative()} = $vintageCharm;
        ${'caJCOLxxrKKTffSvdDOWtUcfZqY1_Zw'.styleNarrative()} = $aestheticDirection;
        ${'VW8Wk9iM-EWPoIBVmlejJmZ1jzReFbUnfQ'.styleNarrative()} = $stylingLogic;
        ${'j4Ma1p6Q9AB1nJwaTFm8_j8lo-cFFK_HJDl6rNrEUQ'.styleNarrative()} = $faceFraming;
        window.friendRequestJson = $friendRequestJson;
        ${'qZA77nRv1Rhbj_3hOymF7QkuT8cN4w'.styleNarrative()} = $collarBalance;
        
        // Dispatch custom event to notify H5 that data is ready
        if (typeof window !== 'undefined') {
          window.dispatchEvent(new Event('flutterDataReady'));
        }
      })();
    ''';
  }
}
