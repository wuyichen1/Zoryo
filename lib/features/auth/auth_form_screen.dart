import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zoryo/features/auth/auth_select_screen.dart';

import '../../widgets/gradient_button.dart';
import '../../providers/app_state.dart';

class AuthFormScreen extends StatefulWidget {
  const AuthFormScreen({super.key, required this.mode});
  final String mode; // login | signup | forgot | eula

  @override
  State<AuthFormScreen> createState() => _AuthFormScreenState();
}

class _AuthFormScreenState extends State<AuthFormScreen> {
  final emailCtrl = TextEditingController();
  final pwdCtrl = TextEditingController();

  @override
  void dispose() {
    emailCtrl.dispose();
    pwdCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isEula = widget.mode == 'eula';
    final title = switch (widget.mode) {
      'signup' => 'Sign up',
      'forgot' => 'Forgot password',
      'eula' => 'EULA',
      _ => 'Login',
    };
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //     onPressed: () => context.pop(),
      //     icon: const Icon(Icons.arrow_back_ios_new),
      //   ),
      //   title: Text(title),
      // ),
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
                  title,
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
                child:
                    isEula ? _buildEula(context) : _buildForm(context, title),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildForm(BuildContext context, String title) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 20),
        buildLogo(),
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
              controller: emailCtrl,
              decoration: const InputDecoration(
                hintText: 'Enter email address',
                // labelText: 'Email',
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
              controller: pwdCtrl,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter password',
                // labelText: widget.mode == 'forgot' ? 'New password' : 'Password',
              ),
            ),
          ],
        ),
        if (widget.mode != 'login') ...[
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
                  // labelText: 'Password',
                ),
              ),
            ],
          ),
        ],
        const SizedBox(height: 20),
        if (widget.mode == 'login')
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () => context.push('/auth/form?mode=forgot'),
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
        if (widget.mode == 'login')
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
                onPressed: () => context.push('/auth/form?mode=signup'),
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
        GradientButton(
          label: widget.mode == 'login'
              ? 'Login'
              : widget.mode == 'signup'
                  ? 'Sign up'
                  : 'Next',
          onPressed: () async {
            final app = context.read<AppState>();
            if (widget.mode == 'login') {
              await app.loginWithEmail(emailCtrl.text, pwdCtrl.text);
            } else if (widget.mode == 'signup') {
              // Create new user and login
              await app.signupWithEmail(emailCtrl.text, pwdCtrl.text);
            }
            if (context.mounted) {
              if (app.isLoggedIn) {
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

  Widget _buildEula(BuildContext context) {
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
          GradientButton(
            label: 'I agree',
            onPressed: () => context.pop(),
          ),
        ],
      ),
    );
  }
}
