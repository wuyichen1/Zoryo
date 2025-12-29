import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../models/post.dart';
import '../../providers/app_state.dart';
import '../../widgets/common.dart';
import '../../widgets/image_helper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final tabs = const [
    'ALL',
    'Daily Glow',
    'Office Polished',
    'Travel Vibe',
    'Party Shine'
  ];
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: tabs.length, vsync: this);
    controller.addListener(_onTabChanged);
  }

  @override
  void dispose() {
    controller.removeListener(_onTabChanged);
    controller.dispose();
    super.dispose();
  }

  void _onTabChanged() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final app = context.watch<AppState>();
    final user = app.currentUser;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            fit: BoxFit.cover,
            image: Image.asset(
              'assets/images/qcGkzrBc98JyKny6.png',
            ).image,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 8, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: CircleAvatar(
                                  radius: 28,
                                  backgroundImage:
                                      smartImageProvider(user.avator),
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hello!👋',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white70,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  user.name,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // 三行文本
                            Text(
                              'Your exclusive',
                              style: GoogleFonts.montserrat(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                letterSpacing: -0.8,
                              ),
                            ),
                            Text(
                              'jewelry paired ',
                              style: GoogleFonts.montserrat(
                                fontSize: 24,
                                fontStyle: FontStyle.italic,
                                letterSpacing: -0.8,
                              ),
                            ),
                            Text(
                              'with AI assistant',
                              style: GoogleFonts.montserrat(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                letterSpacing: -0.8,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/images/gYFdrTokerNA7UtH.png',
                    width: 140,
                    height: 140,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () => context.push('/h5/chat-view'),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 选中项标题
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 20),
                      child: Text(
                        tabs[controller.index],
                        style: GoogleFonts.montserrat(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          width: 160,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                            ),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 187, 215, 255),
                                Color(0xFF1C7BFF),
                              ],
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Go unlock',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                  letterSpacing: -0.4,
                                ),
                              ),
                              SizedBox(width: 6),
                              Image.asset(
                                'assets/images/JjKkUBqOxtZJlzSa.png',
                                width: 28,
                                height: 28,
                              ),
                              SizedBox(width: 8),
                            ],
                          ),
                        ),
                        Image.asset(
                          'assets/images/y0jTlAELxMOQxaiP.png',
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            // 分割线
            Container(
              height: 1,
              color: Colors.white.withOpacity(0.8),
            ),
            // 自定义 TabBar
            _CustomTabBar(
              tabs: tabs,
              controller: controller,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TabBarView(
                  controller: controller,
                  children: tabs
                      .map(
                        (c) => _PostsList(
                          posts: app.postsByCategory(c, imageOnly: true),
                          app: app,
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomTabBar extends StatefulWidget {
  const _CustomTabBar({
    required this.tabs,
    required this.controller,
  });

  final List<String> tabs;
  final TabController controller;

  @override
  State<_CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<_CustomTabBar> {
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onTabChanged);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onTabChanged);
    super.dispose();
  }

  void _onTabChanged() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: widget.tabs.asMap().entries.map((entry) {
            final index = entry.key;
            final tab = entry.value;
            final isSelected = widget.controller.index == index;

            return Container(
              constraints: BoxConstraints(minWidth: 80),
              child: Stack(
                children: [
                  // 垂直分割线（从顶部开始）
                  if (index < widget.tabs.length - 1)
                    Positioned(
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: Container(
                        width: 1,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                  // Tab 内容
                  GestureDetector(
                    onTap: () {
                      widget.controller.animateTo(index);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: index == 0 ? 10 : 0),
                          child: Text(
                            tab,
                            style: GoogleFonts.montserrat(
                              fontSize: 14,
                              fontWeight: isSelected
                                  ? FontWeight.w600
                                  : FontWeight.w400,
                              fontStyle: FontStyle.italic,
                              color: Colors.white,
                            ),
                            overflow: TextOverflow.visible,
                            softWrap: false,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class _PostsList extends StatelessWidget {
  const _PostsList({required this.posts, required this.app});
  final List<Post> posts;
  final AppState app;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(bottom: 120, top: 16),
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];
        final author = app.userById(post.userId);
        return PostCard(
          post: post,
          author: author,
          onTap: () {
            // 图片帖子跳转到图片详情页，视频帖子跳转到视频详情页
            if (post.dynamicType == 0) {
              context.push('/h5/article-detail?id=${post.dynamicId}');
            } else {
              context.push('/h5/short-video?id=${post.dynamicId}');
            }
          },
        );
      },
    );
  }
}
