import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/style_narrative_codec.dart';

class VisualSophistication {
  VisualSophistication({
    required this.signatureLook,
    required this.MetalFinish,
  });

  final String signatureLook;
  final int MetalFinish;

  factory VisualSophistication.fromMap(Map<String, dynamic> map) {
    return VisualSophistication(
      signatureLook: map['AX3eSTWSM7I'.styleNarrative()] as String? ?? '',
      MetalFinish: (map['wzOvTGvIQ68r'.styleNarrative()] ?? 0) as int,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'AX3eSTWSM7I'.styleNarrative(): signatureLook,
      'wzOvTGvIQ68r'.styleNarrative(): MetalFinish,
    };
  }
}
