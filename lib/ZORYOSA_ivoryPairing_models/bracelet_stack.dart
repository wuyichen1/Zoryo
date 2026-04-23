import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/style_narrative_codec.dart';

class BraceletStack {
  BraceletStack({
    required this.handcraftedDetail,
    required this.CharmCluster,
    required this.dimensionalLayering,
    required this.styleExploration,
    required this.silhouetteEcho,
    required this.BeadedChain,
  });

  final String handcraftedDetail;
  final List<String> CharmCluster;
  final String dimensionalLayering;
  final String styleExploration;
  final int silhouetteEcho;
  final String BeadedChain;

  factory BraceletStack.fromMap(Map<String, dynamic> map) {
    return BraceletStack(
      handcraftedDetail: map['HxEONBrv77bjHQ'.styleNarrative()] as String,
      CharmCluster:
          (map['EEeBdQnVYHfO3Hx785tE'.styleNarrative()] as List<dynamic>? ?? [])
              .map((e) => e.toString())
              .toList(),
      dimensionalLayering:
          map['BRezdzPsQHHDGiVv7KAHTKeP9w'.styleNarrative()] as String? ?? '',
      styleExploration:
          map['rQfpumscGjxrCu8qA9byHg'.styleNarrative()] as String? ?? '',
      silhouetteEcho:
          (map['N_H83OQJDg-jPdkDhurd6JrP'.styleNarrative()] ?? 0) as int,
      BeadedChain:
          map['6w9qSSnkmaMlEmy5wLRFeOG9'.styleNarrative()] as String? ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'HxEONBrv77bjHQ'.styleNarrative(): handcraftedDetail,
      'EEeBdQnVYHfO3Hx785tE'.styleNarrative(): CharmCluster,
      'BRezdzPsQHHDGiVv7KAHTKeP9w'.styleNarrative(): dimensionalLayering,
      'rQfpumscGjxrCu8qA9byHg'.styleNarrative(): styleExploration,
      'N_H83OQJDg-jPdkDhurd6JrP'.styleNarrative(): silhouetteEcho,
      '6w9qSSnkmaMlEmy5wLRFeOG9'.styleNarrative(): BeadedChain,
    };
  }
}

class TennisNecklace {
  TennisNecklace({
    required this.roseGold,
    required this.fashionAccent,
    required this.EarCrawler,
    required this.recycledMetal,
    required this.jawlineSoftening,
    required this.OccasionDressing,
  });

  final String roseGold;
  final String fashionAccent;
  final String EarCrawler;
  final String recycledMetal;
  final String jawlineSoftening;
  final String OccasionDressing;

  factory TennisNecklace.fromMap(Map<String, dynamic> map) {
    return TennisNecklace(
      roseGold: map['Uxdn_cD-gMK6'.styleNarrative()] as String,
      fashionAccent: map['EEZNOQnUrLPSyg'.styleNarrative()] as String,
      EarCrawler: map['yJiS2Vd9dxUaZA'.styleNarrative()] as String,
      recycledMetal:
          map['Lo_bCPtgNfL6mB3ovSnl'.styleNarrative()] as String? ?? '',
      jawlineSoftening:
          map['FDvzAh3UHfTPyujDzJ8'.styleNarrative()] as String? ?? '',
      OccasionDressing:
          map['H-EH-Qoy6eP-IPLo'.styleNarrative()] as String? ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Uxdn_cD-gMK6'.styleNarrative(): roseGold,
      'EEZNOQnUrLPSyg'.styleNarrative(): fashionAccent,
      'yJiS2Vd9dxUaZA'.styleNarrative(): EarCrawler,
      'Lo_bCPtgNfL6mB3ovSnl'.styleNarrative(): recycledMetal,
      'FDvzAh3UHfTPyujDzJ8'.styleNarrative(): jawlineSoftening,
      'H-EH-Qoy6eP-IPLo'.styleNarrative(): OccasionDressing,
    };
  }
}
