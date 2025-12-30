class TdpFegrWPc3sjlaQPost {
  TdpFegrWPc3sjlaQPost({
    required this.qCzdv3cLqVGfralN,
    required this.nlPxQBFl8qKNMmCt,
    required this.ocN7sEFUY2qW0Zgr,
    required this.d5qDS5cKGXAcpvxCZ,
    required this.Q5NZavasJD1R1f99,
    required this.DFaJPr04YQi08GFg,
    required this.v6RwxJdopZDQxY88J,
    required this.jShz1CDkEjVxqPS0,
    required this.c87SZoIBDjypXU2KF,
  });

  final String qCzdv3cLqVGfralN;
  final String nlPxQBFl8qKNMmCt;
  final int ocN7sEFUY2qW0Zgr;
  final String d5qDS5cKGXAcpvxCZ;
  final int Q5NZavasJD1R1f99;
  final List<String> DFaJPr04YQi08GFg;
  final String v6RwxJdopZDQxY88J;
  final int jShz1CDkEjVxqPS0;
  final int c87SZoIBDjypXU2KF;

  factory TdpFegrWPc3sjlaQPost.fromMap(Map<String, dynamic> map) {
    return TdpFegrWPc3sjlaQPost(
      qCzdv3cLqVGfralN: map['dynamicId'] as String,
      nlPxQBFl8qKNMmCt: map['userId'] as String,
      ocN7sEFUY2qW0Zgr: (map['dynamicType'] ?? 0) as int,
      d5qDS5cKGXAcpvxCZ: map['dynamicDesc'] as String? ?? '',
      Q5NZavasJD1R1f99: (map['dynamicTitleType'] ?? 0) as int,
      DFaJPr04YQi08GFg: (map['dynamicPic'] as List<dynamic>? ?? [])
          .map((e) => e.toString())
          .toList(),
      v6RwxJdopZDQxY88J: map['dynamicVideo'] as String? ?? '',
      jShz1CDkEjVxqPS0: (map['dynamicLikeCount'] ?? 0) as int,
      c87SZoIBDjypXU2KF: (map['dynamicCommentCount'] ?? 0) as int,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'dynamicId': qCzdv3cLqVGfralN,
      'userId': nlPxQBFl8qKNMmCt,
      'dynamicType': ocN7sEFUY2qW0Zgr,
      'dynamicDesc': d5qDS5cKGXAcpvxCZ,
      'dynamicTitleType': Q5NZavasJD1R1f99,
      'dynamicPic': DFaJPr04YQi08GFg,
      'dynamicVideo': v6RwxJdopZDQxY88J,
      'dynamicLikeCount': jShz1CDkEjVxqPS0,
      'dynamicCommentCount': c87SZoIBDjypXU2KF,
    };
  }

  bool get amKEbF9mgIneMVni => ocN7sEFUY2qW0Zgr == 1; //isVideo
  String get kitYNCH7Xp32Jfbn =>
      DFaJPr04YQi08GFg.isNotEmpty ? DFaJPr04YQi08GFg.first : ''; //imageUrl
  String get INWCOb6Ba2b5lyo5 {
    const sjTgIKiDu74K9VGM = [
      'Daily Glow',
      'Office Polished',
      'Travel Vibe',
      'Party Shine'
    ];
    return Q5NZavasJD1R1f99 < sjTgIKiDu74K9VGM.length
        ? sjTgIKiDu74K9VGM[Q5NZavasJD1R1f99]
        : 'ALL';
  } //category
}
