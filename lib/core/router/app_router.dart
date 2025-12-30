import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/account_screen.dart';
import '../../features/auth/auth_form_screen.dart';
import '../../features/auth/auth_select_screen.dart';
import '../../features/chat_list_screen.dart';
import '../../features/discover_screen.dart';
import '../../features/home_screen.dart';
import '../../features/webview_screen.dart';
import '../../zzokdet_fangfa/app_state.dart';
import '../../features/widgets/app_scaffold.dart';
import 'h5_routes.dart';

class AppRouter {
  AppRouter(this.appState);
  final AppState appState;

  String _getInitialLocation() {
    // Use saved route location if available and valid, otherwise use default
    final saved = appState.savedRouteLocation;
    if (saved != null && saved.isNotEmpty && saved != '/') {
      // H5路由不应该被保存，也不应该作为初始路由
      // 如果保存的路由是H5路由，使用默认路由
      if (saved.startsWith('/h5/')) {
        return '/auth/select';
      }
      if (appState.initialized) {
        if (appState.isLoggedIn && saved.startsWith('/auth')) {
          return '/home';
        }
        // If user is not logged in and trying to access non-auth route, redirect to auth
        if (!appState.isLoggedIn && !saved.startsWith('/auth')) {
          return '/auth/select';
        }
      }
      return saved;
    }
    return '/auth/select';
  }

  late final GoRouter router = GoRouter(
    initialLocation: _getInitialLocation(),
    refreshListenable: appState,
    routes: [
      GoRoute(
        path: '/auth/select',
        name: 'auth-select',
        builder: (context, state) => const AuthSelectScreen(),
      ),
      GoRoute(
        path: '/auth/form',
        name: 'auth-form',
        builder: (context, state) {
          final mode = state.uri.queryParameters['mode'] ?? 'login';
          return AuthFormScreen(mode: mode);
        },
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return AppScaffold(shell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/home',
                name: 'home',
                builder: (context, state) => const HomeScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/discover',
                name: 'discover',
                builder: (context, state) => const DiscoverScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/chat',
                name: 'chat',
                builder: (context, state) => const ChatListScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/account',
                name: 'account',
                builder: (context, state) {
                  final uid = state.uri.queryParameters['uid'];
                  return AccountScreen(userId: uid);
                },
              ),
            ],
          ),
        ],
      ),
      // H5 WebView routes
      GoRoute(
        path: '/h5/webview',
        name: 'webview',
        builder: (context, state) {
          final url = state.uri.queryParameters['url'] ?? '';
          final title = state.uri.queryParameters['title'];
          // 使用完整的URI作为key，确保路由重新评估时能够复用相同的widget实例
          return WebViewScreen(
            key: ValueKey(state.uri.toString()),
            url: url,
            title: title,
          );
        },
      ),
      // H5 page routes
      GoRoute(
        path: '/h5/article-detail',
        name: 'h5-article-detail',
        builder: (context, state) {
          final id = state.uri.queryParameters['id'] ?? '';
          return WebViewScreen(
            key: ValueKey(state.uri.toString()),
            url: H5Routes.articleDetail(id),
            title: 'Article Detail',
          );
        },
      ),
      GoRoute(
        path: '/h5/short-video',
        name: 'h5-short-video',
        builder: (context, state) {
          final id = state.uri.queryParameters['id'] ?? '';
          return WebViewScreen(
            key: ValueKey(state.uri.toString()),
            url: H5Routes.shortVideo(id),
            title: 'Video',
          );
        },
      ),
      GoRoute(
        path: '/h5/private-chat',
        name: 'h5-private-chat',
        builder: (context, state) {
          final id = state.uri.queryParameters['id'] ?? '';
          return WebViewScreen(
            key: ValueKey(state.uri.toString()),
            url: H5Routes.privateChat(id),
            title: 'Chat',
          );
        },
      ),
      GoRoute(
        path: '/h5/send-dynamic',
        name: 'h5-send-dynamic',
        builder: (context, state) => WebViewScreen(
          key: ValueKey(state.uri.toString()),
          url: H5Routes.sendDynamic(),
          title: 'Post',
        ),
      ),
      GoRoute(
        path: '/h5/publish-video',
        name: 'h5-publish-video',
        builder: (context, state) => WebViewScreen(
          key: ValueKey(state.uri.toString()),
          url: H5Routes.publishVideo(),
          title: 'Upload Video',
        ),
      ),
      GoRoute(
        path: '/h5/chat-view',
        name: 'h5-chat-view',
        builder: (context, state) => WebViewScreen(
          key: ValueKey(state.uri.toString()),
          url: H5Routes.chatView(),
          title: 'Zoryo AI',
        ),
      ),
      GoRoute(
        path: '/h5/other-home',
        name: 'h5-other-home',
        builder: (context, state) {
          final id = state.uri.queryParameters['id'] ?? '';
          return WebViewScreen(
            key: ValueKey(state.uri.toString()),
            url: H5Routes.otherHome(id),
            title: 'Profile',
          );
        },
      ),
      GoRoute(
        path: '/h5/top-report',
        name: 'h5-top-report',
        builder: (context, state) => WebViewScreen(
          key: ValueKey(state.uri.toString()),
          url: H5Routes.topReport(),
          title: 'Report',
        ),
      ),
      GoRoute(
        path: '/h5/setup-page',
        name: 'h5-setup-page',
        builder: (context, state) => WebViewScreen(
          key: ValueKey(state.uri.toString()),
          url: H5Routes.setupPage(),
          title: 'Settings',
        ),
      ),
      GoRoute(
        path: '/h5/follow',
        name: 'h5-follow',
        builder: (context, state) {
          final id = state.uri.queryParameters['id'] ?? '';
          return WebViewScreen(
            key: ValueKey(state.uri.toString()),
            url: H5Routes.follow(id),
            title: 'Follow',
          );
        },
      ),
      GoRoute(
        path: '/h5/fans',
        name: 'h5-fans',
        builder: (context, state) {
          final id = state.uri.queryParameters['id'] ?? '';
          return WebViewScreen(
            key: ValueKey(state.uri.toString()),
            url: H5Routes.fans(id),
            title: 'Fans',
          );
        },
      ),
      GoRoute(
        path: '/h5/black-list',
        name: 'h5-black-list',
        builder: (context, state) {
          final id = state.uri.queryParameters['id'] ?? '';
          return WebViewScreen(
            key: ValueKey(state.uri.toString()),
            url: H5Routes.blackList(id),
            title: 'Blacklist',
          );
        },
      ),
      GoRoute(
        path: '/h5/edit-info',
        name: 'h5-edit-info',
        builder: (context, state) => WebViewScreen(
          key: ValueKey(state.uri.toString()),
          url: H5Routes.editInfo(),
          title: 'Edit Profile',
        ),
      ),
      GoRoute(
        path: '/h5/gold-coin',
        name: 'h5-gold-coin',
        builder: (context, state) => WebViewScreen(
          key: ValueKey(state.uri.toString()),
          url: H5Routes.goldCoin(),
          title: 'My Diamonds',
        ),
      ),
      GoRoute(
        path: '/h5/privacy-agreement',
        name: 'h5-privacy-agreement',
        builder: (context, state) => WebViewScreen(
          key: ValueKey(state.uri.toString()),
          url: H5Routes.privacyAgreement(),
          title: 'Privacy Policy',
        ),
      ),
      GoRoute(
        path: '/h5/user-agreement',
        name: 'h5-user-agreement',
        builder: (context, state) => WebViewScreen(
          key: ValueKey(state.uri.toString()),
          url: H5Routes.userAgreement(),
          title: 'User Agreement',
        ),
      ),
    ],
    redirect: (context, state) {
      // Don't redirect during initialization to avoid route jumping
      if (!appState.initialized) return null;

      final path = state.uri.path;

      // H5路由完全独立，不受AppState数据更新的影响
      // 如果检测到H5路由，清除可能保存的H5路由位置，防止路由重新评估时恢复H5页面
      if (path.startsWith('/h5/')) {
        // 清除可能保存的H5路由位置（异步操作，不阻塞）
        final saved = appState.savedRouteLocation;
        if (saved != null && saved.startsWith('/h5/')) {
          appState.saveRouteLocation('');
        }
        return null;
      }

      final isAuthPath = path.startsWith('/auth');

      // Handle root path
      if (path == '/') {
        if (!appState.eulaAgreed) return '/auth/select';
        if (appState.isLoggedIn) return '/home';
        return '/auth/select';
      }

      // Check EULA
      if (!appState.eulaAgreed && !isAuthPath) {
        return '/auth/select';
      }

      // Check login status
      if (!appState.isLoggedIn && !isAuthPath) {
        return '/auth/select';
      }

      if (appState.isLoggedIn && isAuthPath) {
        return '/home';
      }

      // Save current route location only when no redirect is needed
      // 确保H5路由不会被保存（双重检查，防止意外保存）
      final currentPath = state.uri.toString();
      if (currentPath.isNotEmpty &&
          currentPath != '/' &&
          !currentPath.startsWith('/h5/')) {
        appState.saveRouteLocation(currentPath);
      }

      return null;
    },
  );
}
