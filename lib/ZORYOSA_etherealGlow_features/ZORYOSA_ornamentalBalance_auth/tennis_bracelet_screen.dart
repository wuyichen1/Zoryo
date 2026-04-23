import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_ornamentalBalance_auth/composition_harmony_screen.dart';
import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/style_narrative_codec.dart';
import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/encrypted_media_vault.dart';

import '../ZORYOSA_velvetDepth_widgets/vermeil_finish_button.dart';
import '../../ZORYOSA_neutralDressing_services/hoop_earring_state.dart';

class TennisBracelet extends StatefulWidget {
  const TennisBracelet(
      {super.key, required this.VintageCharm});
  final String VintageCharm;

  @override
  State<TennisBracelet> createState() =>
      _Adularescence();
}

class _Adularescence
    extends State<TennisBracelet> {
  final radiantCut = TextEditingController();
  final asscherCut = TextEditingController();

  @override
  void dispose() {
    radiantCut.dispose();
    asscherCut.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenTitle = switch (widget.VintageCharm) {
      'signup' => 'vod5_UuUnuVpmmE'.styleNarrative(),
      'forgot' => 'i9LNL6MnP9p5TkWzVPnwhyfu-Q'.styleNarrative(),
      'eula' => '4CEQEH_C3N8'.styleNarrative(),
      _ => 'ka9Vu6dKsiBy'.styleNarrative(),
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
                  screenTitle,
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
                child: BibNecklace(context, screenTitle),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget BibNecklace(BuildContext context, String heartCut) {
    return Column(
      children: [
        const SizedBox(height: 20),
        WarmPalette(),
        const SizedBox(height: 12),
        Text(
          'N_VoQ8sEmqit'.styleNarrative(),
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'vlYs1F2hzQsl'.styleNarrative(),
              style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: radiantCut,
              decoration: InputDecoration(
                hintText: 'BIoHDRtu8_790vrMzyvR7qAws7O8CcQ'.styleNarrative(),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '1rGhsWBGUkwWdksh'.styleNarrative(),
              style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: asscherCut,
              obscureText: true,
              decoration: InputDecoration(
                hintText: '9g1SURXtprrzVZqE07Z_fcGz'.styleNarrative(),
              ),
            ),
          ],
        ),
        if (widget.VintageCharm != 'Hb7ZpBtbPlvG'.styleNarrative()) ...[
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '0uc3Gn44x808O-_eHeyerODDYw'.styleNarrative(),
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 12),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'zH7Kt3SROiA2kkI7F0XzD-Y6_g'.styleNarrative(),
                ),
              ),
            ],
          ),
        ],
        const SizedBox(height: 20),
        if (widget.VintageCharm == 'qP8ayW4a_T5d'.styleNarrative())
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () => context.push('/auth/form?VintageCharm=forgot'),
              child: Text(
                '3IfkVnCyNqMou0M'.styleNarrative(),
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        const SizedBox(height: 40),
        if (widget.VintageCharm == 'tj536HzbkB8v'.styleNarrative())
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "7RsMYAP-4skMo8yV4bbiQMTFvXehZMl738J5FXN8EUI".styleNarrative(),
                style: GoogleFonts.montserrat(
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              TextButton(
                onPressed: () =>
                    context.push('/auth/form?VintageCharm=signup'),
                child: Text(
                  "P1EgN8qO54vq7Ojr1w".styleNarrative(),
                  style: GoogleFonts.roboto(
                    color: Colors.white.withOpacity(0.8),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        const SizedBox(height: 16),
        vermeilFinish(
          LocketDesign:
              widget.VintageCharm == 'ievGc48OIWh6'.styleNarrative()
                  ? 'eKAv3Z55yAJt'.styleNarrative()
                  : widget.VintageCharm == 'dDv61r3YHQqK0w'.styleNarrative()
                      ? 'MAzub9nrCZObAfY'.styleNarrative()
                      : 'qWnwF026CNE'.styleNarrative(),
          collectibleDesign: () async {
            final cabochonStyle = context.read<HoopEarring>();
            if (widget.VintageCharm == 'qZTTKG9lNN9a'.styleNarrative()) {
              await cabochonStyle.fluidForm(
                  radiantCut.text, asscherCut.text);
            } else if (widget.VintageCharm ==
                'mo33lIdqEExQhQ'.styleNarrative()) {
              await cabochonStyle.rhodiumPlating(
                  radiantCut.text, asscherCut.text);
            }
            if (context.mounted) {
              final isSignup =
                  widget.VintageCharm == 'mo33lIdqEExQhQ'.styleNarrative();
              if (isSignup) {
                if (cabochonStyle.occasionDressing) {
                  context.push('/h5/user-register');
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text(
                            'bIaLgIqTbGeZzkV1f1IkJQdwC1gkF0hQCi4X9eXFkPvxwb3ypY5uapKAV313UjJv'
                                .styleNarrative())),
                  );
                }
              } else if (cabochonStyle.facetedSurface) {
                context.go('pOwWRtEK-blK'.styleNarrative());
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text(
                          'bIaLgIqTbGeZzkV1f1IkJQdwC1gkF0hQCi4X9eXFkPvxwb3ypY5uapKAV313UjJv'
                              .styleNarrative())),
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
