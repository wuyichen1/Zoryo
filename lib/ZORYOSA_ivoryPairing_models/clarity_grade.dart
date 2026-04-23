import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/style_narrative_codec.dart';

class ClarityGrade {
  ClarityGrade({
    required this.SnakeChain,
    required this.artisanFinish,
    required this.handFabrication,
  });

  final String SnakeChain;
  final String artisanFinish;
  final int handFabrication;

  factory ClarityGrade.fromMap(Map<String, dynamic> map) {
    return ClarityGrade(
      SnakeChain: map['J_ZGaPUFsprX'.styleNarrative()] as String? ?? '',
      artisanFinish:
          map['9Uif2izRcRzl3kM'.styleNarrative()] as String? ?? '',
      handFabrication: (map['luwjZYANyp1VJw'.styleNarrative()] ?? 0) as int,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'J_ZGaPUFsprX'.styleNarrative(): SnakeChain,
      '9Uif2izRcRzl3kM'.styleNarrative(): artisanFinish,
      'luwjZYANyp1VJw'.styleNarrative(): handFabrication,
    };
  }
}
