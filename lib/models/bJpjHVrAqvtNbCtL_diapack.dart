class BJpjHVrAqvtNbCtLDiapack {
  BJpjHVrAqvtNbCtLDiapack({
    required this.k4g89xQIHDro7dyFy,
    required this.LylHtfRBcO1D0w0M,
    required this.oY2gDyZaF80kazMx,
  });

  final String k4g89xQIHDro7dyFy;
  final int LylHtfRBcO1D0w0M;
  final double oY2gDyZaF80kazMx;

  factory BJpjHVrAqvtNbCtLDiapack.fromMap(Map<String, dynamic> map) {
    return BJpjHVrAqvtNbCtLDiapack(
      k4g89xQIHDro7dyFy: map['key'] as String,
      LylHtfRBcO1D0w0M: (map['cions'] ?? 0) as int,
      oY2gDyZaF80kazMx: (map['meney'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'key': k4g89xQIHDro7dyFy,
      'cions': LylHtfRBcO1D0w0M,
      'meney': oY2gDyZaF80kazMx,
    };
  }
}
