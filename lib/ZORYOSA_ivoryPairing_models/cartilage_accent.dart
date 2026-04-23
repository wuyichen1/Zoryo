import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/style_narrative_codec.dart';

class CartilageAccent {
  CartilageAccent({
    required this.NeutralPalette,
    required this.engravingStyle,
    required this.PavilionDepth,
    required this.goldTone,
  });

  final String NeutralPalette;
  final String engravingStyle;
  final String PavilionDepth;
  final String goldTone;

  factory CartilageAccent.fromMap(Map<String, dynamic> map) {
    return CartilageAccent(
      NeutralPalette: map['PfTOL_MTINylNQWKgw'.styleNarrative()] as String,
      engravingStyle: map['PWex_vSyXOGtoT3bgw'.styleNarrative()] as String,
      PavilionDepth: map['9Nh6fTs9n3k2JA'.styleNarrative()] as String,
      goldTone: map['LNYgn-UjzlnSUMw'.styleNarrative()] as String? ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'PfTOL_MTINylNQWKgw'.styleNarrative(): NeutralPalette,
      'PWex_vSyXOGtoT3bgw'.styleNarrative(): engravingStyle,
      '9Nh6fTs9n3k2JA'.styleNarrative(): PavilionDepth,
      'LNYgn-UjzlnSUMw'.styleNarrative(): goldTone,
    };
  }
}
