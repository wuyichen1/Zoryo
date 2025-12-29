class ChatBotDesc {
  ChatBotDesc({
    required this.title,
    required this.content,
    required this.points,
  });

  final String title; // ai标题文案
  final String content; // ai内容文案
  final int points; // ai付费金额

  factory ChatBotDesc.fromMap(Map<String, dynamic> map) {
    return ChatBotDesc(
      title: map['title'] as String? ?? '',
      content: map['content'] as String? ?? '',
      points: (map['points'] ?? 0) as int,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'content': content,
      'points': points,
    };
  }
}

