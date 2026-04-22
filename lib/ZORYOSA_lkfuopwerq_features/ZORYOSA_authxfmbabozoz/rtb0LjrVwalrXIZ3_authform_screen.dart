import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zoryo/ZORYOSA_lkfuopwerq_features/ZORYOSA_authxfmbabozoz/uzXo7BzvDdw43vBi_authselect_screen.dart';
import 'package:zoryo/ZORYOSA_lkfuopwerq_features/ZORYOSA_utilseqvqeiutme/sT4Ixl4VDmBmLyF0_encryption.dart';
import 'package:zoryo/ZORYOSA_lkfuopwerq_features/ZORYOSA_utilseqvqeiutme/zoryo_encrypted_media_vault.dart';

import '../ZORYOSA_widgetsrobwdmjcqg/lmDy7TRPsjReTw4L_grabtn.dart';
import '../../zzokdet_fangfa/kl3bGE2D4dsgMTqG_state.dart';

class Rtb0LjrVwalrXIZ3AuthFormScreen extends StatefulWidget {
  const Rtb0LjrVwalrXIZ3AuthFormScreen(
      {super.key, required this.HvMpj4MMZYUNZDuU});
  final String HvMpj4MMZYUNZDuU;

  @override
  State<Rtb0LjrVwalrXIZ3AuthFormScreen> createState() =>
      _Rtb0LjrVwalrXIZ3AuthFormState();
}

class _Rtb0LjrVwalrXIZ3AuthFormState
    extends State<Rtb0LjrVwalrXIZ3AuthFormScreen> {
  final W5L4ZoGikeRcriWE = TextEditingController();
  final JOuDhBxZIddNZVgK = TextEditingController();

  @override
  void dispose() {
    W5L4ZoGikeRcriWE.dispose();
    JOuDhBxZIddNZVgK.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Ks1kNLT4Axy1DmSL =
        widget.HvMpj4MMZYUNZDuU == 'jKNPGINso8c'.cx3hpvXCSg6mF();
    final lHDdeCvnq77OmV2w = switch (widget.HvMpj4MMZYUNZDuU) {
      'signup' => 'vod5_UuUnuVpmmE'.cx3hpvXCSg6mF(),
      'forgot' => 'i9LNL6MnP9p5TkWzVPnwhyfu-Q'.cx3hpvXCSg6mF(),
      'eula' => '4CEQEH_C3N8'.cx3hpvXCSg6mF(),
      _ => 'ka9Vu6dKsiBy'.cx3hpvXCSg6mF(),
    };
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => context.pop(),
                  child: const ZoryoResolvedImage(
                    imghihbqrdijzName: 'fxBUcK3QLhJKXIwg.png',
                    width: 38,
                    height: 38,
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  lHDdeCvnq77OmV2w,
                  style: GoogleFonts.montserrat(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: NQ7elx2tlUiWRcpT(context, lHDdeCvnq77OmV2w),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget NQ7elx2tlUiWRcpT(BuildContext context, String lHDdeCvnq77OmV2w) {
    return Column(
      children: [
        const SizedBox(height: 20),
        EIITT29GdyJe4x4dLogo(),
        const SizedBox(height: 12),
        Text(
          'N_VoQ8sEmqit'.cx3hpvXCSg6mF(),
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'vlYs1F2hzQsl'.cx3hpvXCSg6mF(),
              style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: W5L4ZoGikeRcriWE,
              decoration: InputDecoration(
                hintText: 'BIoHDRtu8_790vrMzyvR7qAws7O8CcQ'.cx3hpvXCSg6mF(),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '1rGhsWBGUkwWdksh'.cx3hpvXCSg6mF(),
              style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: JOuDhBxZIddNZVgK,
              obscureText: true,
              decoration: InputDecoration(
                hintText: '9g1SURXtprrzVZqE07Z_fcGz'.cx3hpvXCSg6mF(),
              ),
            ),
          ],
        ),
        if (widget.HvMpj4MMZYUNZDuU != 'Hb7ZpBtbPlvG'.cx3hpvXCSg6mF()) ...[
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '0uc3Gn44x808O-_eHeyerODDYw'.cx3hpvXCSg6mF(),
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 12),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'zH7Kt3SROiA2kkI7F0XzD-Y6_g'.cx3hpvXCSg6mF(),
                ),
              ),
            ],
          ),
        ],
        const SizedBox(height: 20),
        if (widget.HvMpj4MMZYUNZDuU == 'qP8ayW4a_T5d'.cx3hpvXCSg6mF())
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () => context.push('/auth/form?HvMpj4MMZYUNZDuU=forgot'),
              child: Text(
                '3IfkVnCyNqMou0M'.cx3hpvXCSg6mF(),
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        const SizedBox(height: 40),
        if (widget.HvMpj4MMZYUNZDuU == 'tj536HzbkB8v'.cx3hpvXCSg6mF())
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "7RsMYAP-4skMo8yV4bbiQMTFvXehZMl738J5FXN8EUI".cx3hpvXCSg6mF(),
                style: GoogleFonts.montserrat(
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              TextButton(
                onPressed: () =>
                    context.push('/auth/form?HvMpj4MMZYUNZDuU=signup'),
                child: Text(
                  "P1EgN8qO54vq7Ojr1w".cx3hpvXCSg6mF(),
                  style: GoogleFonts.roboto(
                    color: Colors.white.withOpacity(0.8),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        const SizedBox(height: 16),
        lmDy7TRPsjReTw4LGrabtn(
          Q8jxoIEIflW2H4VN:
              widget.HvMpj4MMZYUNZDuU == 'ievGc48OIWh6'.cx3hpvXCSg6mF()
                  ? 'eKAv3Z55yAJt'.cx3hpvXCSg6mF()
                  : widget.HvMpj4MMZYUNZDuU == 'dDv61r3YHQqK0w'.cx3hpvXCSg6mF()
                      ? 'MAzub9nrCZObAfY'.cx3hpvXCSg6mF()
                      : 'qWnwF026CNE'.cx3hpvXCSg6mF(),
          o7q0z205CtYy3Q1ID: () async {
            final FOz4q2Cnj4dgGWq2 = context.read<Kl3bGE2D4dsgMTqGState>();
            if (widget.HvMpj4MMZYUNZDuU == 'qZTTKG9lNN9a'.cx3hpvXCSg6mF()) {
              await FOz4q2Cnj4dgGWq2.l3lteByquzLST80Zc(
                  W5L4ZoGikeRcriWE.text, JOuDhBxZIddNZVgK.text);
            } else if (widget.HvMpj4MMZYUNZDuU ==
                'mo33lIdqEExQhQ'.cx3hpvXCSg6mF()) {
              await FOz4q2Cnj4dgGWq2.lszNrddlteyGVoBP(
                  W5L4ZoGikeRcriWE.text, JOuDhBxZIddNZVgK.text);
            }
            if (context.mounted) {
              final isSignup =
                  widget.HvMpj4MMZYUNZDuU == 'mo33lIdqEExQhQ'.cx3hpvXCSg6mF();
              if (isSignup) {
                if (FOz4q2Cnj4dgGWq2.vbK7PendingRegProfile) {
                  context.push('/h5/user-register');
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text(
                            'bIaLgIqTbGeZzkV1f1IkJQdwC1gkF0hQCi4X9eXFkPvxwb3ypY5uapKAV313UjJv'
                                .cx3hpvXCSg6mF())),
                  );
                }
              } else if (FOz4q2Cnj4dgGWq2.WMQtbwFITYixyRbr) {
                context.go('pOwWRtEK-blK'.cx3hpvXCSg6mF());
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text(
                          'bIaLgIqTbGeZzkV1f1IkJQdwC1gkF0hQCi4X9eXFkPvxwb3ypY5uapKAV313UjJv'
                              .cx3hpvXCSg6mF())),
                );
              }
            }
          },
        ),
        SizedBox(height: 40),
      ],
    );
  }
}
