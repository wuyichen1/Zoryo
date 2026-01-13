import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../uyVclDaiEkntsqM6_account_screen.dart';
import '../auth/rtb0LjrVwalrXIZ3_authform_screen.dart';
import '../auth/uzXo7BzvDdw43vBi_authselect_screen.dart';
import '../owaERAbREhUJ3uO2_chatlist_screen.dart';
import '../gQnFc05HatX1P7Dj_discover_screen.dart';
import '../nigZlPuEaIKSmIsI_home_screen.dart';
import '../webview_screen.dart';
import '../../zzokdet_fangfa/app_state.dart';
import '../widgets/eBbEnnC9KeLzgmSz_scaffold.dart';

class AppRouter {
  AppRouter(this.xgWtDDrTyYrELU5l);
  final AppState xgWtDDrTyYrELU5l;

  String HFXYDXRsYP96JMUD() {
    final RSovjZY2NikxL0Hq = xgWtDDrTyYrELU5l.s6LetX6FiwoOFmXwp;
    if (RSovjZY2NikxL0Hq != null &&
        RSovjZY2NikxL0Hq.isNotEmpty &&
        RSovjZY2NikxL0Hq != '/') {
      if (RSovjZY2NikxL0Hq.startsWith('/h5/')) {
        return '/auth/select';
      }
      if (xgWtDDrTyYrELU5l.HMAJABja8J7tdhv8) {
        if (xgWtDDrTyYrELU5l.WMQtbwFITYixyRbr &&
            RSovjZY2NikxL0Hq.startsWith('/auth')) {
          return '/home';
        }
        if (!xgWtDDrTyYrELU5l.WMQtbwFITYixyRbr &&
            !RSovjZY2NikxL0Hq.startsWith('/auth')) {
          return '/auth/select';
        }
      }
      return RSovjZY2NikxL0Hq;
    }
    return '/auth/select';
  }

  late final GoRouter router = GoRouter(
    initialLocation: HFXYDXRsYP96JMUD(),
    refreshListenable: xgWtDDrTyYrELU5l,
    routes: [
      GoRoute(
        path: '/auth/select',
        name: 'auth-select',
        builder: (context, state) => const UzXo7BzvDdw43vBiAuthSelectScreen(),
      ),
      GoRoute(
        path: '/auth/form',
        name: 'auth-form',
        builder: (context, state) {
          final HvMpj4MMZYUNZDuU =
              state.uri.queryParameters['HvMpj4MMZYUNZDuU'] ?? 'login';
          return Rtb0LjrVwalrXIZ3AuthFormScreen(
              HvMpj4MMZYUNZDuU: HvMpj4MMZYUNZDuU);
        },
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return EBbEnnC9KeLzgmSzScaffold(dhsTqsF78WV8cVBC: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/home',
                name: 'home',
                builder: (context, state) => const NigZlPuEaIKSmIsIHomeScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/discover',
                name: 'discover',
                builder: (context, state) =>
                    const GQnFc05HatX1P7DjDiscoverScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/chat',
                name: 'chat',
                builder: (context, state) =>
                    const OwaERAbREhUJ3uO2ChatlistScreen(),
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
                  return UyVclDaiEkntsqM6AccountScreen(Gx36y4u0jtoFWw8G: uid);
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
            xV7wDbbWHIG4ebaBUrl: url,
            lOrJMO5uyGbwIXgb: title,
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
            xV7wDbbWHIG4ebaBUrl: H5Routes.articleDetail(id),
            lOrJMO5uyGbwIXgb: 'Article Detail',
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
            xV7wDbbWHIG4ebaBUrl: H5Routes.shortVideo(id),
            lOrJMO5uyGbwIXgb: 'Video',
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
            xV7wDbbWHIG4ebaBUrl: H5Routes.privateChat(id),
            lOrJMO5uyGbwIXgb: 'Chat',
          );
        },
      ),
      GoRoute(
        path: '/h5/send-dynamic',
        name: 'h5-send-dynamic',
        builder: (context, state) => WebViewScreen(
          key: ValueKey(state.uri.toString()),
          xV7wDbbWHIG4ebaBUrl: H5Routes.sendDynamic(),
          lOrJMO5uyGbwIXgb: 'Post',
        ),
      ),
      GoRoute(
        path: '/h5/publish-video',
        name: 'h5-publish-video',
        builder: (context, state) => WebViewScreen(
          key: ValueKey(state.uri.toString()),
          xV7wDbbWHIG4ebaBUrl: H5Routes.publishVideo(),
          lOrJMO5uyGbwIXgb: 'Upload Video',
        ),
      ),
      GoRoute(
        path: '/h5/chat-view',
        name: 'h5-chat-view',
        builder: (context, state) => WebViewScreen(
          key: ValueKey(state.uri.toString()),
          xV7wDbbWHIG4ebaBUrl: H5Routes.chatView(),
          lOrJMO5uyGbwIXgb: 'Zoryo AI',
        ),
      ),
      GoRoute(
        path: '/h5/setup-page',
        name: 'h5-setup-page',
        builder: (context, state) => WebViewScreen(
          key: ValueKey(state.uri.toString()),
          xV7wDbbWHIG4ebaBUrl: H5Routes.setupPage(),
          lOrJMO5uyGbwIXgb: 'Settings',
        ),
      ),
      GoRoute(
        path: '/h5/follow',
        name: 'h5-follow',
        builder: (context, state) {
          final id = state.uri.queryParameters['id'] ?? '';
          return WebViewScreen(
            key: ValueKey(state.uri.toString()),
            xV7wDbbWHIG4ebaBUrl: H5Routes.follow(id),
            lOrJMO5uyGbwIXgb: 'Follow',
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
            xV7wDbbWHIG4ebaBUrl: H5Routes.fans(id),
            lOrJMO5uyGbwIXgb: 'Fans',
          );
        },
      ),
      GoRoute(
        path: '/h5/edit-info',
        name: 'h5-edit-info',
        builder: (context, state) => WebViewScreen(
          key: ValueKey(state.uri.toString()),
          xV7wDbbWHIG4ebaBUrl: H5Routes.editInfo(),
          lOrJMO5uyGbwIXgb: 'Edit Profile',
        ),
      ),
      GoRoute(
        path: '/h5/gold-coin',
        name: 'h5-gold-coin',
        builder: (context, state) => WebViewScreen(
          key: ValueKey(state.uri.toString()),
          xV7wDbbWHIG4ebaBUrl: H5Routes.goldCoin(),
          lOrJMO5uyGbwIXgb: 'My Diamonds',
        ),
      ),
      GoRoute(
        path: '/h5/privacy-agreement',
        name: 'h5-privacy-agreement',
        builder: (context, state) => WebViewScreen(
          key: ValueKey(state.uri.toString()),
          xV7wDbbWHIG4ebaBUrl: H5Routes.privacyAgreement(),
          lOrJMO5uyGbwIXgb: 'Privacy Policy',
        ),
      ),
      GoRoute(
        path: '/h5/user-agreement',
        name: 'h5-user-agreement',
        builder: (context, state) => WebViewScreen(
          key: ValueKey(state.uri.toString()),
          xV7wDbbWHIG4ebaBUrl: H5Routes.userAgreement(),
          lOrJMO5uyGbwIXgb: 'User Agreement',
        ),
      ),
    ],
    redirect: (context, state) {
      if (!xgWtDDrTyYrELU5l.HMAJABja8J7tdhv8) return null;

      final g2IDkKmqIKPL88PF = state.uri.path;

      if (g2IDkKmqIKPL88PF.startsWith('/h5/')) {
        final RSovjZY2NikxL0Hq = xgWtDDrTyYrELU5l.s6LetX6FiwoOFmXwp;
        if (RSovjZY2NikxL0Hq != null && RSovjZY2NikxL0Hq.startsWith('/h5/')) {
          xgWtDDrTyYrELU5l.s8HGVKPpcO4RCTngj('');
        }
        return null;
      }

      final Cxc4U00qUP0YpNr2 = g2IDkKmqIKPL88PF.startsWith('/auth');

      if (g2IDkKmqIKPL88PF == '/') {
        if (!xgWtDDrTyYrELU5l.vB2GTgDbdOHDxBUH) return '/auth/select';
        if (xgWtDDrTyYrELU5l.WMQtbwFITYixyRbr) return '/home';
        return '/auth/select';
      }

      if (!xgWtDDrTyYrELU5l.vB2GTgDbdOHDxBUH && !Cxc4U00qUP0YpNr2) {
        return '/auth/select';
      }

      if (!xgWtDDrTyYrELU5l.WMQtbwFITYixyRbr && !Cxc4U00qUP0YpNr2) {
        return '/auth/select';
      }

      if (xgWtDDrTyYrELU5l.WMQtbwFITYixyRbr && Cxc4U00qUP0YpNr2) {
        return '/home';
      }

      final c7ssSxT5RBUfIKcfM = state.uri.toString();
      if (c7ssSxT5RBUfIKcfM.isNotEmpty &&
          c7ssSxT5RBUfIKcfM != '/' &&
          !c7ssSxT5RBUfIKcfM.startsWith('/h5/')) {
        xgWtDDrTyYrELU5l.s8HGVKPpcO4RCTngj(c7ssSxT5RBUfIKcfM);
      }

      return null;
    },
  );
}

class H5Routes {
  static const String IlDwFFSC6s9Nufbk =
      'https://vermillion-mermaid-82ec21.netlify.app';

  static String privateChat(String chatId) =>
      '$IlDwFFSC6s9Nufbk/private-chat?id=$chatId';
  static String articleDetail(String postId) =>
      '$IlDwFFSC6s9Nufbk/article-detail?id=$postId';
  static String sendDynamic() => '$IlDwFFSC6s9Nufbk/send-dynamic';
  static String shortVideo(String postId) =>
      '$IlDwFFSC6s9Nufbk/short-video?id=$postId';
  static String publishVideo() => '$IlDwFFSC6s9Nufbk/publish-video';
  static String chatView() => '$IlDwFFSC6s9Nufbk/chat-view';
  static String otherHome(String userId) =>
      '$IlDwFFSC6s9Nufbk/other-home?id=$userId';
  static String topReport() => '$IlDwFFSC6s9Nufbk/top-report';
  static String setupPage() => '$IlDwFFSC6s9Nufbk/setup-page';
  static String follow(String userId) => '$IlDwFFSC6s9Nufbk/follow?id=$userId';
  static String fans(String userId) => '$IlDwFFSC6s9Nufbk/fans?id=$userId';
  static String blackList(String userId) =>
      '$IlDwFFSC6s9Nufbk/black-list?id=$userId';
  static String editInfo() => '$IlDwFFSC6s9Nufbk/edit-info';
  static String goldCoin() => '$IlDwFFSC6s9Nufbk/gold-coin';
  static String privacyAgreement() => '$IlDwFFSC6s9Nufbk/privacy-agreement';
  static String userAgreement() => '$IlDwFFSC6s9Nufbk/user-agreement';
}
