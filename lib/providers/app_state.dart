import 'dart:math';

import 'package:flutter/foundation.dart';

import '../core/storage/local_storage.dart';
import '../models/blacklist_item.dart';
import '../models/chatbot_desc.dart';
import '../models/comment.dart';
import '../models/diamond_pack.dart';
import '../models/message_thread.dart';
import '../models/post.dart';
import '../models/publish_option.dart';
import '../models/report_item.dart';
import '../models/user.dart';

class AppState extends ChangeNotifier {
  AppState(this.storage);
  final LocalStorageService storage;

  bool initialized = false;
  bool eulaAgreed = false;
  bool isLoggedIn = false;
  String? savedRouteLocation;
  late User currentUser;
  List<User> users = [];
  List<Post> posts = [];
  List<ChatRoom> chatRooms = [];
  List<ChatMessage> messages = [];
  List<Comment> comments = [];
  List<BlacklistItem> blacklist = [];
  List<DiamondPack> diamondPacks = [];
  List<ReportItem> reportOptions = [];
  List<PublishOption> publishOptions = [];
  ChatBotDesc? chatBotDesc;

  Future<void> bootstrap() async {
    final data = await storage.load();

    // Load EULA and login status
    eulaAgreed = await storage.getEulaAgreed();
    isLoggedIn = await storage.getIsLoggedIn();

    // Load saved route location
    savedRouteLocation = await storage.getCurrentRouteLocation();

    // Load user list
    users = (data['userListJson'] as List<dynamic>? ?? [])
        .map((e) => User.fromMap(e as Map<String, dynamic>))
        .toList();

    // If logged in, load current user
    if (isLoggedIn) {
      final loggedInUserId = await storage.getCurrentLoggedInUserId();
      if (loggedInUserId != null) {
        final foundUser = users.firstWhere(
          (u) => u.userId == loggedInUserId,
          orElse: () => _createDefaultUser(),
        );
        currentUser = foundUser;
      } else {
        // Fallback: use userJson or first user
        if (data['userJson'] != null) {
          currentUser = User.fromMap(data['userJson'] as Map<String, dynamic>);
        } else {
          currentUser = users.isNotEmpty ? users.first : _createDefaultUser();
        }
      }
    } else {
      // Not logged in, create default user for initialization
      currentUser = _createDefaultUser();
    }

    // Load user list
    users = (data['userListJson'] as List<dynamic>? ?? [])
        .map((e) => User.fromMap(e as Map<String, dynamic>))
        .toList();

    // Load posts (dynamicJson)
    posts = (data['dynamicJson'] as List<dynamic>? ?? [])
        .map((e) => Post.fromMap(e as Map<String, dynamic>))
        .toList();

    // Load chat rooms (chatListJson)
    chatRooms = (data['chatListJson'] as List<dynamic>? ?? [])
        .map((e) => ChatRoom.fromMap(e as Map<String, dynamic>))
        .toList();

    // Load messages (messageListJson)
    messages = (data['messageListJson'] as List<dynamic>? ?? [])
        .map((e) => ChatMessage.fromMap(e as Map<String, dynamic>))
        .toList();

    // Load comments (commentJson)
    comments = (data['commentJson'] as List<dynamic>? ?? [])
        .map((e) => Comment.fromMap(e as Map<String, dynamic>))
        .toList();

    // Load blacklist (blockList)
    blacklist = (data['blockList'] as List<dynamic>? ?? [])
        .map((e) => BlacklistItem.fromMap(e as Map<String, dynamic>))
        .toList();

    // Load diamond packs (coinListJson)
    diamondPacks = (data['coinListJson'] as List<dynamic>? ?? [])
        .map((e) => DiamondPack.fromMap(e as Map<String, dynamic>))
        .toList();

    // Load report options (reportListJson)
    reportOptions = (data['reportListJson'] as List<dynamic>? ?? [])
        .map((e) => ReportItem.fromMap(e as Map<String, dynamic>))
        .toList();

    // Load publish options (publishImageListJson)
    publishOptions = (data['publishImageListJson'] as List<dynamic>? ?? [])
        .map((e) => PublishOption.fromMap(e as Map<String, dynamic>))
        .toList();

    // Load chatbot description (chatBotDesc)
    if (data['chatBotDesc'] != null) {
      chatBotDesc =
          ChatBotDesc.fromMap(data['chatBotDesc'] as Map<String, dynamic>);
    }

    initialized = true;
    notifyListeners();
  }

  User _createDefaultUser() {
    return User(
      userId: 'u1',
      email: '',
      password: '',
      avator: '',
      name: 'User',
      about: '',
      coins: 0,
      follow: [],
      fans: [],
      blockList: [],
      picPostLikeIds: [],
      videoPostLikeIds: [],
    );
  }

  Future<void> _persist() async {
    final data = {
      'currentUserId': currentUser.userId,
      'userJson': currentUser.toMap(),
      'userListJson': users.map((e) => e.toMap()).toList(),
      'dynamicJson': posts.map((e) => e.toMap()).toList(),
      'chatListJson': chatRooms.map((e) => e.toMap()).toList(),
      'messageListJson': messages.map((e) => e.toMap()).toList(),
      'commentJson': comments.map((e) => e.toMap()).toList(),
      'blockList': blacklist.map((e) => e.toMap()).toList(),
      'coinListJson': diamondPacks.map((e) => e.toMap()).toList(),
      'reportListJson': reportOptions.map((e) => e.toMap()).toList(),
      'publishImageListJson': publishOptions.map((e) => e.toMap()).toList(),
      if (chatBotDesc != null) 'chatBotDesc': chatBotDesc!.toMap(),
    };
    await storage.save(data);
  }

  User userById(String id) => users.firstWhere(
        (u) => u.userId == id,
        orElse: () => currentUser,
      );

  // 检查用户是否在blockList中
  bool _isUserBlocked(String userId) {
    return currentUser.blockList.contains(userId);
  }

  // 过滤帖子列表，排除blockList中用户的帖子
  List<Post> _filterBlockedPosts(List<Post> postList) {
    return postList.where((p) => !_isUserBlocked(p.userId)).toList();
  }

  // 过滤评论列表，排除blockList中用户的评论
  List<Comment> _filterBlockedComments(List<Comment> commentList) {
    return commentList.where((c) => !_isUserBlocked(c.userId)).toList();
  }

  // 过滤消息列表，排除blockList中用户的消息
  List<ChatMessage> _filterBlockedMessages(List<ChatMessage> messageList) {
    return messageList.where((m) => !_isUserBlocked(m.userId)).toList();
  }

  // 过滤聊天室列表，排除包含blockList中用户的聊天室
  List<ChatRoom> _filterBlockedChatRooms(List<ChatRoom> chatRoomList) {
    return chatRoomList.where((room) {
      // 检查聊天室中是否有被屏蔽的用户（排除当前用户自己）
      return !room.chatUserIds.any((userId) =>
          userId != currentUser.userId && _isUserBlocked(userId));
    }).toList();
  }

  List<Post> postsByCategory(String category, {bool? imageOnly}) {
    // 首先过滤掉blockList中用户的帖子
    var filtered = _filterBlockedPosts(posts);

    // Filter by type: imageOnly = true for images (dynamicType == 0), false for videos (dynamicType == 1)
    if (imageOnly != null) {
      filtered = filtered
          .where((p) => imageOnly ? p.dynamicType == 0 : p.dynamicType == 1)
          .toList();
    }

    // Filter by category
    if (category == 'ALL') return filtered;
    return filtered.where((p) => p.category == category).toList();
  }

  // 获取过滤后的所有帖子（排除blockList中用户的帖子）
  List<Post> get filteredPosts => _filterBlockedPosts(posts);

  List<Post> userPosts(String userId) {
    // 如果查看的是自己的账户，不过滤；否则过滤掉blockList中的用户
    if (userId == currentUser.userId) {
      return posts.where((p) => p.userId == userId).toList();
    }
    return _filterBlockedPosts(
        posts.where((p) => p.userId == userId).toList());
  }

  List<Comment> postComments(String postId) {
    final filtered = comments.where((c) => c.commentId == postId).toList();
    return _filterBlockedComments(filtered);
  }

  List<ChatMessage> chatMessages(String chatId) {
    final filtered = messages.where((m) => m.chatId == chatId).toList();
    return _filterBlockedMessages(filtered);
  }

  // 获取过滤后的聊天室列表（排除包含blockList中用户的聊天室）
  List<ChatRoom> get filteredChatRooms =>
      _filterBlockedChatRooms(chatRooms);

  ChatRoom? getChatRoomByPeerId(String peerId) {
    // 如果对方在blockList中，不应该创建或返回聊天室
    if (_isUserBlocked(peerId)) {
      return null;
    }
    return chatRooms.firstWhere(
      (c) =>
          c.chatUserIds.contains(currentUser.userId) &&
          c.chatUserIds.contains(peerId),
      orElse: () => ChatRoom(
        chatId: 'c${Random().nextInt(99999)}',
        chatUserIds: [currentUser.userId, peerId],
        lastSendContent: '',
        lastSendTime:
            DateTime.now().toString().substring(0, 19).replaceAll('T', ' '),
        unreadMsgCount: 0,
        lastSendUserId: '',
      ),
    );
  }

  void addToBlacklist(String userId) {
    if (blacklist.any((b) => b.userId == userId)) return;
    blacklist.add(BlacklistItem(userId: userId));
    // Also update current user's blockList
    final idx = users.indexWhere((u) => u.userId == currentUser.userId);
    if (idx != -1) {
      final updated = currentUser.copyWith(
        blockList: [...currentUser.blockList, userId],
      );
      users[idx] = updated;
      currentUser = updated;
    }
    _persist();
    notifyListeners();
  }

  void removeFromBlacklist(String userId) {
    blacklist.removeWhere((b) => b.userId == userId);
    // Also update current user's blockList
    final idx = users.indexWhere((u) => u.userId == currentUser.userId);
    if (idx != -1) {
      final updated = currentUser.copyWith(
        blockList: currentUser.blockList.where((id) => id != userId).toList(),
      );
      users[idx] = updated;
      currentUser = updated;
    }
    _persist();
    notifyListeners();
  }

  void updateProfile({required String name, required String about}) {
    final idx = users.indexWhere((u) => u.userId == currentUser.userId);
    if (idx == -1) return;
    final updated = currentUser.copyWith(name: name, about: about);
    users[idx] = updated;
    currentUser = updated;
    _persist();
    notifyListeners();
  }

  void addPost({
    required String description,
    required int titleType,
    required bool isVideo,
    required List<String> pics,
    required String video,
  }) {
    final id = 'p${Random().nextInt(99999)}';
    final post = Post(
      dynamicId: id,
      userId: currentUser.userId,
      dynamicType: isVideo ? 1 : 0,
      dynamicDesc: description,
      dynamicTitleType: titleType,
      dynamicPic: pics,
      dynamicVideo: video,
      dynamicLikeCount: 0,
      dynamicCommentCount: 0,
    );
    posts.insert(0, post);
    _persist();
    notifyListeners();
  }

  void addComment(String postId, String content) {
    final id = 'c${Random().nextInt(99999)}';
    final comment = Comment(
      dynamicId: id,
      commentId: postId,
      userId: currentUser.userId,
      content: content,
    );
    comments.add(comment);

    // Update post comment count
    final postIdx = posts.indexWhere((p) => p.dynamicId == postId);
    if (postIdx != -1) {
      final post = posts[postIdx];
      posts[postIdx] = Post(
        dynamicId: post.dynamicId,
        userId: post.userId,
        dynamicType: post.dynamicType,
        dynamicDesc: post.dynamicDesc,
        dynamicTitleType: post.dynamicTitleType,
        dynamicPic: post.dynamicPic,
        dynamicVideo: post.dynamicVideo,
        dynamicLikeCount: post.dynamicLikeCount,
        dynamicCommentCount: post.dynamicCommentCount + 1,
      );
    }
    _persist();
    notifyListeners();
  }

  void sendMessage(String chatId, String content, {String? picUrl}) {
    final id = 'm${Random().nextInt(99999)}';
    final now = DateTime.now();
    final timeStr =
        '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')} ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}';

    final message = ChatMessage(
      msgId: id,
      chatId: chatId,
      userId: currentUser.userId,
      sendContent: content,
      sendPicUrl: picUrl ?? '',
      sendTime: timeStr,
    );
    messages.add(message);

    // Update chat room
    final roomIdx = chatRooms.indexWhere((r) => r.chatId == chatId);
    if (roomIdx != -1) {
      final room = chatRooms[roomIdx];
      chatRooms[roomIdx] = ChatRoom(
        chatId: room.chatId,
        chatUserIds: room.chatUserIds,
        lastSendContent: content,
        lastSendTime: timeStr,
        unreadMsgCount: room.unreadMsgCount,
        lastSendUserId: currentUser.userId,
      );
    }
    _persist();
    notifyListeners();
  }

  void purchasePack(DiamondPack pack) {
    final idx = users.indexWhere((u) => u.userId == currentUser.userId);
    if (idx == -1) return;
    final updated = currentUser.copyWith(coins: currentUser.coins + pack.cions);
    users[idx] = updated;
    currentUser = updated;
    _persist();
    notifyListeners();
  }

  void spendDiamond(int amount) {
    final idx = users.indexWhere((u) => u.userId == currentUser.userId);
    if (idx == -1) return;
    final updated = currentUser.copyWith(
      coins: (currentUser.coins - amount).clamp(0, 999999),
    );
    users[idx] = updated;
    currentUser = updated;
    _persist();
    notifyListeners();
  }

  void togglePostLike(String postId, bool isVideo) {
    final likedIds =
        isVideo ? currentUser.videoPostLikeIds : currentUser.picPostLikeIds;
    final isLiked = likedIds.contains(postId);

    final idx = users.indexWhere((u) => u.userId == currentUser.userId);
    if (idx == -1) return;

    final newLikedIds = isLiked
        ? likedIds.where((id) => id != postId).toList()
        : [...likedIds, postId];

    final updated = isVideo
        ? currentUser.copyWith(videoPostLikeIds: newLikedIds)
        : currentUser.copyWith(picPostLikeIds: newLikedIds);

    users[idx] = updated;
    currentUser = updated;

    // Update post like count
    final postIdx = posts.indexWhere((p) => p.dynamicId == postId);
    if (postIdx != -1) {
      final p = posts[postIdx];
      posts[postIdx] = Post(
        dynamicId: p.dynamicId,
        userId: p.userId,
        dynamicType: p.dynamicType,
        dynamicDesc: p.dynamicDesc,
        dynamicTitleType: p.dynamicTitleType,
        dynamicPic: p.dynamicPic,
        dynamicVideo: p.dynamicVideo,
        dynamicLikeCount:
            isLiked ? p.dynamicLikeCount - 1 : p.dynamicLikeCount + 1,
        dynamicCommentCount: p.dynamicCommentCount,
      );
    }
    _persist();
    notifyListeners();
  }

  // EULA methods
  Future<void> setEulaAgreed(bool agreed) async {
    eulaAgreed = agreed;
    await storage.setEulaAgreed(agreed);
    notifyListeners();
  }

  // Login methods
  Future<void> loginWithEmail(String email, String password) async {
    // Find user by email and password
    final user = users.firstWhere(
      (u) => u.email == email && u.password == password,
      orElse: () => _createDefaultUser(),
    );

    if (user.userId != 'u1' ||
        users.any((u) => u.email == email && u.password == password)) {
      currentUser = user;
      isLoggedIn = true;
      await storage.setIsLoggedIn(true);
      await storage.setCurrentLoggedInUserId(user.userId);
      notifyListeners();
    }
  }

  Future<void> signupWithEmail(String email, String password) async {
    // Check if email already exists
    if (users.any((u) => u.email == email)) {
      return; // Email already exists
    }

    // Create new user
    final newUserId = 'u_${DateTime.now().millisecondsSinceEpoch}';
    final newUser = User(
      userId: newUserId,
      email: email,
      password: password,
      avator: 'assets/images/zoryo_logo.png',
      name: email.split('@').first,
      about: '',
      coins: 0,
      follow: [],
      fans: [],
      blockList: [],
      picPostLikeIds: [],
      videoPostLikeIds: [],
    );

    users.add(newUser);
    currentUser = newUser;
    isLoggedIn = true;
    await storage.setIsLoggedIn(true);
    await storage.setCurrentLoggedInUserId(newUser.userId);
    await _persist();
    notifyListeners();
  }

  Future<void> quickLogin() async {
    final quickLoginUserId = await storage.getQuickLoginUserId();

    if (quickLoginUserId != null) {
      // Check if quick login user still exists
      final user = users.firstWhere(
        (u) => u.userId == quickLoginUserId,
        orElse: () => _createDefaultUser(),
      );

      if (user.userId == quickLoginUserId) {
        // User exists, login
        currentUser = user;
        isLoggedIn = true;
        await storage.setIsLoggedIn(true);
        await storage.setCurrentLoggedInUserId(user.userId);
        notifyListeners();
        return;
      } else {
        // User was deleted, clear quick login user ID
        await storage.setQuickLoginUserId(null);
      }
    }

    // First time quick login or user was deleted, create new user
    final newUserId = 'u_quick_${Random().nextInt(999999)}';
    final newUser = User(
      userId: newUserId,
      email: 'quick_$newUserId@quick.com',
      password: '',
      avator: 'assets/images/zoryo_logo.png',
      name: 'User ${newUserId.substring(newUserId.length - 4)}',
      about: 'Quick login user',
      coins: 0,
      follow: [],
      fans: [],
      blockList: [],
      picPostLikeIds: [],
      videoPostLikeIds: [],
    );

    users.add(newUser);
    currentUser = newUser;
    isLoggedIn = true;
    await storage.setIsLoggedIn(true);
    await storage.setCurrentLoggedInUserId(newUser.userId);
    await storage.setQuickLoginUserId(newUser.userId);
    await _persist();
    notifyListeners();
  }

  Future<void> logout() async {
    final wasQuickLogin =
        await storage.getQuickLoginUserId() == currentUser.userId;

    isLoggedIn = false;
    await storage.setIsLoggedIn(false);
    await storage.setCurrentLoggedInUserId(null);

    // Only clear quick login user ID if it was a quick login user
    // Regular email login logout doesn't affect quick login
    if (wasQuickLogin) {
      // Don't clear quick login user ID, keep it for next quick login
    }

    currentUser = _createDefaultUser();
    notifyListeners();
  }

  // Route location management
  Future<void> saveRouteLocation(String location) async {
    savedRouteLocation = location;
    await storage.setCurrentRouteLocation(location);
  }

  // Update methods for H5 callbacks
  Future<void> updateUsers(List<dynamic> userListData) async {
    try {
      users = userListData
          .map((e) => User.fromMap(e as Map<String, dynamic>))
          .toList();

      // Re-filter current user information
      if (isLoggedIn) {
        final loggedInUserId = await storage.getCurrentLoggedInUserId();
        if (loggedInUserId != null) {
          final foundUser = users.firstWhere(
            (u) => u.userId == loggedInUserId,
            orElse: () => _createDefaultUser(),
          );
          currentUser = foundUser;
        }
      }

      await _persist();
      notifyListeners();
    } catch (e) {
      debugPrint('Error updating users: $e');
    }
  }

  Future<void> updatePosts(List<dynamic> postListData) async {
    try {
      posts = postListData
          .map((e) => Post.fromMap(e as Map<String, dynamic>))
          .toList();
      await _persist();
      notifyListeners();
    } catch (e) {
      debugPrint('Error updating posts: $e');
    }
  }

  Future<void> updateComments(List<dynamic> commentListData) async {
    try {
      comments = commentListData
          .map((e) => Comment.fromMap(e as Map<String, dynamic>))
          .toList();
      await _persist();
      notifyListeners();
    } catch (e) {
      debugPrint('Error updating comments: $e');
    }
  }

  Future<void> updateChatRooms(List<dynamic> chatListData) async {
    try {
      chatRooms = chatListData
          .map((e) => ChatRoom.fromMap(e as Map<String, dynamic>))
          .toList();
      await _persist();
      notifyListeners();
    } catch (e) {
      debugPrint('Error updating chat rooms: $e');
    }
  }

  Future<void> updateMessages(List<dynamic> messageListData) async {
    try {
      messages = messageListData
          .map((e) => ChatMessage.fromMap(e as Map<String, dynamic>))
          .toList();
      await _persist();
      notifyListeners();
    } catch (e) {
      debugPrint('Error updating messages: $e');
    }
  }

  Future<void> deleteAccount() async {
    try {
      final userIdToDelete = currentUser.userId;

      // Remove user from users list
      users.removeWhere((u) => u.userId == userIdToDelete);

      // Remove user's posts
      posts.removeWhere((p) => p.userId == userIdToDelete);

      // Remove user's comments
      comments.removeWhere((c) => c.userId == userIdToDelete);

      // Remove chat rooms containing this user
      chatRooms.removeWhere((c) => c.chatUserIds.contains(userIdToDelete));

      // Remove messages from this user
      messages.removeWhere((m) => m.userId == userIdToDelete);

      // Logout
      isLoggedIn = false;
      await storage.setIsLoggedIn(false);
      await storage.setCurrentLoggedInUserId(null);
      await storage.setQuickLoginUserId(null);

      // Set to default user
      currentUser = _createDefaultUser();

      await _persist();
      notifyListeners();
    } catch (e) {
      debugPrint('Error deleting account: $e');
    }
  }

  Future<void> handleRecharge(String paymentId) async {
    // Find the diamond pack by key (paymentId)
    final pack = diamondPacks.firstWhere(
      (p) => p.key == paymentId,
      orElse: () => diamondPacks.isNotEmpty ? diamondPacks.first : DiamondPack(key: '', cions: 0, meney: 0),
    );

    if (pack.key.isNotEmpty) {
      purchasePack(pack);
    }
  }
}
