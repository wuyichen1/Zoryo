import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/app_state.dart';
import '../../widgets/image_helper.dart';

class ChatRoomScreen extends StatelessWidget {
  const ChatRoomScreen({super.key, required this.threadId});
  final String threadId;

  @override
  Widget build(BuildContext context) {
    final app = context.watch<AppState>();
    // 使用filteredChatRooms来查找聊天室（排除包含blockList中用户的聊天室）
    final filteredRooms = app.filteredChatRooms.where((c) => c.chatId == threadId).toList();
    if (filteredRooms.isEmpty) {
      // 如果聊天室不在过滤后的列表中（可能包含被屏蔽的用户），则尝试从chatRooms中查找
      // 如果还是找不到，说明聊天室不存在；如果找到但不包含在filteredChatRooms中，说明包含被屏蔽的用户
      final allRooms = app.chatRooms.where((c) => c.chatId == threadId).toList();
      if (allRooms.isEmpty) {
        // 聊天室不存在
        return Scaffold(
          appBar: AppBar(title: const Text('Chat')),
          body: const Center(child: Text('Chat room not found')),
        );
      }
      // 聊天室存在但包含被屏蔽的用户，不允许访问
      return Scaffold(
        appBar: AppBar(title: const Text('Chat')),
        body: const Center(child: Text('Chat room not available')),
      );
    }
    final room = filteredRooms.first;
    final peerId = room.chatUserIds.firstWhere(
      (id) => id != app.currentUser.userId,
      orElse: () => room.chatUserIds.isNotEmpty ? room.chatUserIds.first : '',
    );
    final peer = app.userById(peerId);
    // chatMessages方法已经过滤了blockList中用户的消息
    final messages = app.chatMessages(threadId);
    final controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(backgroundImage: smartImageProvider(peer.avator)),
            const SizedBox(width: 8),
            Text(peer.name),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final msg = messages[index];
                final isMe = msg.userId == app.currentUser.userId;
                return Align(
                  alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: isMe ? const Color(0xFF0E4FA4) : Colors.white12,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Text(msg.sendContent),
                  ),
                );
              },
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: controller,
                      decoration: const InputDecoration(hintText: 'Say something'),
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      if (controller.text.isNotEmpty) {
                        app.sendMessage(threadId, controller.text);
                        controller.clear();
                      }
                    },
                    child: const Icon(Icons.send),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

