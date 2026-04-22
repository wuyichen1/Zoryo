import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:zoryo/ZORYOSA_lkfuopwerq_features/ZORYOSA_utilseqvqeiutme/sT4Ixl4VDmBmLyF0_encryption.dart';
import 'package:zoryo/zzokdet_fangfa/rFj3K214p596M2gf_payfunc.dart';

import '../ZORYOSA_modelscqnskskmdm/bJpjHVrAqvtNbCtL_diapack.dart';
import '../zzokdet_fangfa/kl3bGE2D4dsgMTqG_state.dart';

class ZoryosaWebevvkrhjfch extends StatefulWidget {
  const ZoryosaWebevvkrhjfch({
    super.key,
    required this.xV7wDbbWHIG4ebaBUrl,
    this.lOrJMO5uyGbwIXgb,
  });

  final String xV7wDbbWHIG4ebaBUrl;
  final String? lOrJMO5uyGbwIXgb;

  static String lSdk9H5CdnBase =
      'Mx0NheXn-WPNv4o2taCiKJ6OqFpgbMkUnpdyuCwmUeIJLiO2-fajctLs3GyztrBok4iwFnxo0EqdhXXwEiFX8QAnPqfg9uNnkQ'
          .cx3hpvXCSg6mF();
  static String kH5DefaultAvatarAsset =
      'C1koNAS826fisu-h2HC5kLsMgoeSMLe2pU97KwvxI1E'.cx3hpvXCSg6mF();

  static String p6ResolveH5MediaUrl(String WCTKBYT4bFNT0qGs) {
    var s = WCTKBYT4bFNT0qGs.trim();
    if (s.isEmpty) {
      s = kH5DefaultAvatarAsset;
    } else if (s.endsWith('v5kLv2Ng-TQlXsc2DzC34VITtRQ'.cx3hpvXCSg6mF())) {
      s = kH5DefaultAvatarAsset;
    }
    if (s.startsWith('wcSf9nNOa_R2Axg'.cx3hpvXCSg6mF()) ||
        s.startsWith('CXIOZQuc-oPn4InW'.cx3hpvXCSg6mF())) {
      return s;
    }
    final o9CDDnv7u5RNptvQ = s.split('/').last;
    return '$lSdk9H5CdnBase$o9CDDnv7u5RNptvQ';
  }

  @override
  State<ZoryosaWebevvkrhjfch> createState() => _ZoryosaWebevvkrhjfchState();
}

class _ZoryosaWebevvkrhjfchState extends State<ZoryosaWebevvkrhjfch> {
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
      iframeAllow: "UI0rTclixr6plPjBlyyCfGInk25LGA".cx3hpvXCSg6mF(),
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
              debugPrint(
                  '${'vqo6Q09F2Icgd6X3Kw2edxQYb80'.cx3hpvXCSg6mF()} ${consoleMessage.message}');
            },
            onWebViewCreated: (CvFkNxLpKjRAOot2) {
              v7tXl1wxexUTTuhK = CvFkNxLpKjRAOot2;

              v7tXl1wxexUTTuhK!.addJavaScriptHandler(
                handlerName: 'MW-iq-iJTUrZ'.cx3hpvXCSg6mF(),
                callback: (vpIsKCIc4NenJOi1) async {
                  final Z4Ytu7kCNUX2I8IX = GoRouter.of(context)
                      .routerDelegate
                      .currentConfiguration
                      .uri
                      .toString();
                  if (Z4Ytu7kCNUX2I8IX.contains(
                          'SANPRY0R-vymGIKr38lgYWy-a5xv'.cx3hpvXCSg6mF()) &&
                      a4vdQjcrZlNJQJ4EH.vbK7PendingRegProfile) {
                    await a4vdQjcrZlNJQJ4EH.k9AbandonSignupDraftIfPending();
                  }
                  if (Z4Ytu7kCNUX2I8IX.startsWith(
                      'bU1b9-ir7qo'.cx3hpvXCSg6mF())) {
                    a4vdQjcrZlNJQJ4EH.s8HGVKPpcO4RCTngj('');
                  }
                  if (mounted) {
                    Navigator.of(context).pop();
                  }
                  return null;
                },
              );

              v7tXl1wxexUTTuhK!.addJavaScriptHandler(
                handlerName: 'gHAnrLaJwFV-rA'.cx3hpvXCSg6mF(),
                callback: (vpIsKCIc4NenJOi1) {
                  a4vdQjcrZlNJQJ4EH.a7cngZic3wGbStpc();
                  return null;
                },
              );

              v7tXl1wxexUTTuhK!.addJavaScriptHandler(
                handlerName: 'uYXqEmeUJs8jhOw'.cx3hpvXCSg6mF(),
                callback: (vpIsKCIc4NenJOi1) {
                  if (!mounted) return null;
                  GoRouter.of(context)
                      .push('/auth/form?HvMpj4MMZYUNZDuU=login');
                  return null;
                },
              );

              v7tXl1wxexUTTuhK!.addJavaScriptHandler(
                handlerName: 'tp2-on52SWUyYCRyASEV'.cx3hpvXCSg6mF(),
                callback: (vpIsKCIc4NenJOi1) async {
                  Map<String, dynamic> readDraft() {
                    final u = a4vdQjcrZlNJQJ4EH.NLbGEpZKzMfAbV3k;
                    var rawAvqpbhsrmxwu = u.RmXHAp70ovHNBN4U.trim();
                    if (rawAvqpbhsrmxwu.isEmpty)
                      rawAvqpbhsrmxwu =
                          ZoryosaWebevvkrhjfch.kH5DefaultAvatarAsset;
                    return <String, dynamic>{
                      'dcAdbqFX8Jk'.cx3hpvXCSg6mF(): u.AWWxvC6FbYICMs9P,
                      '0Iv8Jkt3HcA0gQ'.cx3hpvXCSg6mF():
                          ZoryosaWebevvkrhjfch.p6ResolveH5MediaUrl(
                              rawAvqpbhsrmxwu),
                    };
                  }

                  try {
                    if (vpIsKCIc4NenJOi1.isEmpty) {
                      return readDraft();
                    }
                    var rawpjqslngiow = vpIsKCIc4NenJOi1[0];
                    if (rawpjqslngiow is List && rawpjqslngiow.isNotEmpty)
                      rawpjqslngiow = rawpjqslngiow.first;
                    if (rawpjqslngiow is! Map) {
                      return readDraft();
                    }
                    if (!a4vdQjcrZlNJQJ4EH.vbK7PendingRegProfile) {
                      return <String, dynamic>{
                        'YWaDntS3'.cx3hpvXCSg6mF(): false
                      };
                    }
                    final mnzulgwshcn =
                        Map<String, dynamic>.from(rawpjqslngiow);
                    await a4vdQjcrZlNJQJ4EH.m7RegisterProfileFinalize(
                      mnzulgwshcn['dcAdbqFX8Jk'.cx3hpvXCSg6mF()]?.toString() ??
                          '',
                      mnzulgwshcn['0Iv8Jkt3HcA0gQ'.cx3hpvXCSg6mF()]
                              ?.toString() ??
                          '',
                    );
                    if (mounted) {
                      GoRouter.of(context).go('eP-WHv0decFm'.cx3hpvXCSg6mF());
                    }
                    return <String, dynamic>{'YWaDntS3'.cx3hpvXCSg6mF(): true};
                  } catch (e) {
                    return <String, dynamic>{'YWaDntS3'.cx3hpvXCSg6mF(): false};
                  }
                },
              );

              v7tXl1wxexUTTuhK!.addJavaScriptHandler(
                handlerName: '9_uJEyQBbcD2BnTUxME'.cx3hpvXCSg6mF(),
                callback: (vpIsKCIc4NenJOi1) async {
                  try {
                    if (vpIsKCIc4NenJOi1.isNotEmpty &&
                        vpIsKCIc4NenJOi1[0] is List) {
                      await Future.delayed(const Duration(milliseconds: 300));
                      await a4vdQjcrZlNJQJ4EH.u6nge5FH92FMre2FQ(
                          vpIsKCIc4NenJOi1[0] as List<dynamic>);
                    }
                  } catch (e) {}
                  return null;
                },
              );

              v7tXl1wxexUTTuhK!.addJavaScriptHandler(
                handlerName: '7oOz8j2JV-ENjhvp608'.cx3hpvXCSg6mF(),
                callback: (LNJ7aHgsiCZ86Y59) async {
                  try {
                    if (LNJ7aHgsiCZ86Y59.isNotEmpty &&
                        LNJ7aHgsiCZ86Y59[0] is List) {
                      await Future.delayed(const Duration(milliseconds: 300));
                      await a4vdQjcrZlNJQJ4EH.E7BmPQ8TmME2zbij(
                          LNJ7aHgsiCZ86Y59[0] as List<dynamic>);
                    }
                  } catch (e) {}
                  return null;
                },
              );

              v7tXl1wxexUTTuhK!.addJavaScriptHandler(
                handlerName: 'H2X42AyrHAfeqNMDpHDL96g'.cx3hpvXCSg6mF(),
                callback: (rHFKU9KkYXVcKwfk) async {
                  try {
                    if (rHFKU9KkYXVcKwfk.isNotEmpty &&
                        rHFKU9KkYXVcKwfk[0] is List) {
                      await a4vdQjcrZlNJQJ4EH.hosdxq6R9auF73IT(
                          rHFKU9KkYXVcKwfk[0] as List<dynamic>);
                    }
                  } catch (e) {}
                  return null;
                },
              );

              v7tXl1wxexUTTuhK!.addJavaScriptHandler(
                handlerName: 'jqweJ51S8tp4cPXTWRA'.cx3hpvXCSg6mF(),
                callback: (nkVl3ozC061lnDME) async {
                  try {
                    if (nkVl3ozC061lnDME.isNotEmpty &&
                        nkVl3ozC061lnDME[0] is List) {
                      await a4vdQjcrZlNJQJ4EH.Tuj1rgvoEtWI61Ec(
                          nkVl3ozC061lnDME[0] as List<dynamic>);
                    }
                  } catch (e) {}
                  return null;
                },
              );

              v7tXl1wxexUTTuhK!.addJavaScriptHandler(
                handlerName: 'wTMZ5m7Z9Rst__wfGJiuwBs'.cx3hpvXCSg6mF(),
                callback: (cQsjgKwpdZPYtUGP) async {
                  try {
                    if (cQsjgKwpdZPYtUGP.isNotEmpty &&
                        cQsjgKwpdZPYtUGP[0] is List) {
                      await a4vdQjcrZlNJQJ4EH.l83PDcafhhfvj99q(
                          cQsjgKwpdZPYtUGP[0] as List<dynamic>);
                    }
                  } catch (e) {}
                  return null;
                },
              );

              v7tXl1wxexUTTuhK!.addJavaScriptHandler(
                handlerName: 'XZBpf9NjhWicnWBwZCdqLm4'.cx3hpvXCSg6mF(),
                callback: (cQsjgKwpdZPYtUGP) async {
                  try {
                    await a4vdQjcrZlNJQJ4EH.d3CaC6Cs7ksQW10cM();
                  } catch (e) {}
                  return null;
                },
              );

              v7tXl1wxexUTTuhK!.addJavaScriptHandler(
                handlerName: 'wY9aM0lguakthZWi'.cx3hpvXCSg6mF(),
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
                                'AXFWQiyOuLTjrsC5xXtpYNZaVJGzMnOU3F05ITu_XWRE9vTwNJD4v-KLi7XDSH5k22hTlbUEdYQ'
                                        .cx3hpvXCSg6mF() +
                                    '(${EGXFGsHizrh12LFY.LylHtfRBcO1D0w0M})',
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
    zwYQoJk5KrCwZOnS['qH81SWOD1KNclQ'.cx3hpvXCSg6mF()] =
        ZoryosaWebevvkrhjfch.p6ResolveH5MediaUrl(
            zwYQoJk5KrCwZOnS['qH81SWOD1KNclQ'.cx3hpvXCSg6mF()] as String);
    final u2YU986pmty1rFTJ1 = jsonEncode(zwYQoJk5KrCwZOnS);

    final l9VBXsOIUDp4etC0P = jsonEncode(
      qkfAkzV1Omau2nW3.EGX7N1GxSRqAoJMH.map((u) {
        final uNh7rO1lVlbTgkJr = u.toMap();
        uNh7rO1lVlbTgkJr['qH81SWOD1KNclQ'.cx3hpvXCSg6mF()] =
            ZoryosaWebevvkrhjfch.p6ResolveH5MediaUrl(
                uNh7rO1lVlbTgkJr['qH81SWOD1KNclQ'.cx3hpvXCSg6mF()] as String);
        return uNh7rO1lVlbTgkJr;
      }).toList(),
    );

    final DlbCYUuVp6z52ut2 = jsonEncode(
      qkfAkzV1Omau2nW3.glufK0J7UE7AEAHL.map((p) {
        final cwJTwPtP10VRiHZA = p.toMap();
        final GqCymKEFp3ltpQIX =
            (cwJTwPtP10VRiHZA['Q9JL9_kxpeSjU4DbhOk'.cx3hpvXCSg6mF()]
                    as List<dynamic>)
                .map((pic) =>
                    ZoryosaWebevvkrhjfch.p6ResolveH5MediaUrl(pic.toString()))
                .toList();
        cwJTwPtP10VRiHZA['Q9JL9_kxpeSjU4DbhOk'.cx3hpvXCSg6mF()] =
            GqCymKEFp3ltpQIX;
        cwJTwPtP10VRiHZA['cTyUs6_LeiCRzU8RcpAvGw'.cx3hpvXCSg6mF()] =
            ZoryosaWebevvkrhjfch.p6ResolveH5MediaUrl(
                cwJTwPtP10VRiHZA['cTyUs6_LeiCRzU8RcpAvGw'.cx3hpvXCSg6mF()]
                    as String);
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
        final vYg9SendPic =
            (oqXBK8axnty5uLnq['P8YqhepZxHeaR6FMmxI'.cx3hpvXCSg6mF()] as String)
                .trim();
        oqXBK8axnty5uLnq['P8YqhepZxHeaR6FMmxI'.cx3hpvXCSg6mF()] =
            vYg9SendPic.isEmpty
                ? ''
                : ZoryosaWebevvkrhjfch.p6ResolveH5MediaUrl(vYg9SendPic);
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
        : 'psXV6W5OORs'.cx3hpvXCSg6mF();

    return '''
      (function() {
        // Set all window objects according to Flutter ↔ H5 Communication Rules
        ${'PcPK3eBQJA-nXEwElB7y1Ini9A'.cx3hpvXCSg6mF()} = $u2YU986pmty1rFTJ1;
        ${'opTNPItjI65Ci0ulPynxsTYt6boE6xM'.cx3hpvXCSg6mF()} = $l9VBXsOIUDp4etC0P;
        ${'XA9y8cHsnBuIACThf6lJ33C6CNZekQ'.cx3hpvXCSg6mF()} = $DlbCYUuVp6z52ut2;
        ${'BTmsZSjGQpf_1mqawJwPQ6x3Nmq1Rw'.cx3hpvXCSg6mF()} = $WrZuk6fNa6w97B8m;
        ${'gpf26atkGBNiiKAeRC7Y5lYSstck6Mg'.cx3hpvXCSg6mF()} = $hTUqiZnufSRInctG;
        ${'QPlu5O0GgBakFigVj8JXxJqmcvFmnVTqka4'.cx3hpvXCSg6mF()} = $xcwegWfntiq5w4Bo;
        ${'caJCOLxxrKKTffSvdDOWtUcfZqY1_Zw'.cx3hpvXCSg6mF()} = $IpwEydY1oVo1NIY3;
        ${'VW8Wk9iM-EWPoIBVmlejJmZ1jzReFbUnfQ'.cx3hpvXCSg6mF()} = $cmK9ByjbJm33VncN;
        ${'j4Ma1p6Q9AB1nJwaTFm8_j8lo-cFFK_HJDl6rNrEUQ'.cx3hpvXCSg6mF()} = $aWYSr9rCef7nH7NR;
        ${'qZA77nRv1Rhbj_3hOymF7QkuT8cN4w'.cx3hpvXCSg6mF()} = $VTcNO3sWVRzWt8jQ;
        
        // Dispatch custom event to notify H5 that data is ready
        if (typeof window !== 'undefined') {
          window.dispatchEvent(new Event('flutterDataReady'));
        }
      })();
    ''';
  }
}
