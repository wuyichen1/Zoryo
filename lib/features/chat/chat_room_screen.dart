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
    final room = app.chatRooms.firstWhere((c) => c.chatId == threadId);
    final peerId = room.chatUserIds.firstWhere(
      (id) => id != app.currentUser.userId,
      orElse: () => room.chatUserIds.isNotEmpty ? room.chatUserIds.first : '',
    );
    final peer = app.userById(peerId);
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

