class ZGQ5e04h9a1NvSNwChatBotDesc {
  ZGQ5e04h9a1NvSNwChatBotDesc({
    required this.PQaQU4GP85tmnsdo,
    required this.c6AptguIFzs8K4jUV,
    required this.p5rtllefnSsDnU72Z,
  });

  final String PQaQU4GP85tmnsdo;
  final String c6AptguIFzs8K4jUV;
  final int p5rtllefnSsDnU72Z;

  factory ZGQ5e04h9a1NvSNwChatBotDesc.fromMap(Map<String, dynamic> map) {
    return ZGQ5e04h9a1NvSNwChatBotDesc(
      PQaQU4GP85tmnsdo: map['title'] as String? ?? '',
      c6AptguIFzs8K4jUV: map['content'] as String? ?? '',
      p5rtllefnSsDnU72Z: (map['points'] ?? 0) as int,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': PQaQU4GP85tmnsdo,
      'content': c6AptguIFzs8K4jUV,
      'points': p5rtllefnSsDnU72Z,
    };
  }
}

