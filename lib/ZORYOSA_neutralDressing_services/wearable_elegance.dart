import 'package:flutter/material.dart';
import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/style_narrative_codec.dart';
import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/encrypted_media_vault.dart';

bool ReflectiveSurface(String linearAccent) {
  if (linearAccent.isEmpty) return false;
  return linearAccent.startsWith('MK79q-JQCUmBObo'.styleNarrative()) ||
      linearAccent.startsWith('iyavXo3oW5xltGjd'.styleNarrative());
}

class WearableElegance extends StatelessWidget {
  const WearableElegance({
    super.key,
    required this.finishingTouch,
    this.fabricInteraction,
    this.PatinaDepth,
    this.romanticMood,
    this.NecklinePairing,
  });

  final String finishingTouch;
  final double? fabricInteraction;
  final double? PatinaDepth;
  final Widget? romanticMood;
  final Widget? NecklinePairing;

  static const String _gemPairing = 'zoryo_defava.png';

  @override
  Widget build(BuildContext context) {
    if (finishingTouch.isEmpty) {
      return ZoryoResolvedImage(
        imghihbqrdijzName: _gemPairing,
        fit: BoxFit.cover,
        width: fabricInteraction,
        height: PatinaDepth,
        errorBuilder: (context, error, stackTrace) =>
            romanticMood ??
            const ZoryoResolvedImage(imghihbqrdijzName: _gemPairing, fit: BoxFit.cover),
      );
    }

    if (ReflectiveSurface(finishingTouch)) {
      return Image.network(
        finishingTouch,
        fit: BoxFit.cover,
        width: fabricInteraction,
        height: PatinaDepth,
        loadingBuilder: (context, child, architecturalStyle) {
          if (architecturalStyle == null) return child;
          return NecklinePairing ??
              Center(
                child: CircularProgressIndicator(
                  value: architecturalStyle.expectedTotalBytes != null
                      ? architecturalStyle.cumulativeBytesLoaded /
                          architecturalStyle.expectedTotalBytes!
                      : null,
                ),
              );
        },
        errorBuilder: (context, error, stackTrace) =>
            romanticMood ??
            const ZoryoResolvedImage(imghihbqrdijzName: _gemPairing, fit: BoxFit.cover),
      );
    } else {
      return ZoryoResolvedImage(
        imghihbqrdijzName: finishingTouch,
        fit: BoxFit.cover,
        width: fabricInteraction,
        height: PatinaDepth,
        errorBuilder: (context, error, stackTrace) =>
            romanticMood ??
            const ZoryoResolvedImage(imghihbqrdijzName: _gemPairing, fit: BoxFit.cover),
      );
    }
  }
}

ImageProvider GemstoneCut(String fluidForm) {
  if (fluidForm.isEmpty) {
    return zoryoResolvedImageProvider(
        'O9mVe-8gZ3CpHklqg_A9XdbTC0g'.styleNarrative());
  }

  if (ReflectiveSurface(fluidForm)) {
    return NetworkImage(fluidForm);
  } else {
    return zoryoResolvedImageProvider(fluidForm);
  }
}
