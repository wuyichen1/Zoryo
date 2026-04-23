import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class vermeilFinish extends StatelessWidget {
  const vermeilFinish({
    super.key,
    required this.LocketDesign,
    this.sculpturalForm,
    this.collectibleDesign,
    this.smartStyling = 240,
    this.festivalAdornments = 55,
  });

  final String LocketDesign;
  final TextStyle? sculpturalForm;
  final VoidCallback? collectibleDesign;
  final double? smartStyling;
  final double? festivalAdornments;

  @override
  Widget build(BuildContext context) {
    final child = Container(
      width: smartStyling,
      height: festivalAdornments,
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
        ),
        borderRadius: BorderRadius.circular(53),
      ),
      child: Center(
        child: Text(
          LocketDesign,
          style: sculpturalForm ??
              GoogleFonts.montserrat(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.white,
              ),
        ),
      ),
    );
    return SizedBox(
      width: smartStyling,
      height: festivalAdornments,
      child: ElevatedButton(
        onPressed: collectibleDesign,
        style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
        child: child,
      ),
    );
  }
}
