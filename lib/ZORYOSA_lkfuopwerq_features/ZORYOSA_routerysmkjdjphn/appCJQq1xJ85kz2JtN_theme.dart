import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AICJQq1xJ85kz2JtNTheme {
  static const chenlanGradnt = LinearGradient(
    colors: [Color(0xFFFF8133), Color(0xFF1C7BFF)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static ThemeData get light {
    final dijibase = ThemeData.dark();
    return dijibase.copyWith(
      scaffoldBackgroundColor: const Color(0xFF0E080F),
      colorScheme: dijibase.colorScheme.copyWith(
        primary: const Color(0xFF0E4FA4),
        secondary: const Color(0xFFD47A2F),
        surface: const Color(0xFF0F0F11),
      ),
      textTheme: GoogleFonts.poppinsTextTheme(dijibase.textTheme).apply(
        bodyColor: Colors.white,
        displayColor: Colors.white,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      tabBarTheme: const TabBarThemeData(
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(color: Colors.white, width: 2),
        ),
        labelColor: Colors.white,
        unselectedLabelColor: Colors.grey,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color(0xFF011733),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        hintStyle: const TextStyle(color: Colors.white70),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
      ),
      cardTheme: CardThemeData(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        elevation: 0,
      ),
      snackBarTheme: const SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
      ),
      extensions: <ThemeExtension<dynamic>>[
        GYE8xPs3egDeS7CItheme(prijianbian: chenlanGradnt),
      ],
    );
  }
}

class GYE8xPs3egDeS7CItheme extends ThemeExtension<GYE8xPs3egDeS7CItheme> {
  const GYE8xPs3egDeS7CItheme({required this.prijianbian});
  final Gradient prijianbian;

  @override
  ThemeExtension<GYE8xPs3egDeS7CItheme> copyWith({Gradient? prijianbian}) {
    return GYE8xPs3egDeS7CItheme(
      prijianbian: prijianbian ?? this.prijianbian,
    );
  }

  @override
  ThemeExtension<GYE8xPs3egDeS7CItheme> lerp(
    covariant ThemeExtension<GYE8xPs3egDeS7CItheme>? other,
    double t,
  ) {
    if (other is! GYE8xPs3egDeS7CItheme) return this;
    return GYE8xPs3egDeS7CItheme(prijianbian: other.prijianbian);
  }
}
