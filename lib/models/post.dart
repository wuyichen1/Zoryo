class Post {
  Post({
    required this.dynamicId,
    required this.userId,
    required this.dynamicType,
    required this.dynamicDesc,
    required this.dynamicTitleType,
    required this.dynamicPic,
    required this.dynamicVideo,
    required this.dynamicLikeCount,
    required this.dynamicCommentCount,
  });

  final String dynamicId;
  final String userId;
  final int dynamicType; // 0--图片帖子，1--视频帖子
  final String dynamicDesc;
  final int dynamicTitleType; // 图片帖子类型下标
  final List<String> dynamicPic; // 图片地址List
  final String dynamicVideo; // 视频地址
  final int dynamicLikeCount;
  final int dynamicCommentCount;

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      dynamicId: map['dynamicId'] as String,
      userId: map['userId'] as String,
      dynamicType: (map['dynamicType'] ?? 0) as int,
      dynamicDesc: map['dynamicDesc'] as String? ?? '',
      dynamicTitleType: (map['dynamicTitleType'] ?? 0) as int,
      dynamicPic: (map['dynamicPic'] as List<dynamic>? ?? []).map((e) => e.toString()).toList(),
      dynamicVideo: map['dynamicVideo'] as String? ?? '',
      dynamicLikeCount: (map['dynamicLikeCount'] ?? 0) as int,
      dynamicCommentCount: (map['dynamicCommentCount'] ?? 0) as int,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'dynamicId': dynamicId,
      'userId': userId,
      'dynamicType': dynamicType,
      'dynamicDesc': dynamicDesc,
      'dynamicTitleType': dynamicTitleType,
      'dynamicPic': dynamicPic,
      'dynamicVideo': dynamicVideo,
      'dynamicLikeCount': dynamicLikeCount,
      'dynamicCommentCount': dynamicCommentCount,
    };
  }

  // Helper getters for backward compatibility
  String get id => dynamicId;
  bool get isVideo => dynamicType == 1;
  String get description => dynamicDesc;
  int get likes => dynamicLikeCount;
  int get comments => dynamicCommentCount;
  
  // Image field - for image posts (dynamicType == 0)
  String get imageUrl => dynamicPic.isNotEmpty ? dynamicPic.first : '';
  List<String> get imageUrls => dynamicPic;
  
  // Video field - for video posts (dynamicType == 1)
  String get videoUrl => dynamicVideo;
  
  // // Deprecated: Use imageUrl or videoUrl instead based on dynamicType
  // @Deprecated('Use imageUrl for image posts or videoUrl for video posts')
  // String get mediaUrl => isVideo ? dynamicVideo : (dynamicPic.isNotEmpty ? dynamicPic.first : '');
  
  String get category {
    // Map dynamicTitleType to category names
    const categories = ['Daily Glow', 'Office Polished', 'Travel Vibe', 'Party Shine'];
    return dynamicTitleType < categories.length ? categories[dynamicTitleType] : 'ALL';
  }
  String get title => dynamicDesc; // Use description as title for now
}
