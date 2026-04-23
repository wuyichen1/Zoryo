import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/style_narrative_codec.dart';

class VisualBalance {
  VisualBalance({
    required this.linearAccent,
  });

  final String linearAccent;

  factory VisualBalance.fromMap(Map<String, dynamic> map) {
    return VisualBalance(
      linearAccent: map['wQw9pW7x2EEFEA'.styleNarrative()] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'wQw9pW7x2EEFEA'.styleNarrative(): linearAccent,
    };
  }
}
