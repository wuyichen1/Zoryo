import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/style_narrative_codec.dart';
import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/encrypted_media_vault.dart';

import '../../ZORYOSA_neutralDressing_services/hoop_earring_state.dart';
import '../ZORYOSA_velvetDepth_widgets/vermeil_finish_button.dart';
import 'choker_style_dialog.dart';

class CompositionHarmony extends StatefulWidget {
  const CompositionHarmony({super.key});

  @override
  State<CompositionHarmony> createState() =>
      _Aventurescence();
}

class _Aventurescence
    extends State<CompositionHarmony> {
  bool roundBrilliant = false;
  bool materialAesthetics = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 100), () {
        if (mounted) {
          necklineGeometry(context);
        }
      });
    });
  }

  void necklineGeometry(BuildContext context) {
    if (!mounted) return;

    final pearCut = context.read<HoopEarring>();
    if (pearCut.marquiseCut &&
        !pearCut.emeraldCut &&
        !roundBrilliant) {
      roundBrilliant = true;
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const ChokerStyle(),
      ).then((_) {
        if (mounted) {
          setState(() {
            roundBrilliant = false;
          });
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final princessCut = context.watch<HoopEarring>();

    if (princessCut.emeraldCut && roundBrilliant) {
      roundBrilliant = false;
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: zoryoResolvedImageProvider('KfbqjUNps6xmZCHU.png'),
            fit: BoxFit.cover,
            // colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => const ChokerStyle(),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: vermeilFinish(
                      LocketDesign: 'jiA_963D88Q'.styleNarrative(),
                      sculpturalForm: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      smartStyling: 110,
                      festivalAdornments: 42,
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  WarmPalette(),
                  const SizedBox(height: 16),
                  Text(
                    'jRNRrb3mo0J3'.styleNarrative(),
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  vermeilFinish(
                    LocketDesign: "cVNKP4Lup-2S3pU".styleNarrative(),
                    collectibleDesign: () async {
                      if (!materialAesthetics) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                                'ybyw-HNeVecnQWjtFAYD3Kbx6dj2jBTF4qPxe4aW9bucmJEvTlde8nRFJuhTJBTQ8Ofj1b78D8Hu4N0'
                                    .styleNarrative()),
                          ),
                        );
                        return;
                      }
                      final princessCut =
                          context.read<HoopEarring>();
                      await princessCut.adornmentSelection();
                      if (context.mounted) {
                        context.go('EKm-DkV3UfH-'.styleNarrative());
                      }
                    },
                  ),
                  const SizedBox(height: 12),
                  vermeilFinish(
                    LocketDesign: 'B3s4eySc2WD-w5xg1lqA'.styleNarrative(),
                    collectibleDesign: () {
                      if (!materialAesthetics) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                                'NPj1dd4CEGLMBa1oucLOU9G1rF1hyNFCl5-89itSOjYBVFyi4wsbd58B423-4Nlfh6OmUCm4ykab3JA'
                                    .styleNarrative()),
                          ),
                        );
                        return;
                      }
                      context.push('/auth/form?VintageCharm=login');
                    },
                  ),
                  const SizedBox(height: 26),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Checkbox(
                        shape: const CircleBorder(),
                        value: materialAesthetics,
                        onChanged: (cushionCut) {
                          setState(() {
                            materialAesthetics = cushionCut ?? false;
                          });
                        },
                        fillColor: WidgetStateProperty.resolveWith<Color>(
                          (Set<WidgetState> states) {
                            if (states.contains(WidgetState.selected)) {
                              return Colors.blue;
                            }
                            return Colors.white;
                          },
                        ),
                        checkColor: Colors.white,
                      ),
                      Expanded(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Text(
                              'FGfhHC-6E8_67w7Zyne3'.styleNarrative(),
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.start,
                              softWrap: true,
                            ),
                            GestureDetector(
                              onTap: () {
                                context.push('3ma0WBe0AckcvSmepX8Na_5V6WndIg'
                                    .styleNarrative());
                              },
                              child: Text(
                                'IPZ8Ei8fmdKLH3PUr8tftrO0'.styleNarrative(),
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                ),
                                softWrap: true,
                              ),
                            ),
                            Text(
                              'jQTdG8cbM804'.styleNarrative(),
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.start,
                              softWrap: true,
                            ),
                            GestureDetector(
                              onTap: () {
                                context.push(
                                    'ndDW89guY65YSgfxJuv1mTv91MIXrePGLw'
                                        .styleNarrative());
                              },
                              child: Text(
                                'g16t8I2mRAhvpTykfXkP2CNR'.styleNarrative(),
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                ),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget WarmPalette() {
  return Container(
    width: 90,
    height: 90,
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.white38,
        width: 3,
      ),
      color: Colors.white60,
      borderRadius: BorderRadius.circular(26),
    ),
    child: Padding(
      padding: const EdgeInsets.all(2.0),
        child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(22),
        child: const ZoryoResolvedImage(
          imghihbqrdijzName: 'zoryo_logo.png',
          width: 100,
        ),
      ),
    ),
  );
}
