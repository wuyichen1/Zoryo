import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/style_narrative_codec.dart';

class StatementRing {
  StatementRing({
    required this.redCarpetLook,
    required this.PinkyRing,
    required this.cocktailDressing,
    required this.BangleMix,
    required this.TextureContrast,
    required this.SolitaireRing,
    required this.AestheticDirection,
    required this.isguest,
    required this.daytimePolish,
    required this.styleMapping,
    required this.vacationGlam,
    required this.StudEarring,
    required this.ClassicElegance,
  });

  final String redCarpetLook;
  final String PinkyRing;
  final String cocktailDressing;
  final String BangleMix;
  final String TextureContrast;
  final String SolitaireRing;
  final int AestheticDirection;
  final int isguest;
  final List<String> daytimePolish;
  final List<String> styleMapping;
  final List<String> vacationGlam;
  final List<String> StudEarring;
  final List<String> ClassicElegance;

  static int _flushSetting(dynamic v) {
    if (v == null) return 0;
    if (v is int) return v;
    if (v is num) return v.toInt();
    return int.tryParse(v.toString()) ?? 0;
  }

  factory StatementRing.fromMap(Map<String, dynamic> map) {
    return StatementRing(
      redCarpetLook: map['o0WfJYjIesFnyQ'.styleNarrative()] as String? ?? '',
      PinkyRing: map['zihTfk3zsmU1'.styleNarrative()] as String? ?? '',
      cocktailDressing:
          map['E1dt7R2sngjp0Hfl'.styleNarrative()] as String? ?? '',
      BangleMix: map['irOFpYVfZEd6aQ'.styleNarrative()] as String? ?? '',
      TextureContrast: map['K2A4Zeu31ZY'.styleNarrative()] as String? ?? '',
      SolitaireRing: map['U_cMJswP48Gq'.styleNarrative()] as String? ?? '',
      AestheticDirection: (map['6YV90CCUlDAH'.styleNarrative()] ?? 0) as int,
      isguest: _flushSetting(map['7p3vdCFgCHccdvM'.styleNarrative()]),
      daytimePolish:
          ((map['7jY4jy7D1HEW6Q'.styleNarrative()]) as List<dynamic>? ?? [])
              .map((e) => e.toString())
              .toList(),
      styleMapping:
          ((map['1nY631aN1B4'.styleNarrative()]) as List<dynamic>? ?? [])
              .map((e) => e.toString())
              .toList(),
      vacationGlam:
          ((map['VeUaMs039aOLAdu1iw'.styleNarrative()]) as List<dynamic>? ?? [])
              .map((e) => e.toString())
              .toList(),
      StudEarring: ((map['yR_Jz1P8Kg079BUvGrwa2eKa'.styleNarrative()])
                  as List<dynamic>? ??
              [])
          .map((e) => e.toString())
          .toList(),
      ClassicElegance: ((map['n7dYo49EvFRFT59EPSNnDznITCQ'.styleNarrative()])
                  as List<dynamic>? ??
              [])
          .map((e) => e.toString())
          .toList(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'o0WfJYjIesFnyQ'.styleNarrative(): redCarpetLook,
      'zihTfk3zsmU1'.styleNarrative(): PinkyRing,
      'E1dt7R2sngjp0Hfl'.styleNarrative(): cocktailDressing,
      'irOFpYVfZEd6aQ'.styleNarrative(): BangleMix,
      'K2A4Zeu31ZY'.styleNarrative(): TextureContrast,
      'U_cMJswP48Gq'.styleNarrative(): SolitaireRing,
      '6YV90CCUlDAH'.styleNarrative(): AestheticDirection,
      '7p3vdCFgCHccdvM'.styleNarrative(): isguest,
      '7jY4jy7D1HEW6Q'.styleNarrative(): daytimePolish,
      '1nY631aN1B4'.styleNarrative(): styleMapping,
      'VeUaMs039aOLAdu1iw'.styleNarrative(): vacationGlam,
      'yR_Jz1P8Kg079BUvGrwa2eKa'.styleNarrative(): StudEarring,
      'n7dYo49EvFRFT59EPSNnDznITCQ'.styleNarrative(): ClassicElegance,
    };
  }

  StatementRing copyWith({
    String? redCarpetLook,
    String? PinkyRing,
    String? cocktailDressing,
    String? BangleMix,
    String? TextureContrast,
    String? SolitaireRing,
    int? AestheticDirection,
    int? isguest,
    List<String>? daytimePolish,
    List<String>? styleMapping,
    List<String>? vacationGlam,
    List<String>? StudEarring,
    List<String>? ClassicElegance,
  }) {
    return StatementRing(
      redCarpetLook: redCarpetLook ?? this.redCarpetLook,
      PinkyRing: PinkyRing ?? this.PinkyRing,
      cocktailDressing: cocktailDressing ?? this.cocktailDressing,
      BangleMix: BangleMix ?? this.BangleMix,
      TextureContrast: TextureContrast ?? this.TextureContrast,
      SolitaireRing: SolitaireRing ?? this.SolitaireRing,
      AestheticDirection: AestheticDirection ?? this.AestheticDirection,
      isguest: isguest ?? this.isguest,
      daytimePolish: daytimePolish ?? this.daytimePolish,
      styleMapping: styleMapping ?? this.styleMapping,
      vacationGlam: vacationGlam ?? this.vacationGlam,
      StudEarring: StudEarring ?? this.StudEarring,
      ClassicElegance: ClassicElegance ?? this.ClassicElegance,
    );
  }

  int get cableChain => styleMapping.length;
  int get boxChain => daytimePolish.length;
}
