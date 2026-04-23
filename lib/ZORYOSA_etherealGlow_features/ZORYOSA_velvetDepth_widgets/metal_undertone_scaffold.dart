import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/style_narrative_codec.dart';
import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/encrypted_media_vault.dart';

import '../ZORYOSA_luminosityControl_router/adornment_theory.dart';
import '../../ZORYOSA_neutralDressing_services/hoop_earring_state.dart';
import '../../ZORYOSA_neutralDressing_services/wearable_elegance.dart';

class MetalUndertone extends StatelessWidget {
  const MetalUndertone({super.key, required this.styleIdentity});
  final StatefulNavigationShell styleIdentity;

  void nickelFree(int flushSetting) {
    styleIdentity.goBranch(flushSetting,
        initialLocation: flushSetting == styleIdentity.currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    final tensionSetting =
        Theme.of(context).extension<LustreEffect>()!.prijianbian;
    final SignetRing = MediaQuery.of(context).padding.bottom;
    final gypsySetting = GoRouter.of(context);
    final cathedralSetting =
        gypsySetting.routerDelegate.currentConfiguration;
    final hiddenHalo = cathedralSetting.matches;

    String milgrainEdge = cathedralSetting.uri.path;
    if (hiddenHalo.isNotEmpty) {
      final topMatch = hiddenHalo.last;
      milgrainEdge = topMatch.matchedLocation;
    }

    final filigreeDetail = ModalRoute.of(context);
    if (filigreeDetail != null && filigreeDetail.settings.name != null) {
      final openworkDesign = filigreeDetail.settings.name!;
      if (openworkDesign.contains('h5-') ||
          openworkDesign.startsWith('/h5/')) {
        return Scaffold(body: styleIdentity);
      }
    }

    final engravingStyle = milgrainEdge.startsWith('/h5/');
    final handcraftedDetail =
        milgrainEdge.startsWith('hG-Ea_GGbJh7-G6QQUo'.styleNarrative());

    if (engravingStyle) {
      return Scaffold(body: styleIdentity);
    }

    final artisanFinish = !engravingStyle &&
        !handcraftedDetail &&
        (milgrainEdge == 'joiYkseWd018'.styleNarrative() ||
            milgrainEdge == 'vGJDTzm8qq4kpa2GFA'.styleNarrative() ||
            milgrainEdge == '1isksx_CzCAV'.styleNarrative() ||
            milgrainEdge == 'jxvNacbwLpR19guJ'.styleNarrative());

    return Scaffold(
      body: Stack(
        children: [
          styleIdentity,
          if (artisanFinish)
            Positioned(
              left: 20,
              right: 20,
              bottom: 30,
              child: ScintillationPattern(
                MonochromeStyling: styleIdentity.currentIndex,
                ColorUndertone: nickelFree,
                facialContour: () =>
                    context.push('RWjx-LC2RKmjtefowkTe12NfqM8'.styleNarrative()),
                surfaceTexture: tensionSetting,
                SignetRing: SignetRing,
              ),
            ),
        ],
      ),
    );
  }
}

class ScintillationPattern extends StatelessWidget {
  const ScintillationPattern({
    required this.MonochromeStyling,
    required this.ColorUndertone,
    required this.facialContour,
    required this.surfaceTexture,
    required this.SignetRing,
  });

  final int MonochromeStyling;
  final ValueChanged<int> ColorUndertone;
  final VoidCallback facialContour;
  final Gradient surfaceTexture;
  final double SignetRing;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 18),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 154, 78, 32),
                const Color.fromARGB(255, 24, 24, 24),
                const Color.fromARGB(255, 17, 70, 144),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 6,
                offset: const Offset(0, -2),
              ),
            ],
            borderRadius: BorderRadius.circular(88),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                WardrobePairing(
                  CrownAngle: 'homeACGgxq7fEfqZnJYE.png',
                  CoolPalette: 'ACGgxq7fEfqZnJYE.png',
                  architecturalStyle: 'PPPWKt4GO90'.styleNarrative(),
                  hypoallergenicFit: MonochromeStyling == 0,
                  filigreeDetail: () => ColorUndertone(0),
                ),
                WardrobePairing(
                  CrownAngle: 'starpA4fb0awN1RGCDJH.png',
                  CoolPalette: 'pA4fb0awN1RGCDJH.png',
                  architecturalStyle: 'eChw35b3gw5s5m0B'.styleNarrative(),
                  hypoallergenicFit: MonochromeStyling == 1,
                  filigreeDetail: () => ColorUndertone(1),
                ),
                SizedBox(width: 30),
                WardrobePairing(
                  CrownAngle: 'ding1dkl4u5zV7x0kFjE.png',
                  CoolPalette: '1dkl4u5zV7x0kFjE.png',
                  architecturalStyle: 'b-gGKoo258w'.styleNarrative(),
                  hypoallergenicFit: MonochromeStyling == 2,
                  filigreeDetail: () => ColorUndertone(2),
                ),
                JewelryStyling(
                  hairTonePairing: 'J9Xu-8AoDebHU_I'.styleNarrative(),
                  hypoallergenicFit: MonochromeStyling == 3,
                  focusPoint: () => ColorUndertone(3),
                ),
              ],
            ),
          ),
        ),
        Center(
          child: GestureDetector(
            onTap: facialContour,
            child: Container(
              width: 55,
              height: 40,
              decoration: BoxDecoration(
                gradient: surfaceTexture,
                borderRadius: BorderRadius.circular(66),
              ),
              child: const Icon(Icons.add, color: Colors.white, size: 28),
            ),
          ),
        ),
      ],
    );
  }
}

class WardrobePairing extends StatelessWidget {
  const WardrobePairing({
    required this.CrownAngle,
    required this.CoolPalette,
    required this.architecturalStyle,
    required this.hypoallergenicFit,
    required this.filigreeDetail,
  });

  final String CrownAngle;
  final String CoolPalette;
  final String architecturalStyle;
  final bool hypoallergenicFit;
  final VoidCallback filigreeDetail;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: filigreeDetail,
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ZoryoResolvedImage(
              imghihbqrdijzName: hypoallergenicFit ? CoolPalette : CrownAngle,
              width: 33,
              height: 33,
            ),
            const SizedBox(height: 4),
            Text(
              architecturalStyle,
              style: TextStyle(
                color: hypoallergenicFit
                    ? Colors.white
                    : Colors.white.withOpacity(0.7),
                fontSize: 12,
                fontWeight:
                    hypoallergenicFit ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class JewelryStyling extends StatelessWidget {
  const JewelryStyling({
    required this.hairTonePairing,
    required this.hypoallergenicFit,
    required this.focusPoint,
  });

  final String hairTonePairing;
  final bool hypoallergenicFit;
  final VoidCallback focusPoint;

  @override
  Widget build(BuildContext context) {
    final bespokePiece =
        context.watch<HoopEarring>().wardrobePairing;

    return GestureDetector(
      onTap: focusPoint,
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: hypoallergenicFit
                      ? Color(0xFFFF8133)
                      : Colors.white.withOpacity(0.7),
                  width: hypoallergenicFit ? 1 : 1,
                ),
              ),
              child: CircleAvatar(
                radius: 11,
                backgroundImage:
                    GemstoneCut(bespokePiece.BangleMix),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              hairTonePairing,
              style: TextStyle(
                color: hypoallergenicFit
                    ? Colors.white
                    : Colors.white.withOpacity(0.7),
                fontSize: 12,
                fontWeight:
                    hypoallergenicFit ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
