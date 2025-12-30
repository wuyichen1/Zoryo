class MLWrwTEsH7mWmgZPCommt {
  MLWrwTEsH7mWmgZPCommt({
    required this.F3tQdus72ZvZq1uM,
    required this.c1dQdWQzAR6zeSfma,
    required this.YjHeuERpQWrW2rzh,
    required this.lDHPaouixbyR94Ru,
  });

  final String F3tQdus72ZvZq1uM;
  final String c1dQdWQzAR6zeSfma;
  final String YjHeuERpQWrW2rzh;
  final String lDHPaouixbyR94Ru;

  factory MLWrwTEsH7mWmgZPCommt.fromMap(Map<String, dynamic> map) {
    return MLWrwTEsH7mWmgZPCommt(
      F3tQdus72ZvZq1uM: map['dynamicId'] as String,
      c1dQdWQzAR6zeSfma: map['commentId'] as String,
      YjHeuERpQWrW2rzh: map['userId'] as String,
      lDHPaouixbyR94Ru: map['content'] as String? ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'dynamicId': F3tQdus72ZvZq1uM,
      'commentId': c1dQdWQzAR6zeSfma,
      'userId': YjHeuERpQWrW2rzh,
      'content': lDHPaouixbyR94Ru,
    };
  }
}

