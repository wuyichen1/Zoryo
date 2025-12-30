import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/theme/app_theme.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    super.key,
    required this.label,
    this.textStyle,
    this.onPressed,
    this.width = 240,
    this.height = 55,
  });

  final String label;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final gradient =
        Theme.of(context).extension<GradientTheme>()!.primaryGradient;
    final child = Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
        ),
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 202, 104, 43),
            Colors.black,
            const Color.fromARGB(255, 22, 87, 178),
          ],
          // colors: [
          //   Color(0xFFFF8133),
          //   Colors.black,
          //   Color(0xFF1C7BFF),
          // ],
        ),
        borderRadius: BorderRadius.circular(53),
      ),
      child: Center(
        child: Text(
          label,
          style: textStyle ??
              GoogleFonts.montserrat(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.white,
              ),
        ),
      ),
    );
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
        child: child,
      ),
    );
  }
}
