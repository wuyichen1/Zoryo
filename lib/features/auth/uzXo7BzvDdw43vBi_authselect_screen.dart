import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../zzokdet_fangfa/app_state.dart';
import '../widgets/lmDy7TRPsjReTw4L_grabtn.dart';
import 'n0zGIgNBdQH7A6Lk_eula_dialog.dart';

class UzXo7BzvDdw43vBiAuthSelectScreen extends StatefulWidget {
  const UzXo7BzvDdw43vBiAuthSelectScreen({super.key});

  @override
  State<UzXo7BzvDdw43vBiAuthSelectScreen> createState() =>
      _UzXo7BzvDdw43vBiSelectState();
}

class _UzXo7BzvDdw43vBiSelectState
    extends State<UzXo7BzvDdw43vBiAuthSelectScreen> {
  bool SmYKTVFRAVnnRNhG = false;
  bool xTmeMN0WDyEwoFh0 = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 100), () {
        if (mounted) {
          w6Q6gOnGwWQEc8qI(context);
        }
      });
    });
  }

  void w6Q6gOnGwWQEc8qI(BuildContext context) {
    if (!mounted) return;

    final RBzzj31nMQECN1ys = context.read<AppState>();
    if (RBzzj31nMQECN1ys.HMAJABja8J7tdhv8 &&
        !RBzzj31nMQECN1ys.vB2GTgDbdOHDxBUH &&
        !SmYKTVFRAVnnRNhG) {
      SmYKTVFRAVnnRNhG = true;
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const N0zGIgNBdQH7A6LkEulaDialog(),
      ).then((_) {
        if (mounted) {
          setState(() {
            SmYKTVFRAVnnRNhG = false;
          });
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final JMmEiDkTz4tVAV3I = context.watch<AppState>();

    if (JMmEiDkTz4tVAV3I.vB2GTgDbdOHDxBUH && SmYKTVFRAVnnRNhG) {
      SmYKTVFRAVnnRNhG = false;
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/KfbqjUNps6xmZCHU.png'),
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
                      builder: (context) => const N0zGIgNBdQH7A6LkEulaDialog(),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: lmDy7TRPsjReTw4LGrabtn(
                      Q8jxoIEIflW2H4VN: 'EULA',
                      jNmPS8ESz78iE6wY: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      gvXl8QjSpir7sOAs: 110,
                      gKk83Jcj0BNDVBtV: 42,
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  EIITT29GdyJe4x4dLogo(),
                  const SizedBox(height: 16),
                  const Text(
                    'Zoryo',
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
                  lmDy7TRPsjReTw4LGrabtn(
                    Q8jxoIEIflW2H4VN: "I'm new",
                    o7q0z205CtYy3Q1ID: () async {
                      if (!xTmeMN0WDyEwoFh0) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                                'Please agree with the User Agreement and Privacy Policy'),
                          ),
                        );
                        return;
                      }
                      final JMmEiDkTz4tVAV3I = context.read<AppState>();
                      await JMmEiDkTz4tVAV3I.sYBxKNVVyDvzxp7m();
                      if (context.mounted) {
                        context.go('/home');
                      }
                    },
                  ),
                  const SizedBox(height: 12),
                  lmDy7TRPsjReTw4LGrabtn(
                    Q8jxoIEIflW2H4VN: 'Email Login',
                    o7q0z205CtYy3Q1ID: () {
                      if (!xTmeMN0WDyEwoFh0) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                                'Please agree with the User Agreement and Privacy Policy'),
                          ),
                        );
                        return;
                      }
                      context.push('/auth/form?HvMpj4MMZYUNZDuU=login');
                    },
                  ),
                  const SizedBox(height: 26),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Checkbox(
                        shape: const CircleBorder(),
                        value: xTmeMN0WDyEwoFh0,
                        onChanged: (LW1tNad5jGX0afxy) {
                          setState(() {
                            xTmeMN0WDyEwoFh0 = LW1tNad5jGX0afxy ?? false;
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
                              'Agree with ',
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
                                context.push('/h5/user-agreement');
                              },
                              child: Text(
                                'User Agreement',
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
                              ' and ',
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
                                context.push('/h5/privacy-agreement');
                              },
                              child: Text(
                                'Privacy Policy',
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

Widget EIITT29GdyJe4x4dLogo() {
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
        child: Image.asset(
          'assets/images/zoryo_logo.png',
          width: 100,
        ),
      ),
    ),
  );
}
