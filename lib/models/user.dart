class User {
  User({
    required this.userId,
    required this.email,
    required this.password,
    required this.avator,
    required this.name,
    required this.about,
    required this.coins,
    required this.follow,
    required this.fans,
    required this.blockList,
    required this.picPostLikeIds,
    required this.videoPostLikeIds,
  });

  final String userId;
  final String email;
  final String password;
  final String avator;
  final String name;
  final String about;
  final int coins;
  final List<String> follow;
  final List<String> fans;
  final List<String> blockList;
  final List<String> picPostLikeIds;
  final List<String> videoPostLikeIds;

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      userId: map['userId'] as String,
      email: map['email'] as String? ?? '',
      password: map['password'] as String? ?? '',
      avator: map['avator'] as String? ?? '',
      name: map['name'] as String? ?? '',
      about: map['about'] as String? ?? '',
      coins: (map['coins'] ?? 0) as int,
      follow: (map['follow'] as List<dynamic>? ?? []).map((e) => e.toString()).toList(),
      fans: (map['fans'] as List<dynamic>? ?? []).map((e) => e.toString()).toList(),
      blockList: (map['blockList'] as List<dynamic>? ?? []).map((e) => e.toString()).toList(),
      picPostLikeIds: (map['picPostLikeIds'] as List<dynamic>? ?? []).map((e) => e.toString()).toList(),
      videoPostLikeIds: (map['videoPostLikeIds'] as List<dynamic>? ?? []).map((e) => e.toString()).toList(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'email': email,
      'password': password,
      'avator': avator,
      'name': name,
      'about': about,
      'coins': coins,
      'follow': follow,
      'fans': fans,
      'blockList': blockList,
      'picPostLikeIds': picPostLikeIds,
      'videoPostLikeIds': videoPostLikeIds,
    };
  }

  User copyWith({
    String? email,
    String? password,
    String? avator,
    String? name,
    String? about,
    int? coins,
    List<String>? follow,
    List<String>? fans,
    List<String>? blockList,
    List<String>? picPostLikeIds,
    List<String>? videoPostLikeIds,
  }) {
    return User(
      userId: userId,
      email: email ?? this.email,
      password: password ?? this.password,
      avator: avator ?? this.avator,
      name: name ?? this.name,
      about: about ?? this.about,
      coins: coins ?? this.coins,
      follow: follow ?? this.follow,
      fans: fans ?? this.fans,
      blockList: blockList ?? this.blockList,
      picPostLikeIds: picPostLikeIds ?? this.picPostLikeIds,
      videoPostLikeIds: videoPostLikeIds ?? this.videoPostLikeIds,
    );
  }

  // Helper getters for backward compatibility
  String get id => userId;
  String get avatar => avator;
  String get bio => about;
  int get balance => coins;
  int get works => picPostLikeIds.length + videoPostLikeIds.length;
  int get fansCount => fans.length;
  int get followsCount => follow.length;
}
