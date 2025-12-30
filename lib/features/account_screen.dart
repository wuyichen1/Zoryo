import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:zoryo/models/post.dart';
import 'package:zoryo/models/user.dart';

import '../models/publish_option.dart';
import '../zzokdet_fangfa/app_state.dart';
import '../zzokdet_fangfa/image_helper.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key, this.userId});
  final String? userId;

  /// 根据dynamicTitleType获取标签名称
  String _getCategoryName(
      int dynamicTitleType, List<PublishOption> publishOptions) {
    try {
      final option = publishOptions.firstWhere(
        (opt) => opt.value == dynamicTitleType,
      );
      return option.name;
    } catch (e) {
      return 'Theme';
    }
  }

  @override
  Widget build(BuildContext context) {
    final app = context.watch<AppState>();
    final target = userId == null ? app.currentUser : app.userById(userId!);
    final isSelf = target.userId == app.currentUser.userId;
    // 只显示视频帖子
    final videoPosts =
        app.userPosts(target.userId).where((p) => p.dynamicType == 1).toList();

    return Scaffold(
      backgroundColor: Color(0xFF0E080F),
      body: Stack(
        children: [
          Stack(
            children: [
              // 背景图片
              Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: smartImageProvider(target.avator),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.4),
                      BlendMode.darken,
                    ),
                  ),
                ),
              ),
              // 底部渐变遮罩层
              Container(
                height: 300,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Color(0xFF0E080F),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                // 头像区域（带添加按钮）
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white70,
                          width: 2,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: smartImageProvider(target.avator),
                      ),
                    ),
                    // 添加按钮（只在是自己的账户时显示）
                    if (isSelf)
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: GestureDetector(
                          onTap: () {
                            context.push('/h5/edit-info');
                          },
                          child: Image.asset(
                            'assets/images/NpRm3VLh4uF56aw1.png',
                            width: 24,
                            height: 24,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 12),
                // 用户名
                Text(
                  target.name,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                // 统计信息（垂直排列，用竖线分隔）
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 1,
                        color: Colors.white,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              SizedBox(height: 9),
                              Text(
                                '${videoPosts.length}',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                'works',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white70,
                                ),
                              ),
                            ],
                          ),

                          /// 分割线
                          Container(
                            width: 1,
                            height: 55,
                            color: Colors.white,
                            margin: const EdgeInsets.symmetric(horizontal: 16),
                          ),
                          GestureDetector(
                            onTap: () =>
                                context.push('/h5/fans?id=${target.userId}'),
                            child: Column(
                              children: [
                                SizedBox(height: 8),
                                Text(
                                  '${target.fansCount}',
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  target.fansCount > 1 ? 'Fans' : 'Fan',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          /// 分割线
                          Container(
                            width: 1,
                            height: 55,
                            color: Colors.white,
                            margin: const EdgeInsets.symmetric(horizontal: 16),
                          ),
                          GestureDetector(
                            onTap: () =>
                                context.push('/h5/follow?id=${target.userId}'),
                            child: Column(
                              children: [
                                SizedBox(height: 8),
                                Text(
                                  '${target.followsCount}',
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                const Text(
                                  'Follow',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                // 引用文字和Balance按钮
                if (isSelf)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            target.about.isNotEmpty
                                ? target.about
                                : 'Life is a journey, embrace it.',
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        GestureDetector(
                          onTap: () => context.push('/h5/gold-coin'),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              'Balance: ${app.currentUser.coins}',
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                else
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          final chatRoom =
                              app.getChatRoomByPeerId(target.userId);
                          if (chatRoom != null) {
                            context
                                .push('/h5/private-chat?id=${chatRoom.chatId}');
                          }
                        },
                        child: const Text('Chat'),
                      ),
                    ),
                  ),
                const SizedBox(height: 32),
                // Works 标题
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: const [
                      Text(
                        'Works',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                // Works 视频列表
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: videoPosts.isEmpty
                      ? Padding(
                          padding: EdgeInsets.all(32.0),
                          child: Image.asset(
                            'assets/images/Ub0NxSu42HA1fLtP.png',
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        )
                      : ListView.builder(
                          padding: const EdgeInsets.only(bottom: 100, top: 8),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: videoPosts.length,
                          itemBuilder: (context, index) {
                            final post = videoPosts[index];
                            final categoryName = _getCategoryName(
                              post.dynamicTitleType,
                              app.publishOptions,
                            );
                            return VideoCard(
                              post: post,
                              author: target,
                              categoryName: categoryName,
                              onTap: () {
                                context.push(
                                    '/h5/short-video?id=${post.dynamicId}');
                              },
                            );
                          },
                        ),
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
          Positioned(
            right: 20,
            top: 50,
            child: GestureDetector(
              onTap: () => context.push('/h5/setup-page'),
              child: Image.asset(
                'assets/images/QCSjqmRHBZ4WlARW.png',
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// 视频卡片组件，用于个人主页的Works列表
class VideoCard extends StatelessWidget {
  const VideoCard({
    super.key,
    required this.post,
    required this.author,
    required this.categoryName,
    this.onTap,
  });

  final Post post;
  final User author;
  final String categoryName; // 标签名称，如 "Theme"
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final app = context.watch<AppState>();
    final currentUser = app.currentUser;

    // 判断是否已点赞
    final isLiked = currentUser.videoPostLikeIds.contains(post.dynamicId);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: const Color(0xFF011733), // 深蓝色
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  // 作者头像
                  CircleAvatar(
                    radius: 18,
                    backgroundImage: smartImageProvider(author.avator),
                  ),
                  const SizedBox(width: 8),
                  // 作者名字
                  Text(
                    author.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 12),
                  // 标签
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Color(0xFF4F4B50),
                      borderRadius: BorderRadius.circular(38),
                    ),
                    child: Text(
                      '# $categoryName',
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              // 视频缩略图
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: AspectRatio(
                      aspectRatio: 16 / 10,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          SmartImage(
                            url: post.dynamicPic.isNotEmpty
                                ? post.dynamicPic.first
                                : '',
                            fit: BoxFit.cover,
                          ),
                          // 播放按钮
                          const Center(
                            child: Icon(
                              Icons.play_arrow_rounded,
                              color: Colors.white,
                              size: 48,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // 点赞数和爱心图标（右下角）
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      padding: EdgeInsets.only(right: 12, top: 8, bottom: 8),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            isLiked
                                ? 'assets/images/imUilxE1Sy10vMHMpink.png'
                                : 'assets/images/imUilxE1Sy10vMHMhui.png',
                            width: 35,
                            height: 35,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            post.dynamicLikeCount > 1000
                                ? '${(post.dynamicLikeCount / 1000).toStringAsFixed(post.dynamicLikeCount % 1000 == 0 ? 0 : 1)}k'
                                : '${post.dynamicLikeCount}',
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
