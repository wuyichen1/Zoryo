import 'dart:math';

import 'package:flutter/foundation.dart';

import '../core/storage/local_storage.dart';
import '../models/blaitem_5aqarrQqkyRukG3S.dart';
import '../models/zGQ5e04h9a1NvSNwChatBotDesc_chatbotdesc.dart';
import '../models/mLWrwTEsH7mWmgZP_Commt.dart';
import '../models/bJpjHVrAqvtNbCtL_diapack.dart';
import '../models/pQ3j6P8wVMgm0na7_msg.dart';
import '../models/tdpFegrWPc3sjlaQ_post.dart';
import '../models/p8JqmePjljoN7whd3_puboption.dart';
import '../models/vbiefCaW4r24pJKf_repitem.dart';
import '../models/u2749HToRfgbLVPrM_user.dart';

class AppState extends ChangeNotifier {
  AppState(this.storage);
  final LocalStorageService storage;

  bool initialized = false;
  bool eulaAgreed = false;
  bool isLoggedIn = false;
  String? savedRouteLocation;
  late U2749HToRfgbLVPrMUser currentUser;
  List<U2749HToRfgbLVPrMUser> users = [];
  List<TdpFegrWPc3sjlaQPost> posts = [];
  List<RD5sxRcE0eOB932bFliao> chatRooms = [];
  List<NakOK5d2GdM3yvGWMsg> messages = [];
  List<MLWrwTEsH7mWmgZPCommt> comments = [];
  List<B5aqarrQqkyRukG3S> blacklist = [];
  List<BJpjHVrAqvtNbCtLDiapack> diamondPacks = [];
  List<VbiefCaW4r24pJKfReportItem> reportOptions = [];
  List<P8JqmePjljoN7whd3PublishOption> publishOptions = [];
  ZGQ5e04h9a1NvSNwChatBotDesc? chatBotDesc;

  Future<void> bootstrap() async {
    final data = await storage.load();

    // Load EULA and login status
    eulaAgreed = await storage.getEulaAgreed();
    isLoggedIn = await storage.getIsLoggedIn();

    // Load saved route location
    savedRouteLocation = await storage.getCurrentRouteLocation();

    // Load user list
    users = (data['userListJson'] as List<dynamic>? ?? [])
        .map((e) => U2749HToRfgbLVPrMUser.fromMap(e as Map<String, dynamic>))
        .toList();

    // If logged in, load current user
    if (isLoggedIn) {
      final loggedInUserId = await storage.getCurrentLoggedInUserId();
      if (loggedInUserId != null) {
        final foundUser = users.firstWhere(
          (u) => u.fkloYnZiRmbRtJ00 == loggedInUserId,
          orElse: () => _createDefaultUser(),
        );
        currentUser = foundUser;
      } else {
        // Fallback: use userJson or first user
        if (data['userJson'] != null) {
          currentUser = U2749HToRfgbLVPrMUser.fromMap(data['userJson'] as Map<String, dynamic>);
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
        .map((e) => U2749HToRfgbLVPrMUser.fromMap(e as Map<String, dynamic>))
        .toList();

    // Load posts (dynamicJson)
    posts = (data['dynamicJson'] as List<dynamic>? ?? [])
        .map((e) => TdpFegrWPc3sjlaQPost.fromMap(e as Map<String, dynamic>))
        .toList();

    // Load chat rooms (chatListJson)
    chatRooms = (data['chatListJson'] as List<dynamic>? ?? [])
        .map((e) => RD5sxRcE0eOB932bFliao.fromMap(e as Map<String, dynamic>))
        .toList();

    // Load messages (messageListJson)
    messages = (data['messageListJson'] as List<dynamic>? ?? [])
        .map((e) => NakOK5d2GdM3yvGWMsg.fromMap(e as Map<String, dynamic>))
        .toList();

    // Load comments (commentJson)
    comments = (data['commentJson'] as List<dynamic>? ?? [])
        .map((e) => MLWrwTEsH7mWmgZPCommt.fromMap(e as Map<String, dynamic>))
        .toList();

    // Load blacklist (blockList)
    blacklist = (data['blockList'] as List<dynamic>? ?? [])
        .map((e) => B5aqarrQqkyRukG3S.fromMap(e as Map<String, dynamic>))
        .toList();

    // Load diamond packs (coinListJson)
    diamondPacks = (data['coinListJson'] as List<dynamic>? ?? [])
        .map((e) => BJpjHVrAqvtNbCtLDiapack.fromMap(e as Map<String, dynamic>))
        .toList();

    // Load report options (reportListJson)
    reportOptions = (data['reportListJson'] as List<dynamic>? ?? [])
        .map((e) => VbiefCaW4r24pJKfReportItem.fromMap(e as Map<String, dynamic>))
        .toList();

    // Load publish options (publishImageListJson)
    publishOptions = (data['publishImageListJson'] as List<dynamic>? ?? [])
        .map((e) => P8JqmePjljoN7whd3PublishOption.fromMap(e as Map<String, dynamic>))
        .toList();

    // Load chatbot description (chatBotDesc)
    if (data['chatBotDesc'] != null) {
      chatBotDesc =
          ZGQ5e04h9a1NvSNwChatBotDesc.fromMap(data['chatBotDesc'] as Map<String, dynamic>);
    }

    initialized = true;
    notifyListeners();
  }

  U2749HToRfgbLVPrMUser _createDefaultUser() {
    return U2749HToRfgbLVPrMUser(
      fkloYnZiRmbRtJ00: 'u1',
      UH6Wfi7WIQ8UtXwg: '',
      fyVNw5c7FRNN1Eui: '',
      RmXHAp70ovHNBN4U: '',
      AWWxvC6FbYICMs9P: 'U2749HToRfgbLVPrMUser',
      Sfy5ovPIlV0PS5C2: '',
      IlyH5k6lZ7fVAHfQ: 0,
      f9FuGnEvLPZO4IWMA: [],
      s9aX89KJIs05vih3O: [],
      gJSvmz87tX112yqC: [],
      KYDuo9abCwLnI6Hs: [],
      IibbF2RfvAxYkcQo: [],
    );
  }

  Future<void> _persist() async {
    final data = {
      'currentUserId': currentUser.fkloYnZiRmbRtJ00,
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

  U2749HToRfgbLVPrMUser userById(String id) => users.firstWhere(
        (u) => u.fkloYnZiRmbRtJ00 == id,
        orElse: () => currentUser,
      );

  // 检查用户是否在blockList中
  bool _isUserBlocked(String userId) {
    return currentUser.gJSvmz87tX112yqC.contains(userId);
  }

  // 过滤帖子列表，排除blockList中用户的帖子
  List<TdpFegrWPc3sjlaQPost> _filterBlockedPosts(List<TdpFegrWPc3sjlaQPost> postList) {
    return postList.where((p) => !_isUserBlocked(p.nlPxQBFl8qKNMmCt)).toList();
  }

  // 过滤聊天室列表，排除包含blockList中用户的聊天室
  List<RD5sxRcE0eOB932bFliao> _filterBlockedChatRooms(List<RD5sxRcE0eOB932bFliao> chatRoomList) {
    return chatRoomList.where((room) {
      // 检查聊天室中是否有被屏蔽的用户（排除当前用户自己）
      return !room.R1DrlWpgkNODxc7I.any((userId) =>
          userId != currentUser.fkloYnZiRmbRtJ00 && _isUserBlocked(userId));
    }).toList();
  }

  List<TdpFegrWPc3sjlaQPost> postsByCategory(String category, {bool? imageOnly}) {
    // 首先过滤掉blockList中用户的帖子
    var filtered = _filterBlockedPosts(posts);

    // Filter by type: imageOnly = true for images (dynamicType == 0), false for videos (dynamicType == 1)
    if (imageOnly != null) {
      filtered = filtered
          .where((p) => imageOnly ? p.ocN7sEFUY2qW0Zgr == 0 : p.ocN7sEFUY2qW0Zgr == 1)
          .toList();
    }

    // Filter by category
    if (category == 'ALL') return filtered;
    return filtered.where((p) => p.INWCOb6Ba2b5lyo5 == category).toList();
  }

  // 获取过滤后的所有帖子（排除blockList中用户的帖子）
  List<TdpFegrWPc3sjlaQPost> get filteredPosts => _filterBlockedPosts(posts);

  List<TdpFegrWPc3sjlaQPost> userPosts(String userId) {
    // 如果查看的是自己的账户，不过滤；否则过滤掉blockList中的用户
    if (userId == currentUser.fkloYnZiRmbRtJ00) {
      return posts.where((p) => p.nlPxQBFl8qKNMmCt == userId).toList();
    }
    return _filterBlockedPosts(posts.where((p) => p.nlPxQBFl8qKNMmCt == userId).toList());
  }

  // 获取过滤后的聊天室列表（排除包含blockList中用户的聊天室）
  List<RD5sxRcE0eOB932bFliao> get filteredChatRooms => _filterBlockedChatRooms(chatRooms);

  RD5sxRcE0eOB932bFliao? getChatRoomByPeerId(String peerId) {
    // 如果对方在blockList中，不应该创建或返回聊天室
    if (_isUserBlocked(peerId)) {
      return null;
    }
    return chatRooms.firstWhere(
      (c) =>
          c.R1DrlWpgkNODxc7I.contains(currentUser.fkloYnZiRmbRtJ00) &&
          c.R1DrlWpgkNODxc7I.contains(peerId),
      orElse: () => RD5sxRcE0eOB932bFliao(
        c5sk5SraIUZ47JRVo: 'c${Random().nextInt(99999)}',
        R1DrlWpgkNODxc7I: [currentUser.fkloYnZiRmbRtJ00, peerId],
        l46a7ZEmfVdDDNMKJ: '',
        s1x9rL9Ec2ZKZ7FwP:
            DateTime.now().toString().substring(0, 19).replaceAll('T', ' '),
        uQsMIZjDCeFbmLAP: 0,
        PydKHPzw1brLU4xy: '',
      ),
    );
  }

  void purchasePack(BJpjHVrAqvtNbCtLDiapack pack) {
    final idx = users
        .indexWhere((u) => u.fkloYnZiRmbRtJ00 == currentUser.fkloYnZiRmbRtJ00);
    if (idx == -1) return;
    final updated = currentUser.copyWith(
        IlyH5k6lZ7fVAHfQ: currentUser.IlyH5k6lZ7fVAHfQ + pack.LylHtfRBcO1D0w0M);
    users[idx] = updated;
    currentUser = updated;
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
      (u) => u.UH6Wfi7WIQ8UtXwg == email && u.fyVNw5c7FRNN1Eui == password,
      orElse: () => _createDefaultUser(),
    );

    if (user.fkloYnZiRmbRtJ00 != 'u1' ||
        users.any((u) =>
            u.UH6Wfi7WIQ8UtXwg == email && u.fyVNw5c7FRNN1Eui == password)) {
      currentUser = user;
      isLoggedIn = true;
      await storage.setIsLoggedIn(true);
      await storage.setCurrentLoggedInUserId(user.fkloYnZiRmbRtJ00);
      notifyListeners();
    }
  }

  Future<void> signupWithEmail(String email, String password) async {
    // Check if email already exists
    if (users.any((u) => u.UH6Wfi7WIQ8UtXwg == email)) {
      return; // Email already exists
    }

    // Create new user
    final newUserId = 'u_${DateTime.now().millisecondsSinceEpoch}';
    final newUser = U2749HToRfgbLVPrMUser(
      fkloYnZiRmbRtJ00: newUserId,
      UH6Wfi7WIQ8UtXwg: email,
      fyVNw5c7FRNN1Eui: password,
      RmXHAp70ovHNBN4U: 'assets/images/zoryo_logo.png',
      AWWxvC6FbYICMs9P: email.split('@').first,
      Sfy5ovPIlV0PS5C2: '',
      IlyH5k6lZ7fVAHfQ: 0,
      f9FuGnEvLPZO4IWMA: [],
      s9aX89KJIs05vih3O: [],
      gJSvmz87tX112yqC: [],
      KYDuo9abCwLnI6Hs: [],
      IibbF2RfvAxYkcQo: [],
    );

    users.add(newUser);
    currentUser = newUser;
    isLoggedIn = true;
    await storage.setIsLoggedIn(true);
    await storage.setCurrentLoggedInUserId(newUser.fkloYnZiRmbRtJ00);
    await _persist();
    notifyListeners();
  }

  Future<void> quickLogin() async {
    final quickLoginUserId = await storage.getQuickLoginUserId();

    if (quickLoginUserId != null) {
      // Check if quick login user still exists
      final user = users.firstWhere(
        (u) => u.fkloYnZiRmbRtJ00 == quickLoginUserId,
        orElse: () => _createDefaultUser(),
      );

      if (user.fkloYnZiRmbRtJ00 == quickLoginUserId) {
        // User exists, login
        currentUser = user;
        isLoggedIn = true;
        await storage.setIsLoggedIn(true);
        await storage.setCurrentLoggedInUserId(user.fkloYnZiRmbRtJ00);
        notifyListeners();
        return;
      } else {
        // User was deleted, clear quick login user ID
        await storage.setQuickLoginUserId(null);
      }
    }

    // First time quick login or user was deleted, create new user
    final newUserId = 'u_quick_${Random().nextInt(999999)}';
    final newUser = U2749HToRfgbLVPrMUser(
      fkloYnZiRmbRtJ00: newUserId,
      UH6Wfi7WIQ8UtXwg: 'quick_$newUserId@quick.com',
      fyVNw5c7FRNN1Eui: '',
      RmXHAp70ovHNBN4U: 'assets/images/zoryo_logo.png',
      AWWxvC6FbYICMs9P: 'U2749HToRfgbLVPrMUser ${newUserId.substring(newUserId.length - 4)}',
      Sfy5ovPIlV0PS5C2: 'Quick login user',
      IlyH5k6lZ7fVAHfQ: 0,
      f9FuGnEvLPZO4IWMA: [],
      s9aX89KJIs05vih3O: [],
      gJSvmz87tX112yqC: [],
      KYDuo9abCwLnI6Hs: [],
      IibbF2RfvAxYkcQo: [],
    );

    users.add(newUser);
    currentUser = newUser;
    isLoggedIn = true;
    await storage.setIsLoggedIn(true);
    await storage.setCurrentLoggedInUserId(newUser.fkloYnZiRmbRtJ00);
    await storage.setQuickLoginUserId(newUser.fkloYnZiRmbRtJ00);
    await _persist();
    notifyListeners();
  }

  Future<void> logout() async {
    final wasQuickLogin =
        await storage.getQuickLoginUserId() == currentUser.fkloYnZiRmbRtJ00;

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
          .map((e) => U2749HToRfgbLVPrMUser.fromMap(e as Map<String, dynamic>))
          .toList();

      // Re-filter current user information
      if (isLoggedIn) {
        final loggedInUserId = await storage.getCurrentLoggedInUserId();
        if (loggedInUserId != null) {
          final foundUser = users.firstWhere(
            (u) => u.fkloYnZiRmbRtJ00 == loggedInUserId,
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
          .map((e) => TdpFegrWPc3sjlaQPost.fromMap(e as Map<String, dynamic>))
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
          .map((e) => MLWrwTEsH7mWmgZPCommt.fromMap(e as Map<String, dynamic>))
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
          .map((e) => RD5sxRcE0eOB932bFliao.fromMap(e as Map<String, dynamic>))
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
          .map((e) => NakOK5d2GdM3yvGWMsg.fromMap(e as Map<String, dynamic>))
          .toList();
      await _persist();
      notifyListeners();
    } catch (e) {
      debugPrint('Error updating messages: $e');
    }
  }

  Future<void> deleteAccount() async {
    try {
      final userIdToDelete = currentUser.fkloYnZiRmbRtJ00;

      // Remove user from users list
      users.removeWhere((u) => u.fkloYnZiRmbRtJ00 == userIdToDelete);

      // Remove user's posts
      posts.removeWhere((p) => p.nlPxQBFl8qKNMmCt == userIdToDelete);

      // Remove user's comments
      comments.removeWhere((c) => c.YjHeuERpQWrW2rzh == userIdToDelete);

      // Remove chat rooms containing this user
      chatRooms.removeWhere((c) => c.R1DrlWpgkNODxc7I.contains(userIdToDelete));

      // Remove messages from this user
      messages.removeWhere((m) => m.Lmv7ZkAQA6R0SUkQ == userIdToDelete);

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
      (p) => p.k4g89xQIHDro7dyFy == paymentId,
      orElse: () => diamondPacks.isNotEmpty
          ? diamondPacks.first
          : BJpjHVrAqvtNbCtLDiapack(k4g89xQIHDro7dyFy: '', LylHtfRBcO1D0w0M: 0, oY2gDyZaF80kazMx: 0),
    );

    if (pack.k4g89xQIHDro7dyFy.isNotEmpty) {
      purchasePack(pack);
    }
  }
}
