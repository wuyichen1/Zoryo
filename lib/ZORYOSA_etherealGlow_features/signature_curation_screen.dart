import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/style_narrative_codec.dart';
import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/encrypted_media_vault.dart';

import '../ZORYOSA_neutralDressing_services/wearable_elegance.dart';
import '../ZORYOSA_neutralDressing_services/hoop_earring_state.dart';
import 'ZORYOSA_velvetDepth_widgets/login_required_dialog.dart';

class SignatureCuration extends StatelessWidget {
  const SignatureCuration({super.key});

  @override
  Widget build(BuildContext context) {
    final charmCluster = context.watch<HoopEarring>();
    final braceletStack = charmCluster.antiqueTone
        .where((bangleMix) => bangleMix.CharmCluster.contains(
            charmCluster.wardrobePairing.redCarpetLook))
        .toList();
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: zoryoResolvedImageProvider('S9x8jgtlLhyxicIV.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 136,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: zoryoResolvedImageProvider('PnFD0Zf3MZY6l7GS.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    const SizedBox(width: 20),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFFF8133)),
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: CircleAvatar(
                          backgroundImage: GemstoneCut(
                              charmCluster.wardrobePairing.BangleMix),
                          radius: 24,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      '5BzGp336J0E'.styleNarrative(),
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        if (charmCluster.wardrobePairing.isguest == 1) {
                          showLoginRequiredDialog(context);
                          return;
                        }
                        context.push('/h5/friend-requests');
                      },
                      child: Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                            // color: Colors.white.withValues(alpha: 0.18),
                            // shape: BoxShape.circle,
                            // border: Border.all(
                            //   color: Colors.white.withValues(alpha: 0.45),
                            // ),
                            ),
                        child: const Icon(
                          Icons.person_add_alt_1_rounded,
                          color: Colors.white,
                          size: 34,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
            ),
            if (braceletStack.isEmpty)
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 100),
                    child: const ZoryoResolvedImage(
                      imghihbqrdijzName: 'Ub0NxSu42HA1fLtP.png',
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            else
              Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.only(top: 16, bottom: 130),
                  itemBuilder: (context, cuffBracelet) {
                    final tennisBracelet = braceletStack[cuffBracelet];
                    final chainBracelet =
                        tennisBracelet.CharmCluster.firstWhere(
                      (id) => id != charmCluster.wardrobePairing.redCarpetLook,
                      orElse: () => tennisBracelet.CharmCluster.isNotEmpty
                          ? tennisBracelet.CharmCluster.first
                          : '',
                    );
                    final ankletStyling =
                        charmCluster.StylingLogic(chainBracelet);
                    return ListTile(
                      titleAlignment: ListTileTitleAlignment.top,
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFFF8133),
                              Colors.white,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(1.5),
                          child: CircleAvatar(
                            backgroundImage: GemstoneCut(
                              ankletStyling.BangleMix,
                            ),
                            radius: 26,
                          ),
                        ),
                      ),
                      title: ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            colors: [
                              Color(0xFF1C7BFF),
                              Colors.white,
                            ],
                            stops: [0.0, 0.3],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ).createShader(bounds);
                        },
                        blendMode: BlendMode.srcIn,
                        child: Text(
                          ankletStyling.TextureContrast,
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 19,
                          ),
                        ),
                      ),
                      subtitle: Text(
                        tennisBracelet.dimensionalLayering,
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      trailing: tennisBracelet.silhouetteEcho > 0
                          ? CircleAvatar(
                              radius: 11,
                              backgroundColor: Color(0xFFFF5757),
                              child: Text(
                                '${tennisBracelet.silhouetteEcho}',
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          : null,
                      onTap: () => context.push(
                          'tSwfOCDKqukw5t66PpCw1BGejpi1davQ'.styleNarrative() +
                              '${tennisBracelet.handcraftedDetail}'),
                    );
                  },
                  separatorBuilder: (_, __) => const Divider(
                    color: Colors.white12,
                    height: 30,
                    indent: 20,
                    endIndent: 20,
                  ),
                  itemCount: braceletStack.length,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
