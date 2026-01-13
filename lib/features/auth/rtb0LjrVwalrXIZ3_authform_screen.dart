import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zoryo/features/auth/uzXo7BzvDdw43vBi_authselect_screen.dart';

import '../widgets/lmDy7TRPsjReTw4L_grabtn.dart';
import '../../zzokdet_fangfa/app_state.dart';

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
    final Ks1kNLT4Axy1DmSL = widget.HvMpj4MMZYUNZDuU == 'eula';
    final lHDdeCvnq77OmV2w = switch (widget.HvMpj4MMZYUNZDuU) {
      'signup' => 'Sign up',
      'forgot' => 'Forgot password',
      'eula' => 'EULA',
      _ => 'Login',
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
                  child: Image.asset(
                    'assets/images/fxBUcK3QLhJKXIwg.png',
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
                child: Ks1kNLT4Axy1DmSL
                    ? b39Xt42hgedE3HqCz(context)
                    : NQ7elx2tlUiWRcpT(context, lHDdeCvnq77OmV2w),
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
        const Text(
          'Zoryo',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email',
              style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: W5L4ZoGikeRcriWE,
              decoration: const InputDecoration(
                hintText: 'Enter email address',
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
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
                hintText: 'Enter password',
              ),
            ),
          ],
        ),
        if (widget.HvMpj4MMZYUNZDuU != 'login') ...[
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Repeat password',
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 12),
              TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Repeat password',
                ),
              ),
            ],
          ),
        ],
        const SizedBox(height: 20),
        if (widget.HvMpj4MMZYUNZDuU == 'login')
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () => context.push('/auth/form?HvMpj4MMZYUNZDuU=forgot'),
              child: Text(
                'FORGOT?',
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        const SizedBox(height: 40),
        if (widget.HvMpj4MMZYUNZDuU == 'login')
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account yet?  ",
                style: GoogleFonts.montserrat(
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              TextButton(
                onPressed: () =>
                    context.push('/auth/form?HvMpj4MMZYUNZDuU=signup'),
                child: Text(
                  "SIGN UP >",
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
          Q8jxoIEIflW2H4VN: widget.HvMpj4MMZYUNZDuU == 'login'
              ? 'Login'
              : widget.HvMpj4MMZYUNZDuU == 'signup'
                  ? 'Sign up'
                  : 'Next',
          o7q0z205CtYy3Q1ID: () async {
            final FOz4q2Cnj4dgGWq2 = context.read<AppState>();
            if (widget.HvMpj4MMZYUNZDuU == 'login') {
              await FOz4q2Cnj4dgGWq2.l3lteByquzLST80Zc(
                  W5L4ZoGikeRcriWE.text, JOuDhBxZIddNZVgK.text);
            } else if (widget.HvMpj4MMZYUNZDuU == 'signup') {
              await FOz4q2Cnj4dgGWq2.lszNrddlteyGVoBP(
                  W5L4ZoGikeRcriWE.text, JOuDhBxZIddNZVgK.text);
            }
            if (context.mounted) {
              if (FOz4q2Cnj4dgGWq2.WMQtbwFITYixyRbr) {
                context.go('/home');
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content:
                          Text('Login failed. Please check your credentials.')),
                );
              }
            }
          },
        ),
        SizedBox(height: 40),
      ],
    );
  }

  Widget b39Xt42hgedE3HqCz(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'EULA',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          const Text(
            'Welcome to Zoryo! Any content about child harm or pornography is strictly prohibited. '
            'Fake or harmful messages about current events and violence or bullying are also forbidden.',
            style: TextStyle(height: 1.5),
          ),
          const SizedBox(height: 16),
          const Text(
            'If such content is found, your account will be banned and content removed. '
            'By clicking agree you accept the Terms of Use and Privacy Policy.',
            style: TextStyle(height: 1.5),
          ),
          const SizedBox(height: 24),
          lmDy7TRPsjReTw4LGrabtn(
            Q8jxoIEIflW2H4VN: 'I agree',
            o7q0z205CtYy3Q1ID: () => context.pop(),
          ),
        ],
      ),
    );
  }
}
