import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/post.dart';
import '../models/user.dart';
import '../providers/app_state.dart';
import 'image_helper.dart';

class UserHeader extends StatelessWidget {
  const UserHeader({super.key, required this.user, this.trailing});

  final User user;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 26,
          backgroundImage: smartImageProvider(user.avator),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                user.about,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        if (trailing != null) trailing!,
      ],
    );
  }
}

class StatRow extends StatelessWidget {
  const StatRow({
    super.key,
    required this.label,
    required this.value,
    this.onTap,
  });
  final String label;
  final String value;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(value,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
          const SizedBox(height: 4),
          Text(label, style: const TextStyle(color: Colors.white70)),
        ],
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  const PostCard(
      {super.key, required this.post, required this.author, this.onTap});

  final Post post;
  final User author;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final app = context.watch<AppState>();
    final currentUser = app.currentUser;

    // 判断是否已点赞：图片帖子检查 picPostLikeIds，视频帖子检查 videoPostLikeIds
    final isLiked = post.dynamicType == 0
        ? currentUser.picPostLikeIds.contains(post.dynamicId)
        : currentUser.videoPostLikeIds.contains(post.dynamicId);

    return InkWell(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.only(bottom: 16),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildImageLayout(),
              const SizedBox(height: 10),
              // Text(post.title,
              //     style: const TextStyle(
              //         fontWeight: FontWeight.w700, fontSize: 16)),
              // const SizedBox(height: 6),
              // Text(
              //   post.description,
              //   style: const TextStyle(color: Colors.white70),
              //   maxLines: 2,
              //   overflow: TextOverflow.ellipsis,
              // ),
              // const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFFF8133)),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: CircleAvatar(
                        backgroundImage: smartImageProvider(author.avator),
                        radius: 18,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return const LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 202, 104, 43),
                          Colors.black,
                          const Color.fromARGB(255, 22, 87, 178),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ).createShader(bounds);
                    },
                    blendMode: BlendMode.srcIn,
                    child: Text(
                      author.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Image.asset(
                        isLiked
                            ? 'assets/images/imUilxE1Sy10vMHMpink.png'
                            : 'assets/images/imUilxE1Sy10vMHMhui.png',
                        width: 36,
                        height: 36,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        post.dynamicLikeCount > 1000
                            ? '${(post.dynamicLikeCount / 1000).toStringAsFixed(post.dynamicLikeCount % 1000 == 0 ? 0 : 1)}k'
                            : '${post.dynamicLikeCount}',
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 55, 55, 55),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageLayout() {
    final images = post.dynamicPic;
    final imageCount = images.length;

    // 如果是视频，显示视频封面
    if (post.isVideo) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 4 / 3,
          child: Stack(
            fit: StackFit.expand,
            children: [
              SmartImage(
                url: post.imageUrl,
                fit: BoxFit.cover,
              ),
              const Center(
                child:
                    Icon(Icons.play_circle_fill, color: Colors.white, size: 48),
              ),
            ],
          ),
        ),
      );
    }

    // 如果没有图片，返回空容器
    if (imageCount == 0) {
      return const SizedBox.shrink();
    }

    // 1张图片：横向铺满
    if (imageCount == 1) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 4 / 3,
          child: SmartImage(
            url: images[0],
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    // 2张图片：左右各一张
    if (imageCount == 2) {
      return Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: AspectRatio(
                aspectRatio: 3 / 4,
                child: SmartImage(
                  url: images[0],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: AspectRatio(
                aspectRatio: 3 / 4,
                child: SmartImage(
                  url: images[1],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      );
    }

    // 3张及以上：左边一张大图，右边纵向排列其余小图
    final leftImage = images[0];
    final rightImages = images.sublist(1);
    final showMoreCount = imageCount > 4;
    final displayCount = showMoreCount ? 3 : rightImages.length; // 最多显示3张小图
    final remainingCount = imageCount - 4; // 超过4张的剩余数量
    const spacing = 8.0; // 小图之间的间距

    // 3张图片单独处理：左图比例小一点，右图比例大一点
    if (imageCount == 3) {
      return LayoutBuilder(
        builder: (context, constraints) {
          final totalWidth = constraints.maxWidth - spacing;
          // 3张图片时：左边占2/3，右边占1/3（比4张时的比例更平衡）
          final leftWidth = totalWidth * 2 / 3;
          final leftHeight = leftWidth; // 正方形
          final rightWidth = totalWidth * 1 / 3;

          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 左边大图
              SizedBox(
                width: leftWidth,
                height: leftHeight,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: SmartImage(
                    url: leftImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: spacing),
              // 右边两小图
              SizedBox(
                width: rightWidth,
                height: leftHeight,
                child: Column(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: SmartImage(
                          url: rightImages[0],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: spacing),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: SmartImage(
                          url: rightImages[1],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      );
    }

    // 4张及以上：左边一张大图，右边纵向排列其余小图
    return LayoutBuilder(
      builder: (context, constraints) {
        // 计算左边大图的宽度（flex: 3）
        final totalWidth = constraints.maxWidth - spacing;
        final leftWidth = totalWidth * 3 / 4; // flex 3:1 的比例
        final leftHeight = leftWidth; // 正方形

        // 计算右边小图列的宽度
        final rightWidth = totalWidth * 1 / 4;

        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 左边大图
            SizedBox(
              width: leftWidth,
              height: leftHeight,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: SmartImage(
                  url: leftImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: spacing),
            // 右边小图列
            SizedBox(
              width: rightWidth,
              height: leftHeight,
              child: Column(
                children: List.generate(displayCount * 2 - 1, (index) {
                  // 偶数索引是图片，奇数索引是间距
                  if (index.isOdd) {
                    return SizedBox(height: spacing);
                  }

                  final imageIndex = index ~/ 2;
                  final isLast = imageIndex == displayCount - 1;
                  final shouldShowMore = showMoreCount && isLast;

                  return Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          SmartImage(
                            url: rightImages[imageIndex],
                            fit: BoxFit.cover,
                          ),
                          if (shouldShowMore)
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Center(
                                child: Text(
                                  '+$remainingCount',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        );
      },
    );
  }
}
