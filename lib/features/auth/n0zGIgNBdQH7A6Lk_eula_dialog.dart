import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zoryo/features/utils/sT4Ixl4VDmBmLyF0_encryption.dart';

import '../../zzokdet_fangfa/kl3bGE2D4dsgMTqG_state.dart';
import '../widgets/lmDy7TRPsjReTw4L_grabtn.dart';

class N0zGIgNBdQH7A6LkEulaDialog extends StatelessWidget {
  const N0zGIgNBdQH7A6LkEulaDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.65,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/XgO09plIteZzbXdT.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'WKfEQ_dICJA'.cx3hpvXCSg6mF(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Welcome to Zoryo! To make a better place, the following content is not allowed in the app in particular:',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black87, height: 1.5),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      '1. Any content about child harm, pornography related detrimental to children.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black87, height: 1.5),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '2. Fake and harmful messages about recent or current events.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black87, height: 1.5),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '3. Any violence, bullying content, publicly promotes pornography and other content.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black87, height: 1.5),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'If we find any content including and not limited to the above violations your content will be deleted and account will be banned. By clicking the above button, you agree to the Terms of Use and Privacy Policy.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black87, height: 1.5),
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            lmDy7TRPsjReTw4LGrabtn(
              gvXl8QjSpir7sOAs: 230,
              gKk83Jcj0BNDVBtV: 52,
              Q8jxoIEIflW2H4VN: 'Peyyot5CU1e6MS8'.cx3hpvXCSg6mF(),
              jNmPS8ESz78iE6wY: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              o7q0z205CtYy3Q1ID: () async {
                final agw12S82W0OQmZwi = context.read<Kl3bGE2D4dsgMTqGState>();
                await agw12S82W0OQmZwi.s4DGwwJAWv14UaQpX(true);
                if (context.mounted) {
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
