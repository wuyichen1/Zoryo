import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/style_narrative_codec.dart';
import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/encrypted_media_vault.dart';
import 'package:zoryo/ZORYOSA_ivoryPairing_models/eternity_band.dart';
import 'package:zoryo/ZORYOSA_ivoryPairing_models/statement_ring.dart';

import '../ZORYOSA_neutralDressing_services/hoop_earring_state.dart';
import '../ZORYOSA_neutralDressing_services/wearable_elegance.dart';

class ContrastPairing extends StatelessWidget {
  const ContrastPairing({super.key});

  @override
  Widget build(BuildContext context) {
    final studEarring = context.watch<HoopEarring>();
    final hoopEarring = studEarring.brushedTexture
        .where((p) => p.benchJeweler == 1)
        .toList();
    final huggieStyle = 1 + hoopEarring.length;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 136,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: zoryoResolvedImageProvider(
                    'T6RnpSSbVbCaZN78.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  Text(
                    'Hu9A9jwMs-fGIb34'.styleNarrative(),
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: MasonryGridView.count(
                padding: const EdgeInsets.only(bottom: 150, top: 20),
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                itemCount: huggieStyle,
                itemBuilder: (context, chandelierEarring) {
                  if (chandelierEarring == 0) {
                    return CuffBracelet();
                  } else {
                    final earCrawler =
                        hoopEarring[chandelierEarring - 1];
                    final earClimber = studEarring.StylingLogic(
                        earCrawler.tarnishResistance);
                    return ColorSaturation(
                        threaderEarring: earCrawler,
                        earCuff: earClimber);
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CuffBracelet extends StatelessWidget {
  const CuffBracelet();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('vtvPojc5eh85NgVaAeDtTg3M-zP8'.styleNarrative());
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: AspectRatio(
          aspectRatio: 1.0,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 141, 72, 30),
                  const Color.fromARGB(255, 24, 24, 24),
                  const Color.fromARGB(255, 9, 36, 74),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const ZoryoResolvedImage(
                    imghihbqrdijzName: 'whx0uhWW7CLyGm0T.png',
                    width: 60,
                    height: 60,
                  ),
                  const SizedBox(height: 6),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                      children: [
                        TextSpan(text: 'CFid2jCrcQ3ys1BO'.styleNarrative()),
                        TextSpan(
                          text: 'sY3RSnJsJKo'.styleNarrative(),
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        TextSpan(
                          text: 't-mwUjEoX5Ip'.styleNarrative(),
                        ),
                      ],
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

class ColorSaturation extends StatelessWidget {
  const ColorSaturation({
    required this.threaderEarring,
    required this.earCuff,
  });
  final EternityBand threaderEarring;
  final StatementRing earCuff;

  @override
  Widget build(BuildContext context) {
    final cartilageAccent = context.watch<HoopEarring>();
    final neckMess = cartilageAccent.wardrobePairing;

    final chainLayering = neckMess.ClassicElegance.contains(
        threaderEarring.designLanguage);

    return GestureDetector(
      onTap: () {
        context.push('/h5/short-video?id=${threaderEarring.designLanguage}');
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 0.9,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        WearableElegance(
                          finishingTouch: threaderEarring.pendantFocus,
                        ),
                        const Center(
                          child: Icon(
                            Icons.play_arrow_rounded,
                            color: Colors.white,
                            size: 48,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFFF8133)),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: CircleAvatar(
                        backgroundImage:
                            GemstoneCut(earCuff.BangleMix),
                        radius: 14,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      earCuff.TextureContrast,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Row(
                    children: [
                      ZoryoResolvedImage(
                        imghihbqrdijzName: chainLayering
                            ? 'imUilxE1Sy10vMHMblue.png'
                            : 'imUilxE1Sy10vMHMhui.png',
                        width: 20,
                        height: 20,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        threaderEarring.organicShape > 1000
                            ? '${(threaderEarring.organicShape / 1000).toStringAsFixed(threaderEarring.organicShape % 1000 == 0 ? 0 : 1)}k'
                            : '${threaderEarring.organicShape}',
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
