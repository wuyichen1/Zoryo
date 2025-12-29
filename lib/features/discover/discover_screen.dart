import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../core/theme/app_theme.dart';
import '../../providers/app_state.dart';
import '../../widgets/image_helper.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final app = context.watch<AppState>();
    // Only show video posts (dynamicType == 1)
    final videos = app.posts.where((p) => p.dynamicType == 1).toList();
    // Total items: 1 (Release card) + videos.length
    final totalItems = 1 + videos.length;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 136,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Image.asset('assets/images/T6RnpSSbVbCaZN78.png').image,
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  const Text(
                    'Discover',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: MasonryGridView.count(
                padding: const EdgeInsets.only(bottom: 150, top: 20),
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                itemCount: totalItems,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    // First item: Release your work card
                    return _ReleaseYourWorkCard();
                  } else {
                    // Video cards
                    final post = videos[index - 1];
                    final user = app.userById(post.userId);
                    return _DiscoverCard(post: post, user: user);
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ReleaseYourWorkCard extends StatelessWidget {
  const _ReleaseYourWorkCard();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // 跳转到上传视频帖子页面
        context.push('/h5/publish-video');
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: AspectRatio(
          // 使用较小的aspectRatio来使卡片高度更低
          aspectRatio: 1.0,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 141, 72, 30),
                  const Color.fromARGB(255, 24, 24, 24),
                  const Color.fromARGB(255, 9, 36, 74),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/whx0uhWW7CLyGm0T.png',
                    width: 60,
                    height: 60,
                  ),
                  const SizedBox(height: 6),
                  // 文本
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                      children: [
                        TextSpan(text: 'Release '),
                        TextSpan(
                          text: 'your',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        TextSpan(
                          text: ' work',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _DiscoverCard extends StatelessWidget {
  const _DiscoverCard({required this.post, required this.user});
  final dynamic post;
  final dynamic user;

  @override
  Widget build(BuildContext context) {
    final app = context.watch<AppState>();
    final currentUser = app.currentUser;

    // 判断是否已点赞：视频帖子检查 videoPostLikeIds
    final isLiked = currentUser.videoPostLikeIds.contains(post.dynamicId);

    return GestureDetector(
      onTap: () {
        // 视频帖子跳转到视频详情页
        context.push('/h5/short-video?id=${post.dynamicId}');
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 0.9,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        SmartImage(
                          url: post.imageUrl,
                          fit: BoxFit.cover,
                        ),
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFFF8133)),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: CircleAvatar(
                        backgroundImage: smartImageProvider(user.avator),
                        radius: 14,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      user.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        isLiked
                            ? 'assets/images/imUilxE1Sy10vMHMblue.png'
                            : 'assets/images/imUilxE1Sy10vMHMhui.png',
                        width: 20,
                        height: 20,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        post.dynamicLikeCount > 1000
                            ? '${(post.dynamicLikeCount / 1000).toStringAsFixed(post.dynamicLikeCount % 1000 == 0 ? 0 : 1)}k'
                            : '${post.dynamicLikeCount}',
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
