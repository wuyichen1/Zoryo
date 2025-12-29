import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../providers/app_state.dart';
import '../../widgets/gradient_button.dart';
import 'eula_dialog.dart';

class AuthSelectScreen extends StatefulWidget {
  const AuthSelectScreen({super.key});

  @override
  State<AuthSelectScreen> createState() => _AuthSelectScreenState();
}

class _AuthSelectScreenState extends State<AuthSelectScreen> {
  bool _eulaDialogShown = false;
  bool isAgreed = true;

  @override
  void initState() {
    super.initState();
    // Wait a bit to ensure bootstrap is complete
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 100), () {
        if (mounted) {
          _checkEula(context);
        }
      });
    });
  }

  void _checkEula(BuildContext context) {
    if (!mounted) return;

    final app = context.read<AppState>();
    // Only show dialog if app is initialized, EULA not agreed, and dialog hasn't been shown yet
    if (app.initialized && !app.eulaAgreed && !_eulaDialogShown) {
      _eulaDialogShown = true;
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const EulaDialog(),
      ).then((_) {
        // Reset flag when dialog is closed (only if still mounted)
        if (mounted) {
          setState(() {
            _eulaDialogShown = false;
          });
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Watch app state to react to EULA changes
    final app = context.watch<AppState>();

    // If EULA is agreed, ensure dialog flag is reset
    if (app.eulaAgreed && _eulaDialogShown) {
      _eulaDialogShown = false;
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 50),
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => const EulaDialog(),
                    );
                  },
                  child: GradientButton(
                    label: 'EULA',
                    textStyle: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    width: 110,
                    height: 42,
                  ),
                ),
              ),
              const Spacer(),
              Center(
                child: Column(
                  children: [
                    buildLogo(),
                    // Container(
                    //   width: 90,
                    //   height: 90,
                    //   decoration: BoxDecoration(
                    //     border: Border.all(
                    //       color: Colors.white38,
                    //       width: 3,
                    //     ),
                    //     color: Colors.white60,
                    //     borderRadius: BorderRadius.circular(26),
                    //   ),
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(2.0),
                    //     child: ClipRRect(
                    //       borderRadius: BorderRadiusGeometry.circular(22),
                    //       child: Image.asset(
                    //         'assets/images/zoryo_logo.png',
                    //         width: 100,
                    //       ),
                    //     ),
                    //   ),
                    // ),
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
              ),
              const SizedBox(height: 60),
              GradientButton(
                label: "I'm new",
                onPressed: () async {
                  if (!isAgreed) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                            'Please agree with the User Agreement and Privacy Policy'),
                      ),
                    );
                    return;
                  }
                  final app = context.read<AppState>();
                  await app.quickLogin();
                  if (context.mounted) {
                    context.go('/home');
                  }
                },
              ),
              const SizedBox(height: 12),
              GradientButton(
                label: 'Email Login',
                onPressed: () {
                  if (!isAgreed) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                            'Please agree with the User Agreement and Privacy Policy'),
                      ),
                    );
                    return;
                  }
                  context.push('/auth/form?mode=login');
                },
              ),
              const SizedBox(height: 26),
              Flexible(
                child: Row(
                  children: [
                    Checkbox(
                      shape: const CircleBorder(),
                      value: isAgreed,
                      onChanged: (value) {
                        setState(() {
                          isAgreed = value ?? false;
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
                      checkColor: Colors.white, // 对号颜色，与蓝色填充搭配
                    ),
                    Flexible(
                      child: Text(
                        'Agree with User Agreement and\nPrivacy Policy',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildLogo() {
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
