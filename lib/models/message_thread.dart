class ChatRoom {
  ChatRoom({
    required this.chatId,
    required this.chatUserIds,
    required this.lastSendContent,
    required this.lastSendTime,
    required this.unreadMsgCount,
    required this.lastSendUserId,
  });

  final String chatId; // 聊天室ID
  final List<String> chatUserIds; // 聊天室用户IDList
  final String lastSendContent; // 最后发送消息文案
  final String lastSendTime; // 最后发送消息时间
  final int unreadMsgCount; // 未读消息数量
  final String lastSendUserId; // 最后发送消息人ID

  factory ChatRoom.fromMap(Map<String, dynamic> map) {
    return ChatRoom(
      chatId: map['chatId'] as String,
      chatUserIds: (map['chatUserIds'] as List<dynamic>? ?? []).map((e) => e.toString()).toList(),
      lastSendContent: map['lastSendContent'] as String? ?? '',
      lastSendTime: map['lastSendTime'] as String? ?? '',
      unreadMsgCount: (map['unreadMsgCount'] ?? 0) as int,
      lastSendUserId: map['lastSendUserId'] as String? ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'chatId': chatId,
      'chatUserIds': chatUserIds,
      'lastSendContent': lastSendContent,
      'lastSendTime': lastSendTime,
      'unreadMsgCount': unreadMsgCount,
      'lastSendUserId': lastSendUserId,
    };
  }
}

class ChatMessage {
  ChatMessage({
    required this.msgId,
    required this.chatId,
    required this.userId,
    required this.sendContent,
    required this.sendPicUrl,
    required this.sendTime,
  });

  final String msgId; // 消息ID
  final String chatId; // 聊天室ID
  final String userId; // 发送消息用户ID
  final String sendContent; // 发送消息文案
  final String sendPicUrl; // 发送图片地址
  final String sendTime; // 发送时间

  factory ChatMessage.fromMap(Map<String, dynamic> map) {
    return ChatMessage(
      msgId: map['msgId'] as String,
      chatId: map['chatId'] as String,
      userId: map['userId'] as String,
      sendContent: map['sendContent'] as String? ?? '',
      sendPicUrl: map['sendPicUrl'] as String? ?? '',
      sendTime: map['sendTime'] as String? ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'msgId': msgId,
      'chatId': chatId,
      'userId': userId,
      'sendContent': sendContent,
      'sendPicUrl': sendPicUrl,
      'sendTime': sendTime,
    };
  }

  // Helper for backward compatibility
  String get from => userId;
  String get content => sendContent;
  DateTime get time {
    try {
      return DateTime.parse(sendTime);
    } catch (e) {
      return DateTime.now();
    }
  }
}
