import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../uyVclDaiEkntsqM6_account.dart';
import '../auth/rtb0LjrVwalrXIZ3_authform_screen.dart';
import '../auth/uzXo7BzvDdw43vBi_authselect_screen.dart';
import '../owaERAbREhUJ3uO2_chatlist.dart';
import '../gQnFc05HatX1P7Dj_discover.dart';
import '../nigZlPuEaIKSmIsI_home.dart';
import '../webview_screen.dart';
import '../../zzokdet_fangfa/kl3bGE2D4dsgMTqG_state.dart';
import '../widgets/eBbEnnC9KeLzgmSz_scaffold.dart';

class H5configtbmjfejOdP2R2FVG {
  final String pathIh1zfasLwJFo3vdw;
  final String rouname2448TXT8qO2rc7z7;
  final String Function(String? id) urlbuidGmrKVc1pJ4XzBvfk;
  final String titleanolziQuSghtVnif;
  final bool reqIdys4AK5ySw6HMIMeB;
  final bool cacheJ4B83yvdMBwYkqTI;
  final String? analyticsEvent;

  const H5configtbmjfejOdP2R2FVG({
    required this.pathIh1zfasLwJFo3vdw,
    required this.rouname2448TXT8qO2rc7z7,
    required this.urlbuidGmrKVc1pJ4XzBvfk,
    required this.titleanolziQuSghtVnif,
    this.reqIdys4AK5ySw6HMIMeB = false,
    this.cacheJ4B83yvdMBwYkqTI = true,
    this.analyticsEvent,
  });
}

class H5RouteBuilder {
  static GoRoute buildRoute(H5configtbmjfejOdP2R2FVG config) {
    return GoRoute(
      path: config.pathIh1zfasLwJFo3vdw,
      name: config.rouname2448TXT8qO2rc7z7,
      builder: (context, state) {
        final r3zAqrXWk77k4EDPx = ep2RywS1SVVODxZn9T(state, config);

        final SQY3T93JNsCmM9pi = UMJG3LXA8BmSvvR3(config, r3zAqrXWk77k4EDPx);
        final IFo0y08QHrhHPZia = zLxpBKAct4kKpzyb(state, config);

        if (config.analyticsEvent != null) {
          t2d81ppHmZzyLmtkU(config.analyticsEvent!, r3zAqrXWk77k4EDPx);
        }

        return WebViewScreen(
          key: IFo0y08QHrhHPZia,
          xV7wDbbWHIG4ebaBUrl: SQY3T93JNsCmM9pi,
          lOrJMO5uyGbwIXgb: config.titleanolziQuSghtVnif,
        );
      },
    );
  }

  static Map<String, String> ep2RywS1SVVODxZn9T(
    GoRouterState state,
    H5configtbmjfejOdP2R2FVG c1PagV5NZyXQJn0VM,
  ) {
    final param5QLej8tZwpxT7 = <String, String>{};

    if (c1PagV5NZyXQJn0VM.reqIdys4AK5ySw6HMIMeB) {
      final id = state.uri.queryParameters['id'] ?? '';
      if (id.isNotEmpty) {
        param5QLej8tZwpxT7['id'] = id;
      }
    }

    param5QLej8tZwpxT7.addAll(state.uri.queryParameters);

    return param5QLej8tZwpxT7;
  }

  static String UMJG3LXA8BmSvvR3(
    H5configtbmjfejOdP2R2FVG config,
    Map<String, String> fdc7rYal8rQwluC0,
  ) {
    final id = fdc7rYal8rQwluC0['id'];
    return config.urlbuidGmrKVc1pJ4XzBvfk(id);
  }

  static ValueKey<String> zLxpBKAct4kKpzyb(
    GoRouterState state,
    H5configtbmjfejOdP2R2FVG d2HmhtdVuWfMiJgi,
  ) {
    final kQUdsBHM3d0QTcak = state.uri.toString();
    return ValueKey(
        'h5_${d2HmhtdVuWfMiJgi.pathIh1zfasLwJFo3vdw}_$kQUdsBHM3d0QTcak');
  }

  static void t2d81ppHmZzyLmtkU(
      String wt7B34CxPUNUF8Ie, Map<String, String> xx3S2THFH7AT1zPe) {
    debugPrint('Route View: $wt7B34CxPUNUF8Ie with params: $xx3S2THFH7AT1zPe');
  }
}

class X355c8o9V8W17UM8H5Regst {
  static List<H5configtbmjfejOdP2R2FVG> get _routeConfigs => [
        H5configtbmjfejOdP2R2FVG(
          pathIh1zfasLwJFo3vdw: '/h5/webview',
          rouname2448TXT8qO2rc7z7: 'webview',
          urlbuidGmrKVc1pJ4XzBvfk: (_) {
            return '';
          },
          titleanolziQuSghtVnif: '',
          cacheJ4B83yvdMBwYkqTI: false,
          analyticsEvent: 'webview_opened',
        ),
        H5configtbmjfejOdP2R2FVG(
          pathIh1zfasLwJFo3vdw: '/h5/article-detail',
          rouname2448TXT8qO2rc7z7: 'h5-article-detail',
          urlbuidGmrKVc1pJ4XzBvfk: (id) => H5Routes.articleDetail(id ?? ''),
          titleanolziQuSghtVnif: 'Article Detail',
          reqIdys4AK5ySw6HMIMeB: true,
          cacheJ4B83yvdMBwYkqTI: true,
          analyticsEvent: 'article_detail_viewed',
        ),
        H5configtbmjfejOdP2R2FVG(
          pathIh1zfasLwJFo3vdw: '/h5/short-video',
          rouname2448TXT8qO2rc7z7: 'h5-short-video',
          urlbuidGmrKVc1pJ4XzBvfk: (id) => H5Routes.shortVideo(id ?? ''),
          titleanolziQuSghtVnif: 'Video',
          reqIdys4AK5ySw6HMIMeB: true,
          cacheJ4B83yvdMBwYkqTI: false,
          analyticsEvent: 'short_video_viewed',
        ),
        H5configtbmjfejOdP2R2FVG(
          pathIh1zfasLwJFo3vdw: '/h5/private-chat',
          rouname2448TXT8qO2rc7z7: 'h5-private-chat',
          urlbuidGmrKVc1pJ4XzBvfk: (id) => H5Routes.privateChat(id ?? ''),
          titleanolziQuSghtVnif: 'Chat',
          reqIdys4AK5ySw6HMIMeB: true,
          cacheJ4B83yvdMBwYkqTI: false,
          analyticsEvent: 'private_chat_opened',
        ),
        H5configtbmjfejOdP2R2FVG(
          pathIh1zfasLwJFo3vdw: '/h5/send-dynamic',
          rouname2448TXT8qO2rc7z7: 'h5-send-dynamic',
          urlbuidGmrKVc1pJ4XzBvfk: (_) => H5Routes.sendDynamic(),
          titleanolziQuSghtVnif: 'Post',
          cacheJ4B83yvdMBwYkqTI: false,
          analyticsEvent: 'send_dynamic_opened',
        ),
        H5configtbmjfejOdP2R2FVG(
          pathIh1zfasLwJFo3vdw: '/h5/publish-video',
          rouname2448TXT8qO2rc7z7: 'h5-publish-video',
          urlbuidGmrKVc1pJ4XzBvfk: (_) => H5Routes.publishVideo(),
          titleanolziQuSghtVnif: 'Upload Video',
          cacheJ4B83yvdMBwYkqTI: false,
          analyticsEvent: 'publish_video_opened',
        ),
        H5configtbmjfejOdP2R2FVG(
          pathIh1zfasLwJFo3vdw: '/h5/chat-view',
          rouname2448TXT8qO2rc7z7: 'h5-chat-view',
          urlbuidGmrKVc1pJ4XzBvfk: (_) => H5Routes.chatView(),
          titleanolziQuSghtVnif: 'Zoryo AI',
          cacheJ4B83yvdMBwYkqTI: false,
          analyticsEvent: 'ai_chat_viewed',
        ),
        H5configtbmjfejOdP2R2FVG(
          pathIh1zfasLwJFo3vdw: '/h5/setup-page',
          rouname2448TXT8qO2rc7z7: 'h5-setup-page',
          urlbuidGmrKVc1pJ4XzBvfk: (_) => H5Routes.setupPage(),
          titleanolziQuSghtVnif: 'Settings',
          cacheJ4B83yvdMBwYkqTI: true,
          analyticsEvent: 'settings_opened',
        ),
        H5configtbmjfejOdP2R2FVG(
          pathIh1zfasLwJFo3vdw: '/h5/follow',
          rouname2448TXT8qO2rc7z7: 'h5-follow',
          urlbuidGmrKVc1pJ4XzBvfk: (id) => H5Routes.follow(id ?? ''),
          titleanolziQuSghtVnif: 'Follow',
          reqIdys4AK5ySw6HMIMeB: true,
          cacheJ4B83yvdMBwYkqTI: true,
          analyticsEvent: 'follow_list_viewed',
        ),
        H5configtbmjfejOdP2R2FVG(
          pathIh1zfasLwJFo3vdw: '/h5/fans',
          rouname2448TXT8qO2rc7z7: 'h5-fans',
          urlbuidGmrKVc1pJ4XzBvfk: (id) => H5Routes.fans(id ?? ''),
          titleanolziQuSghtVnif: 'Fans',
          reqIdys4AK5ySw6HMIMeB: true,
          cacheJ4B83yvdMBwYkqTI: true,
          analyticsEvent: 'fans_list_viewed',
        ),
        H5configtbmjfejOdP2R2FVG(
          pathIh1zfasLwJFo3vdw: '/h5/edit-info',
          rouname2448TXT8qO2rc7z7: 'h5-edit-info',
          urlbuidGmrKVc1pJ4XzBvfk: (_) => H5Routes.editInfo(),
          titleanolziQuSghtVnif: 'Edit Profile',
          cacheJ4B83yvdMBwYkqTI: false,
          analyticsEvent: 'edit_profile_opened',
        ),
        H5configtbmjfejOdP2R2FVG(
          pathIh1zfasLwJFo3vdw: '/h5/gold-coin',
          rouname2448TXT8qO2rc7z7: 'h5-gold-coin',
          urlbuidGmrKVc1pJ4XzBvfk: (_) => H5Routes.goldCoin(),
          titleanolziQuSghtVnif: 'My Diamonds',
          cacheJ4B83yvdMBwYkqTI: true,
          analyticsEvent: 'gold_coin_viewed',
        ),
        H5configtbmjfejOdP2R2FVG(
          pathIh1zfasLwJFo3vdw: '/h5/privacy-agreement',
          rouname2448TXT8qO2rc7z7: 'h5-privacy-agreement',
          urlbuidGmrKVc1pJ4XzBvfk: (_) => H5Routes.privacyAgreement(),
          titleanolziQuSghtVnif: 'Privacy Policy',
          cacheJ4B83yvdMBwYkqTI: true,
          analyticsEvent: 'privacy_agreement_viewed',
        ),
        H5configtbmjfejOdP2R2FVG(
          pathIh1zfasLwJFo3vdw: '/h5/user-agreement',
          rouname2448TXT8qO2rc7z7: 'h5-user-agreement',
          urlbuidGmrKVc1pJ4XzBvfk: (_) => H5Routes.userAgreement(),
          titleanolziQuSghtVnif: 'User Agreement',
          cacheJ4B83yvdMBwYkqTI: true,
          analyticsEvent: 'user_agreement_viewed',
        ),
        H5configtbmjfejOdP2R2FVG(
          pathIh1zfasLwJFo3vdw: '/h5/user-register',
          rouname2448TXT8qO2rc7z7: 'h5-user-register',
          urlbuidGmrKVc1pJ4XzBvfk: (_) => H5Routes.userRegister(),
          titleanolziQuSghtVnif: 'Complete profile',
          cacheJ4B83yvdMBwYkqTI: false,
          analyticsEvent: 'user_register_profile_viewed',
        ),
      ];

  static List<RouteBase> buildAllRoutes() {
    return _routeConfigs.map((d2HmhtdVuWfMiJgi) {
      if (d2HmhtdVuWfMiJgi.pathIh1zfasLwJFo3vdw == '/h5/webview') {
        return AKQmDFO1OtJ2M84q();
      }
      return H5RouteBuilder.buildRoute(d2HmhtdVuWfMiJgi);
    }).toList();
  }

  static GoRoute AKQmDFO1OtJ2M84q() {
    return GoRoute(
      path: '/h5/webview',
      name: 'webview',
      builder: (context, state) {
        final url = state.uri.queryParameters['url'] ?? '';
        final title = state.uri.queryParameters['title'];

        final IFo0y08QHrhHPZia = ValueKey('h5_webview_${state.uri.toString()}');

        if (url.isNotEmpty) {
          debugPrint('Generic WebView opened: $url');
        }

        return WebViewScreen(
          key: IFo0y08QHrhHPZia,
          xV7wDbbWHIG4ebaBUrl: url,
          lOrJMO5uyGbwIXgb: title,
        );
      },
    );
  }
}

class AppRouter {
  AppRouter(this.xgWtDDrTyYrELU5l);
  final Kl3bGE2D4dsgMTqGState xgWtDDrTyYrELU5l;

  String HFXYDXRsYP96JMUD() {
    final RSovjZY2NikxL0Hq = xgWtDDrTyYrELU5l.s6LetX6FiwoOFmXwp;
    if (RSovjZY2NikxL0Hq != null &&
        RSovjZY2NikxL0Hq.isNotEmpty &&
        RSovjZY2NikxL0Hq != '/') {
      if (RSovjZY2NikxL0Hq.startsWith('/h5/')) {
        final isRegH5 =
            RSovjZY2NikxL0Hq.startsWith('/h5/user-register');
        if (isRegH5 &&
            xgWtDDrTyYrELU5l.vbK7PendingRegProfile &&
            !xgWtDDrTyYrELU5l.WMQtbwFITYixyRbr) {
          return RSovjZY2NikxL0Hq;
        }
        return '/auth/select';
      }
      if (xgWtDDrTyYrELU5l.HMAJABja8J7tdhv8) {
        if (xgWtDDrTyYrELU5l.WMQtbwFITYixyRbr &&
            xgWtDDrTyYrELU5l.NLbGEpZKzMfAbV3k.isguest != 1 &&
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
      // H5 WebView routes - 使用配置驱动的路由系统
      ...X355c8o9V8W17UM8H5Regst.buildAllRoutes(),
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
        if (g2IDkKmqIKPL88PF == '/h5/user-register' &&
            xgWtDDrTyYrELU5l.vbK7PendingRegProfile) {
          return null;
        }
        return '/auth/select';
      }

      if (xgWtDDrTyYrELU5l.WMQtbwFITYixyRbr &&
          xgWtDDrTyYrELU5l.NLbGEpZKzMfAbV3k.isguest != 1 &&
          Cxc4U00qUP0YpNr2) {
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
  static String userRegister() => '$IlDwFFSC6s9Nufbk/user-register';
}
