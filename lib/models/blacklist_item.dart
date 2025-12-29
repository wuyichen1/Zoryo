class BlacklistItem {
  BlacklistItem({
    required this.userId,
  });

  final String userId; // 黑名单用户ID

  factory BlacklistItem.fromMap(Map<String, dynamic> map) {
    return BlacklistItem(
      userId: map['userId'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
    };
  }
}
