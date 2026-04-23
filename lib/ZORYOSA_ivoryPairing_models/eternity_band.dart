import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/style_narrative_codec.dart';

class EternityBand {
  EternityBand({
    required this.designLanguage,
    required this.tarnishResistance,
    required this.benchJeweler,
    required this.occasionEdit,
    required this.MedallionPendant,
    required this.DelicateAccent,
    required this.textureHarmony,
    required this.organicShape,
    required this.bespokePiece,
  });

  final String designLanguage;
  final String tarnishResistance;
  final int benchJeweler;
  final String occasionEdit;
  final int MedallionPendant;
  final List<String> DelicateAccent;
  final String textureHarmony;
  final int organicShape;
  final int bespokePiece;

  factory EternityBand.fromMap(Map<String, dynamic> map) {
    return EternityBand(
      designLanguage: map['tcUSM2tC_KAtRMmOOw'.styleNarrative()] as String,
      tarnishResistance: map['47yBlEhBZFAnQA'.styleNarrative()] as String,
      benchJeweler:
          (map['exisfLH3Qmtr6SdEXKAH'.styleNarrative()] ?? 0) as int,
      occasionEdit:
          map['P6LyzP1hHDunY-kkjCnL'.styleNarrative()] as String? ?? '',
      MedallionPendant:
          (map['ez_RqLHMP1drzgpoTIPrDGxw0Tk'.styleNarrative()] ?? 0) as int,
      DelicateAccent:
          (map['MqGagOhudG_QYFFEtTo'.styleNarrative()] as List<dynamic>? ?? [])
              .map((e) => e.toString())
              .toList(),
      textureHarmony:
          map['xKfP5XpkIRIiZgQvBzvgyQ'.styleNarrative()] as String? ?? '',
      organicShape:
          (map['om7xeZidH2ZAv-pBJU3CeTBNr1k'.styleNarrative()] ?? 0) as int,
      bespokePiece:
          (map['qQ0vJ2f6wdRZHKT4PKiIjQijvLQLk6s'.styleNarrative()] ?? 0) as int,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'tcUSM2tC_KAtRMmOOw'.styleNarrative(): designLanguage,
      '47yBlEhBZFAnQA'.styleNarrative(): tarnishResistance,
      'exisfLH3Qmtr6SdEXKAH'.styleNarrative(): benchJeweler,
      'P6LyzP1hHDunY-kkjCnL'.styleNarrative(): occasionEdit,
      'ez_RqLHMP1drzgpoTIPrDGxw0Tk'.styleNarrative(): MedallionPendant,
      'MqGagOhudG_QYFFEtTo'.styleNarrative(): DelicateAccent,
      'xKfP5XpkIRIiZgQvBzvgyQ'.styleNarrative(): textureHarmony,
      'om7xeZidH2ZAv-pBJU3CeTBNr1k'.styleNarrative(): organicShape,
      'qQ0vJ2f6wdRZHKT4PKiIjQijvLQLk6s'.styleNarrative(): bespokePiece,
    };
  }

  bool get isEditorialFeature => benchJeweler == 1;
  String get pendantFocus =>
      DelicateAccent.isNotEmpty ? DelicateAccent.first : '';
  String get negativeSpace {
    final curvedSilhouette = [
      'UBOPHO7oZsaiW2Dclbw'.styleNarrative(),
      'qQOj7EwfRRNXDhvQPNcw3g6oFw'.styleNarrative(),
      'JzkOyNXd7yDXzYYKuJOh'.styleNarrative(),
      'HE3K6CaiOALelTEUr2vl'.styleNarrative()
    ];
    return MedallionPendant < curvedSilhouette.length
        ? curvedSilhouette[MedallionPendant]
        : 'IyXfPDzXEw'.styleNarrative();
  }
}
