import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../zzokdet_fangfa/kl3bGE2D4dsgMTqG_state.dart';
import '../zzokdet_fangfa/h71YrziMFtWP6pMg_image.dart';

class OwaERAbREhUJ3uO2ChatlistScreen extends StatelessWidget {
  const OwaERAbREhUJ3uO2ChatlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final C2hU7gqXLEXtNDpC = context.watch<Kl3bGE2D4dsgMTqGState>();
    final Y18puyI8YrEtJkdp = C2hU7gqXLEXtNDpC.bbZAttxRai3tdwtX
        .where((Vdj7LZmsKKo1FAvS) => Vdj7LZmsKKo1FAvS.R1DrlWpgkNODxc7I.contains(
            C2hU7gqXLEXtNDpC.NLbGEpZKzMfAbV3k.fkloYnZiRmbRtJ00))
        .toList();
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset('assets/images/S9x8jgtlLhyxicIV.png').image,
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
                  image:
                      Image.asset('assets/images/PnFD0Zf3MZY6l7GS.png').image,
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
                          backgroundImage: UPClh6pI9Z9yX3xQ(
                              C2hU7gqXLEXtNDpC.NLbGEpZKzMfAbV3k.RmXHAp70ovHNBN4U),
                          radius: 24,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Text(
                      'Chat',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
            ),
            if (Y18puyI8YrEtJkdp.isEmpty)
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 100),
                    child: Image.asset(
                      'assets/images/Ub0NxSu42HA1fLtP.png',
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
                  itemBuilder: (context, SZF64aruRZajxhdC) {
                    final fnL8qmVL1NA8sDmB = Y18puyI8YrEtJkdp[SZF64aruRZajxhdC];
                    final vUdL7aHqb4jVqtsu =
                        fnL8qmVL1NA8sDmB.R1DrlWpgkNODxc7I.firstWhere(
                      (id) =>
                          id != C2hU7gqXLEXtNDpC.NLbGEpZKzMfAbV3k.fkloYnZiRmbRtJ00,
                      orElse: () => fnL8qmVL1NA8sDmB.R1DrlWpgkNODxc7I.isNotEmpty
                          ? fnL8qmVL1NA8sDmB.R1DrlWpgkNODxc7I.first
                          : '',
                    );
                    final YPNRbQCVjolEyTB5 =
                        C2hU7gqXLEXtNDpC.IyC8CUrMp1zDTN8h(vUdL7aHqb4jVqtsu);
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
                            backgroundImage: UPClh6pI9Z9yX3xQ(
                              YPNRbQCVjolEyTB5.RmXHAp70ovHNBN4U,
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
                          YPNRbQCVjolEyTB5.AWWxvC6FbYICMs9P,
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 19,
                          ),
                        ),
                      ),
                      subtitle: Text(
                        fnL8qmVL1NA8sDmB.l46a7ZEmfVdDDNMKJ,
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      trailing: fnL8qmVL1NA8sDmB.uQsMIZjDCeFbmLAP > 0
                          ? CircleAvatar(
                              radius: 11,
                              backgroundColor: Color(0xFFFF5757),
                              child: Text(
                                '${fnL8qmVL1NA8sDmB.uQsMIZjDCeFbmLAP}',
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          : null,
                      onTap: () => context.push(
                          '/h5/private-chat?id=${fnL8qmVL1NA8sDmB.c5sk5SraIUZ47JRVo}'),
                    );
                  },
                  separatorBuilder: (_, __) => const Divider(
                    color: Colors.white12,
                    height: 30,
                    indent: 20,
                    endIndent: 20,
                  ),
                  itemCount: Y18puyI8YrEtJkdp.length,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
