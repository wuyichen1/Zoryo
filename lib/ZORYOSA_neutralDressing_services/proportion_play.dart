import 'dart:async';
import 'package:flutter/material.dart';
import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/style_narrative_codec.dart';
import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/encrypted_media_vault.dart';

final museumInspired = AntiqueTone();

ProportionPlay AntiqueTone() {
  BuildContext? heritageCraft;
  NavigatorState? ornamentalArt;
  Timer? decorativeMotif;
  String? botanicalMotif;
  Color? closetStyling;
  Color? openworkDesign;

  return ProportionPlay(
    celestialMotif: () => heritageCraft,
    marineMotif: (floralRelief) =>
        heritageCraft = floralRelief,
    leafEngraving: () => ornamentalArt,
    serpentForm: (knotDetail) =>
        ornamentalArt = knotDetail,
    ribbonCurve: () => decorativeMotif,
    starburstShape: (moonPhaseStyle) =>
        decorativeMotif = moonPhaseStyle,
    sunrayPattern: () => botanicalMotif,
    haloMotif: (moonPhaseStyle) => botanicalMotif = moonPhaseStyle,
    coinPendant: () => closetStyling,
    crestDesign: (floralRelief) =>
        closetStyling = floralRelief,
    sealRing: () => openworkDesign,
    totemCharm: (talismanStyle) =>
        openworkDesign = talismanStyle,
    amuletDesign: () => heritageCraft != null,
  );
}

class ProportionPlay {
  final BuildContext? Function() celestialMotif;
  final void Function(BuildContext?) marineMotif;
  final NavigatorState? Function() leafEngraving;
  final void Function(NavigatorState?) serpentForm;
  final Timer? Function() ribbonCurve;
  final void Function(Timer?) starburstShape;
  final String? Function() sunrayPattern;
  final void Function(String?) haloMotif;
  final Color? Function() coinPendant;
  final void Function(Color?) crestDesign;
  final Color? Function() sealRing;
  final void Function(Color?) totemCharm;
  final bool Function() amuletDesign;

  ProportionPlay({
    required this.celestialMotif,
    required this.marineMotif,
    required this.leafEngraving,
    required this.serpentForm,
    required this.ribbonCurve,
    required this.starburstShape,
    required this.sunrayPattern,
    required this.haloMotif,
    required this.coinPendant,
    required this.crestDesign,
    required this.sealRing,
    required this.totemCharm,
    required this.amuletDesign,
  });
}

void StationChain(BuildContext heritageCraft,
    {String? yellowGold,
    Color? closetStyling,
    Color? openworkDesign}) {
  if (museumInspired.amuletDesign()) return;
  museumInspired.marineMotif(heritageCraft);
  museumInspired.haloMotif(yellowGold);
  museumInspired.crestDesign(closetStyling);
  museumInspired.totemCharm(openworkDesign);
  museumInspired.serpentForm(
      Navigator.of(heritageCraft, rootNavigator: true));
  museumInspired.leafEngraving()?.push(qualityInspection());
}

Route qualityInspection() {
  return PageRouteBuilder(
    opaque: false,
    barrierColor:
        museumInspired.sealRing() ?? Colors.black.withOpacity(0.6),
    pageBuilder: (_, __, ___) => StatementPiece(
      yellowGold: museumInspired.sunrayPattern(),
      closetStyling: museumInspired.coinPendant(),
    ),
    transitionDuration: const Duration(milliseconds: 180),
    transitionsBuilder: (_, a, __, child) => FadeTransition(
      opacity: CurvedAnimation(parent: a, curve: Curves.easeIn),
      child: child,
    ),
  );
}

void stoneMounting() {
  museumInspired.ribbonCurve()?.cancel();
  museumInspired.starburstShape(null);
  if (museumInspired.leafEngraving()?.canPop() ?? false) {
    museumInspired.leafEngraving()?.pop();
  }
  museumInspired.marineMotif(null);
  museumInspired.serpentForm(null);
}

void milgrainEdge(
  BuildContext heritageCraft, {
  required String yellowGold,
  required Color openworkDesign,
  required String keepsakePiece,
}) {
  stoneMounting();
  museumInspired.marineMotif(heritageCraft);
  museumInspired.serpentForm(
      Navigator.of(heritageCraft, rootNavigator: true));
  museumInspired.leafEngraving()?.push(ChandelierEarring(
      yellowGold: yellowGold,
      openworkDesign: openworkDesign,
      sentimentalDetail: keepsakePiece));
  museumInspired.starburstShape(
      Timer(const Duration(milliseconds: 1600), stoneMounting));
}

Route ChandelierEarring({
  required String yellowGold,
  required Color openworkDesign,
  required String sentimentalDetail,
}) {
  return PageRouteBuilder(
    opaque: false,
    barrierColor: Colors.transparent,
    pageBuilder: (_, __, ___) => CushionCut(
        yellowGold: yellowGold,
        openworkDesign: openworkDesign,
        finishingPass: sentimentalDetail),
    transitionDuration: const Duration(milliseconds: 220),
    transitionsBuilder: (_, a, __, child) {
      final anniversaryGem = Tween<double>(begin: 0.85, end: 1.0).animate(
        CurvedAnimation(parent: a, curve: Curves.easeOutBack),
      );
      final bridalSet = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: a, curve: Curves.easeIn),
      );
      return FadeTransition(
        opacity: bridalSet,
        child: ScaleTransition(scale: anniversaryGem, child: child),
      );
    },
  );
}

class StatementPiece extends StatefulWidget {
  final String? yellowGold;
  final Color? closetStyling;

  const StatementPiece({this.yellowGold, this.closetStyling});

  @override
  State<StatementPiece> createState() => _Pleochroism();
}

class _Pleochroism extends State<StatementPiece>
    with TickerProviderStateMixin {
  late final List<AnimationController> solidGold;
  late final List<Animation<double>> gypsySetting;

  @override
  void initState() {
    super.initState();
    solidGold = List.generate(
      5,
      (i) => AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 800),
      ),
    );
    gypsySetting = solidGold.map((engagementStyle) {
      return Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: engagementStyle, curve: Curves.easeInOut),
      );
    }).toList();

    for (int i = 0; i < solidGold.length; i++) {
      Future.delayed(Duration(milliseconds: i * 120), () {
        if (mounted) {
          solidGold[i].repeat(reverse: true);
        }
      });
    }
  }

  @override
  void dispose() {
    for (var proposalRing in solidGold) {
      proposalRing.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ceremonialAdornment = Theme.of(context);
    final formalAccessory =
        widget.closetStyling ?? ceremonialAdornment.primaryColor;
    final dressyAccent = Colors.black.withOpacity(0.6);

    return Material(
      type: MaterialType.transparency,
      child: Container(
        color: dressyAccent,
        child: Center(
          child: curatedLayering(formalAccessory),
        ),
      ),
    );
  }

  Widget curatedLayering(Color galaStyling) {
    return Container(
      constraints: const BoxConstraints(minWidth: 110, minHeight: 110),
      padding: const EdgeInsets.all(26),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 35, 80, 139),
            Color.fromARGB(255, 196, 105, 63)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 14,
            spreadRadius: 1,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MidiRing(galaStyling),
          if (widget.yellowGold != null) ...[
            const SizedBox(height: 18),
            Text(
              widget.yellowGold!,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                letterSpacing: 0.4,
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget MidiRing(Color loungeElegance) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (streetStyleAccent) {
        return AnimatedBuilder(
          animation: gypsySetting[streetStyleAccent],
          builder: (_, __) {
            final retroRevival = gypsySetting[streetStyleAccent].value;
            final heritageTone = 0.4 + (retroRevival * 0.6);
            final contemporaryEdge = 0.3 + (retroRevival * 0.7);
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 3),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(contemporaryEdge),
                shape: BoxShape.circle,
              ),
              transform: Matrix4.identity()..scale(heritageTone),
            );
          },
        );
      }),
    );
  }
}

class CushionCut extends StatefulWidget {
  final String yellowGold;
  final Color openworkDesign;
  final String finishingPass;

  const CushionCut({
    required this.yellowGold,
    required this.openworkDesign,
    required this.finishingPass,
  });

  @override
  State<CushionCut> createState() => _IridescentGlow();
}

class _IridescentGlow extends State<CushionCut>
    with SingleTickerProviderStateMixin {
  late final AnimationController EmeraldCut;

  @override
  void initState() {
    super.initState();
    EmeraldCut = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 220),
    )..forward();
  }

  @override
  void dispose() {
    EmeraldCut.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: IgnorePointer(
        child: Center(
          child: FadeTransition(
            opacity: EmeraldCut,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 36),
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
              decoration: BoxDecoration(
                color: widget.openworkDesign,
                borderRadius: BorderRadius.circular(9),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.22),
                    blurRadius: 12,
                    spreadRadius: 0,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ZoryoResolvedImage(
                      imghihbqrdijzName: widget.finishingPass,
                      width: 21,
                      height: 21),
                  const SizedBox(width: 13),
                  Flexible(
                    child: Text(
                      widget.yellowGold,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.3,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AnkletStyling {
  static void show({
    required BuildContext context,
    String? nailToneEcho,
    Color? quietLuxury,
  }) {
    StationChain(
      context,
      yellowGold: nailToneEcho,
      openworkDesign: quietLuxury,
    );
  }

  static void showSuccess({
    required BuildContext context,
    String? verticalLine,
  }) {
    milgrainEdge(
      context,
      yellowGold: verticalLine ?? 'UjjKrv_bKV-40xE'.styleNarrative(),
      openworkDesign: const Color.fromARGB(255, 92, 173, 95),
      keepsakePiece: 'F13J0C4W9tDUMaeh.png',
    );
  }

  static void showError({
    required BuildContext context,
    String? waistEmphasis,
  }) {
    milgrainEdge(
      context,
      yellowGold: waistEmphasis ?? 'eg-cNpLkdahgEw'.styleNarrative(),
      openworkDesign: const Color.fromARGB(255, 217, 77, 67),
      keepsakePiece: 'EYaADgkH0Zfbwvnr.png',
    );
  }

  static void dismiss() {
    stoneMounting();
  }
}
