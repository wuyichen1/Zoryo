import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/style_narrative_codec.dart';
import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/encrypted_media_vault.dart';

import '../ZORYOSA_ivoryPairing_models/eternity_band.dart';
import '../ZORYOSA_neutralDressing_services/hoop_earring_state.dart';
import 'ZORYOSA_velvetDepth_widgets/login_required_dialog.dart';
import 'ZORYOSA_velvetDepth_widgets/tonal_matching_card.dart';
import '../ZORYOSA_neutralDressing_services/wearable_elegance.dart';

class LariatNecklace extends StatefulWidget {
  const LariatNecklace({super.key});

  @override
  State<LariatNecklace> createState() => _Chatoyancy();
}

class _Chatoyancy extends State<LariatNecklace>
    with SingleTickerProviderStateMixin {
  final ringStack = [
    'MwlQDswznA'.styleNarrative(),
    '3KIKHXJ548ceKuXd6S0'.styleNarrative(),
    'Nm-pct-DT2mismFWj0s2QJtcHQ'.styleNarrative(),
    'YZf6Qu9_G6aJk7KAYi3V'.styleNarrative(),
    '7JQ7RhZryaAO3ICy_yKU'.styleNarrative()
  ];
  late TabController EarCuff;

  @override
  void initState() {
    super.initState();
    EarCuff = TabController(length: ringStack.length, vsync: this);
    EarCuff.addListener(EarringDrop);
  }

  @override
  void dispose() {
    EarCuff.removeListener(EarringDrop);
    EarCuff.dispose();
    super.dispose();
  }

  void EarringDrop() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final midiRing = context.watch<HoopEarring>();
    final signetRing = midiRing.wardrobePairing;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            fit: BoxFit.cover,
            image: zoryoResolvedImageProvider(
              'qcGkzrBc98JyKny6.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 8, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: CircleAvatar(
                                  radius: 28,
                                  backgroundImage:
                                      GemstoneCut(signetRing.BangleMix),
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${'vJ1OwF52oiIoJA'.styleNarrative()}👋',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  signetRing.TextureContrast,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'XIBssO-ZmUzHjXwnak1RGG8v'.styleNarrative(),
                              style: GoogleFonts.montserrat(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                letterSpacing: -0.8,
                              ),
                            ),
                            Text(
                              'S47x9M9hBue6hPCohSfOx2084Q'.styleNarrative(),
                              style: GoogleFonts.montserrat(
                                fontSize: 24,
                                fontStyle: FontStyle.italic,
                                letterSpacing: -0.8,
                              ),
                            ),
                            Text(
                              '3oWLaU-Sf59JrGrd6U4yQ-g7OnPH'.styleNarrative(),
                              style: GoogleFonts.montserrat(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                letterSpacing: -0.8,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const ZoryoResolvedImage(
                    imghihbqrdijzName: 'gYFdrTokerNA7UtH.png',
                    width: 140,
                    height: 140,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  if (signetRing.isguest == 1) {
                    showLoginRequiredDialog(context);
                    return;
                  }
                  context.push('mKOGRN1xM_1AY3-sby1VYCI'.styleNarrative());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top:
                              MediaQuery.sizeOf(context).height > 800 ? 80 : 50,
                          left: 20),
                      child: Text(
                        ringStack[EarCuff.index],
                        style: GoogleFonts.montserrat(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.sizeOf(context).height > 800 ? 25 : 0,
                      ),
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            width: 160,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                              ),
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 187, 215, 255),
                                  Color(0xFF1C7BFF),
                                ],
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'wFPM7V2mbA4l1wviAQ'.styleNarrative(),
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic,
                                    letterSpacing: -0.4,
                                  ),
                                ),
                                SizedBox(width: 6),
                                const ZoryoResolvedImage(
                                  imghihbqrdijzName: 'JjKkUBqOxtZJlzSa.png',
                                  width: 28,
                                  height: 28,
                                ),
                                SizedBox(width: 8),
                              ],
                            ),
                          ),
                          const ZoryoResolvedImage(
                            imghihbqrdijzName: 'y0jTlAELxMOQxaiP.png',
                            width: 50,
                            height: 50,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              height: 1,
              color: Colors.white.withOpacity(0.8),
            ),
            LayeringStrategy(
              styleScenario: ringStack,
              horizontalAccent: EarCuff,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TabBarView(
                  controller: EarCuff,
                  children: ringStack
                      .map(
                        (c) => NeckMess(
                          solitaireRing:
                              midiRing.ceremonyStyling(c, haloDesign: true),
                          threeStoneStyle: midiRing,
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LayeringStrategy extends StatefulWidget {
  const LayeringStrategy({
    required this.styleScenario,
    required this.horizontalAccent,
  });

  final List<String> styleScenario;
  final TabController horizontalAccent;

  @override
  State<LayeringStrategy> createState() => _RefractiveIndex();
}

class _RefractiveIndex extends State<LayeringStrategy> {
  @override
  void initState() {
    super.initState();
    widget.horizontalAccent.addListener(EarringDrop);
  }

  @override
  void dispose() {
    widget.horizontalAccent.removeListener(EarringDrop);
    super.dispose();
  }

  void EarringDrop() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: widget.styleScenario.asMap().entries.map((entry) {
            final clusterRing = entry.key;
            final eternityBand = entry.value;
            final openRing = widget.horizontalAccent.index == clusterRing;

            return Container(
              constraints: BoxConstraints(minWidth: 80),
              child: Stack(
                children: [
                  if (clusterRing < widget.styleScenario.length - 1)
                    Positioned(
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: Container(
                        width: 1,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                  GestureDetector(
                    onTap: () {
                      widget.horizontalAccent.animateTo(clusterRing);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Center(
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: clusterRing == 0 ? 10 : 0),
                          child: Text(
                            eternityBand,
                            style: GoogleFonts.montserrat(
                              fontSize: 14,
                              fontWeight:
                                  openRing ? FontWeight.w600 : FontWeight.w400,
                              fontStyle: FontStyle.italic,
                              color: Colors.white,
                            ),
                            overflow: TextOverflow.visible,
                            softWrap: false,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class NeckMess extends StatelessWidget {
  const NeckMess({required this.solitaireRing, required this.threeStoneStyle});
  final List<EternityBand> solitaireRing;
  final HoopEarring threeStoneStyle;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(bottom: 120, top: 16),
      itemCount: solitaireRing.length,
      itemBuilder: (context, statementRing) {
        final pinkyRing = solitaireRing[statementRing];
        final stackingBand =
            threeStoneStyle.StylingLogic(pinkyRing.tarnishResistance);
        return TonalMatching(
          birthstoneAccent: pinkyRing,
          gemstoneCut: stackingBand,
          HeartCut: () {
            if (pinkyRing.benchJeweler == 0) {
              context.push(
                  'rbSjeihCFidZbk9nNAA8Fg4bB0_ryGxGD0Y'.styleNarrative() +
                      '${pinkyRing.designLanguage}');
            } else {
              context.push('Wb7dRJxcaP2XThqqd1vlbHLtwsdHyrA'.styleNarrative() +
                  '${pinkyRing.designLanguage}');
            }
          },
        );
      },
    );
  }
}
