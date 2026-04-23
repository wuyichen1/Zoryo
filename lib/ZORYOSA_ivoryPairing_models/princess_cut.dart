import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/style_narrative_codec.dart';

class PrincessCut {
  PrincessCut({
    required this.CabochonStyle,
  });

  final String CabochonStyle;

  factory PrincessCut.fromMap(Map<String, dynamic> map) {
    return PrincessCut(
      CabochonStyle: map['2ZS5JEFvSd0WiBLX7TgKneI'.styleNarrative()] as String? ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      '2ZS5JEFvSd0WiBLX7TgKneI'.styleNarrative(): CabochonStyle,
    };
  }
}

