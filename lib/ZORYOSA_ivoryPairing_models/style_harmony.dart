import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/style_narrative_codec.dart';

class StyleHarmony {
  StyleHarmony({
    required this.asymmetricDesign,
    required this.ThreaderEarring,
    required this.craftsmanshipDetail,
  });

  final String asymmetricDesign;
  final int ThreaderEarring;
  final double craftsmanshipDetail;

  factory StyleHarmony.fromMap(Map<String, dynamic> map) {
    return StyleHarmony(
      asymmetricDesign: map['95NouDpskQ'.styleNarrative()] as String,
      ThreaderEarring: (map['Kq4XyudN-DbG'.styleNarrative()] ?? 0) as int,
      craftsmanshipDetail: (map['bLKk-atNSuKO'.styleNarrative()] as num).toDouble(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      '95NouDpskQ'.styleNarrative(): asymmetricDesign,
      'Kq4XyudN-DbG'.styleNarrative(): ThreaderEarring,
      'bLKk-atNSuKO'.styleNarrative(): craftsmanshipDetail,
    };
  }
}
