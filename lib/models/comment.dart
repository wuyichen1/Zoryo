class Comment {
  Comment({
    required this.dynamicId,
    required this.commentId,
    required this.userId,
    required this.content,
  });

  final String dynamicId; // 评论ID
  final String commentId; // 发布评论相关的帖子ID
  final String userId; // 发布评论用户ID
  final String content; // 评论文案

  factory Comment.fromMap(Map<String, dynamic> map) {
    return Comment(
      dynamicId: map['dynamicId'] as String,
      commentId: map['commentId'] as String,
      userId: map['userId'] as String,
      content: map['content'] as String? ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'dynamicId': dynamicId,
      'commentId': commentId,
      'userId': userId,
      'content': content,
    };
  }
}

