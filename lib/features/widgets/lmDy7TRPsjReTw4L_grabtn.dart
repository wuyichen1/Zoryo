import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class lmDy7TRPsjReTw4LGrabtn extends StatelessWidget {
  const lmDy7TRPsjReTw4LGrabtn({
    super.key,
    required this.Q8jxoIEIflW2H4VN,
    this.jNmPS8ESz78iE6wY,
    this.o7q0z205CtYy3Q1ID,
    this.gvXl8QjSpir7sOAs = 240,
    this.gKk83Jcj0BNDVBtV = 55,
  });

  final String Q8jxoIEIflW2H4VN;
  final TextStyle? jNmPS8ESz78iE6wY;
  final VoidCallback? o7q0z205CtYy3Q1ID;
  final double? gvXl8QjSpir7sOAs;
  final double? gKk83Jcj0BNDVBtV;

  @override
  Widget build(BuildContext context) {
    final child = Container(
      width: gvXl8QjSpir7sOAs,
      height: gKk83Jcj0BNDVBtV,
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
          Q8jxoIEIflW2H4VN,
          style: jNmPS8ESz78iE6wY ??
              GoogleFonts.montserrat(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.white,
              ),
        ),
      ),
    );
    return SizedBox(
      width: gvXl8QjSpir7sOAs,
      height: gKk83Jcj0BNDVBtV,
      child: ElevatedButton(
        onPressed: o7q0z205CtYy3Q1ID,
        style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
        child: child,
      ),
    );
  }
}
