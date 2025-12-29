class DiamondPack {
  DiamondPack({
    required this.key,
    required this.cions,
    required this.meney,
  });

  final String key; // 金币ID key
  final int cions; // 金币数量（注意：规则中拼写为cions）
  final double meney; // 金币金额（注意：规则中拼写为meney）

  factory DiamondPack.fromMap(Map<String, dynamic> map) {
    return DiamondPack(
      key: map['key'] as String,
      cions: (map['cions'] ?? 0) as int,
      meney: (map['meney'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'key': key,
      'cions': cions,
      'meney': meney,
    };
  }

  // Helper getters for backward compatibility
  String get id => key;
  int get diamonds => cions;
  double get price => meney;
}
