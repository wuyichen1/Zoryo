import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../providers/app_state.dart';
import '../../widgets/image_helper.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final app = context.watch<AppState>();
    // 筛选出包含当前登录用户的聊天室，并排除包含blockList中用户的聊天室
    final filteredRooms = app.filteredChatRooms
        .where((room) => room.chatUserIds.contains(app.currentUser.userId))
        .toList();
    return Scaffold(
      // appBar: AppBar(title: const Text('Chat')),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset('assets/images/S9x8jgtlLhyxicIV.png').image,
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 136,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      Image.asset('assets/images/PnFD0Zf3MZY6l7GS.png').image,
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    const SizedBox(width: 20),
                    // 当前用户头像
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFFF8133)),
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: CircleAvatar(
                          backgroundImage:
                              smartImageProvider(app.currentUser.avator),
                          radius: 24,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Text(
                      'Chat',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
            ),
            if (filteredRooms.isEmpty)
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 100),
                    child: Image.asset(
                      'assets/images/Ub0NxSu42HA1fLtP.png',
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            else
              Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.only(top: 16, bottom: 130),
                  itemBuilder: (context, index) {
                    final room = filteredRooms[index];
                    final peerId = room.chatUserIds.firstWhere(
                      (id) => id != app.currentUser.userId,
                      orElse: () => room.chatUserIds.isNotEmpty
                          ? room.chatUserIds.first
                          : '',
                    );
                    final peer = app.userById(peerId);
                    return ListTile(
                      titleAlignment: ListTileTitleAlignment.top,
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          // 渐变色背景
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFFF8133),
                              Colors.white,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(1.5),
                          child: CircleAvatar(
                            backgroundImage: smartImageProvider(
                              peer.avator,
                            ),
                            radius: 26,
                          ),
                        ),
                      ),
                      title: ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            colors: [
                              Color(0xFF1C7BFF),
                              Colors.white,
                            ],
                            stops: [0.0, 0.3],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ).createShader(bounds);
                        },
                        blendMode: BlendMode.srcIn,
                        child: Text(
                          peer.name,
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 19,
                          ),
                        ),
                      ),
                      subtitle: Text(
                        room.lastSendContent,
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      trailing: room.unreadMsgCount > 0
                          ? CircleAvatar(
                              radius: 11,
                              backgroundColor: Color(0xFFFF5757),
                              child: Text(
                                '${room.unreadMsgCount}',
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          : null,
                      onTap: () =>
                          context.push('/h5/private-chat?id=${room.chatId}'),
                    );
                  },
                  separatorBuilder: (_, __) => const Divider(
                    color: Colors.white12,
                    height: 30,
                    indent: 20,
                    endIndent: 20,
                  ),
                  itemCount: filteredRooms.length,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
