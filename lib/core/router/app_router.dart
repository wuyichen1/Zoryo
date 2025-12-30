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

class AppRouter {
  AppRouter(this.appState);
  final AppState appState;

  String _getInitialLocation() {
    final saved = appState.savedRouteLocation;
    if (saved != null && saved.isNotEmpty && saved != '/') {
      if (saved.startsWith('/h5/')) {
        return '/auth/select';
      }
      if (appState.initialized) {
        if (appState.isLoggedIn && saved.startsWith('/auth')) {
          return '/home';
        }
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
          return WebViewScreen(
            key: ValueKey(state.uri.toString()),
            url: url,
            title: title,
          );
        },
      ),
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
      if (!appState.initialized) return null;

      final path = state.uri.path;

      if (path.startsWith('/h5/')) {
        final saved = appState.savedRouteLocation;
        if (saved != null && saved.startsWith('/h5/')) {
          appState.saveRouteLocation('');
        }
        return null;
      }

      final isAuthPath = path.startsWith('/auth');

      if (path == '/') {
        if (!appState.eulaAgreed) return '/auth/select';
        if (appState.isLoggedIn) return '/home';
        return '/auth/select';
      }

      if (!appState.eulaAgreed && !isAuthPath) {
        return '/auth/select';
      }

      if (!appState.isLoggedIn && !isAuthPath) {
        return '/auth/select';
      }

      if (appState.isLoggedIn && isAuthPath) {
        return '/home';
      }

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

class H5Routes {
  static const String baseUrl = 'https://vermillion-mermaid-82ec21.netlify.app';

  static String privateChat(String chatId) =>
      '$baseUrl/private-chat?id=$chatId';
  static String articleDetail(String postId) =>
      '$baseUrl/article-detail?id=$postId';
  static String sendDynamic() => '$baseUrl/send-dynamic';
  static String shortVideo(String postId) => '$baseUrl/short-video?id=$postId';
  static String publishVideo() => '$baseUrl/publish-video';
  static String chatView() => '$baseUrl/chat-view';
  static String otherHome(String userId) => '$baseUrl/other-home?id=$userId';
  static String topReport() => '$baseUrl/top-report';
  static String setupPage() => '$baseUrl/setup-page';
  static String follow(String userId) => '$baseUrl/follow?id=$userId';
  static String fans(String userId) => '$baseUrl/fans?id=$userId';
  static String blackList(String userId) => '$baseUrl/black-list?id=$userId';
  static String editInfo() => '$baseUrl/edit-info';
  static String goldCoin() => '$baseUrl/gold-coin';
  static String privacyAgreement() => '$baseUrl/privacy-agreement';
  static String userAgreement() => '$baseUrl/user-agreement';
}
