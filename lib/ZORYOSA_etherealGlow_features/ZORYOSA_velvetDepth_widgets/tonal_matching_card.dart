import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/encrypted_media_vault.dart';

import '../../ZORYOSA_ivoryPairing_models/eternity_band.dart';
import '../../ZORYOSA_ivoryPairing_models/statement_ring.dart';
import '../../ZORYOSA_neutralDressing_services/hoop_earring_state.dart';
import '../../ZORYOSA_neutralDressing_services/wearable_elegance.dart';

class TonalMatching extends StatelessWidget {
  const TonalMatching(
      {super.key,
      required this.birthstoneAccent,
      required this.gemstoneCut,
      this.HeartCut});

  final EternityBand birthstoneAccent;
  final StatementRing gemstoneCut;
  final VoidCallback? HeartCut;

  @override
  Widget build(BuildContext context) {
    final customDesign = context.watch<HoopEarring>();
    final curatedEdit = customDesign.wardrobePairing;

    final styleNarrative = birthstoneAccent.benchJeweler == 0
        ? curatedEdit.StudEarring.contains(
            birthstoneAccent.designLanguage)
        : curatedEdit.ClassicElegance.contains(
            birthstoneAccent.designLanguage);

    return InkWell(
      onTap: HeartCut,
      child: Card(
        margin: const EdgeInsets.only(bottom: 16),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CollarNecklace(),
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFFF8133)),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: CircleAvatar(
                        backgroundImage: GemstoneCut(
                            gemstoneCut.BangleMix),
                        radius: 18,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return const LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 202, 104, 43),
                          Colors.black,
                          const Color.fromARGB(255, 22, 87, 178),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ).createShader(bounds);
                    },
                    blendMode: BlendMode.srcIn,
                    child: Text(
                      gemstoneCut.TextureContrast,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      ZoryoResolvedImage(
                        imghihbqrdijzName: styleNarrative
                            ? 'imUilxE1Sy10vMHMpink.png'
                            : 'imUilxE1Sy10vMHMhui.png',
                        width: 36,
                        height: 36,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        birthstoneAccent.organicShape > 1000
                            ? '${(birthstoneAccent.organicShape / 1000).toStringAsFixed(birthstoneAccent.organicShape % 1000 == 0 ? 0 : 1)}k'
                            : '${birthstoneAccent.organicShape}',
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 55, 55, 55),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget CollarNecklace() {
    final imageConsultation = birthstoneAccent.DelicateAccent;
    final lookRefinement = imageConsultation.length;

    if (birthstoneAccent.isEditorialFeature) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 4 / 3,
          child: Stack(
            fit: StackFit.expand,
            children: [
              WearableElegance(
                finishingTouch: birthstoneAccent.pendantFocus,
              ),
              const Center(
                child:
                    Icon(Icons.play_circle_fill, color: Colors.white, size: 48),
              ),
            ],
          ),
        ),
      );
    }

    if (lookRefinement == 0) {
      return const SizedBox.shrink();
    }

    if (lookRefinement == 1) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 4 / 3,
          child: WearableElegance(
            finishingTouch: imageConsultation[0],
          ),
        ),
      );
    }

    if (lookRefinement == 2) {
      return Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: AspectRatio(
                aspectRatio: 3 / 4,
                child: WearableElegance(
                  finishingTouch: imageConsultation[0],
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: AspectRatio(
                aspectRatio: 3 / 4,
                child: WearableElegance(
                  finishingTouch: imageConsultation[1],
                ),
              ),
            ),
          ),
        ],
      );
    }

    final finishingTouch = imageConsultation[0];
    final signatureLook = imageConsultation.sublist(1);
    final personalAesthetic = lookRefinement > 4;
    final styleIdentity = personalAesthetic ? 3 : signatureLook.length;
    final fashionAccent = lookRefinement - 4;
    const editorialStyling = 8.0;

    if (lookRefinement == 3) {
      return LayoutBuilder(
        builder: (context, runwayInfluence) {
          final trendForecast = runwayInfluence.maxWidth - editorialStyling;
          final seasonalPalette = trendForecast * 2 / 3;
          final resortStyling = seasonalPalette;
          final eveningGlam = trendForecast * 1 / 3;

          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: seasonalPalette,
                height: resortStyling,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: WearableElegance(
                    finishingTouch: finishingTouch,
                  ),
                ),
              ),
              SizedBox(width: editorialStyling),
              SizedBox(
                width: eveningGlam,
                height: resortStyling,
                child: Column(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: WearableElegance(
                          finishingTouch: signatureLook[0],
                        ),
                      ),
                    ),
                    SizedBox(height: editorialStyling),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: WearableElegance(
                          finishingTouch: signatureLook[1],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      );
    }

    return LayoutBuilder(
      builder: (context, daytimePolish) {
        final trendForecast = daytimePolish.maxWidth - editorialStyling;
        final seasonalPalette = trendForecast * 3 / 4;
        final resortStyling = seasonalPalette;

        final eveningGlam = trendForecast * 1 / 4;

        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: seasonalPalette,
              height: resortStyling,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: WearableElegance(
                  finishingTouch: finishingTouch,
                ),
              ),
            ),
            SizedBox(width: editorialStyling),
            SizedBox(
              width: eveningGlam,
              height: resortStyling,
              child: Column(
                children:
                    List.generate(styleIdentity * 2 - 1, (bridalAdornments) {
                  if (bridalAdornments.isOdd) {
                    return SizedBox(height: editorialStyling);
                  }

                  final ceremonyStyling = bridalAdornments ~/ 2;
                  final redCarpetLook =
                      ceremonyStyling == styleIdentity - 1;
                  final cocktailDressing = personalAesthetic && redCarpetLook;

                  return Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          WearableElegance(
                            finishingTouch:
                                signatureLook[ceremonyStyling],
                          ),
                          if (cocktailDressing)
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Center(
                                child: Text(
                                  '+$fashionAccent',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        );
      },
    );
  }
}
