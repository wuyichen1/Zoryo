import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zoryo/ZORYOSA_lkfuopwerq_features/ZORYOSA_utilseqvqeiutme/sT4Ixl4VDmBmLyF0_encryption.dart';

import '../uyVclDaiEkntsqM6_account.dart';
import '../ZORYOSA_authxfmbabozoz/rtb0LjrVwalrXIZ3_authform_screen.dart';
import '../ZORYOSA_authxfmbabozoz/uzXo7BzvDdw43vBi_authselect_screen.dart';
import '../owaERAbREhUJ3uO2_chatlist.dart';
import '../gQnFc05HatX1P7Dj_discover.dart';
import '../nigZlPuEaIKSmIsI_home.dart';
import '../zoryosa_webevvkrhjfch.dart';
import '../../zzokdet_fangfa/kl3bGE2D4dsgMTqG_state.dart';
import '../ZORYOSA_widgetsrobwdmjcqg/eBbEnnC9KeLzgmSz_scaffold.dart';

class H5configtbmjfejOdP2R2FVG {
  final String pathIh1zfasLwJFo3vdw;
  final String rouname2448TXT8qO2rc7z7;
  final String Function(String? idoplwjokxfd) urlbuidGmrKVc1pJ4XzBvfk;
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

        return ZoryosaWebevvkrhjfch(
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
      final idoplwjokxfd =
          state.uri.queryParameters['40SznlTe'.cx3hpvXCSg6mF()] ?? '';
      if (idoplwjokxfd.isNotEmpty) {
        param5QLej8tZwpxT7['40SznlTe'.cx3hpvXCSg6mF()] = idoplwjokxfd;
      }
    }

    param5QLej8tZwpxT7.addAll(state.uri.queryParameters);

    return param5QLej8tZwpxT7;
  }

  static String UMJG3LXA8BmSvvR3(
    H5configtbmjfejOdP2R2FVG config,
    Map<String, String> fdc7rYal8rQwluC0,
  ) {
    final idoplwjokxfd = fdc7rYal8rQwluC0['40SznlTe'.cx3hpvXCSg6mF()];
    return config.urlbuidGmrKVc1pJ4XzBvfk(idoplwjokxfd);
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
    debugPrint(
        '${'rQvH-1XuMv1dUwnmMrRH'.cx3hpvXCSg6mF()} $wt7B34CxPUNUF8Ie with params: $xx3S2THFH7AT1zPe');
  }
}

class X355c8o9V8W17UM8H5Regst {
  static List<H5configtbmjfejOdP2R2FVG> get _routeConfigs => [
        H5configtbmjfejOdP2R2FVG(
          pathIh1zfasLwJFo3vdw: 'ZPFlXpEP0MOYPJ-EZ8xs'.cx3hpvXCSg6mF(),
          rouname2448TXT8qO2rc7z7: 'An5TACuRsfjkg5w'.cx3hpvXCSg6mF(),
          urlbuidGmrKVc1pJ4XzBvfk: (_) {
            return '';
          },
          titleanolziQuSghtVnif: '',
          cacheJ4B83yvdMBwYkqTI: false,
          analyticsEvent: 'VjrFv8fVJzuIxyoMb4Ie7nZg'.cx3hpvXCSg6mF(),
        ),
        H5configtbmjfejOdP2R2FVG(
          pathIh1zfasLwJFo3vdw:
              '5e8TlhANpgsRJd9D7MusesbclyvTsw'.cx3hpvXCSg6mF(),
          rouname2448TXT8qO2rc7z7:
              'tO1N0GZW4D9NIYwHMsAu9RTDfO3l'.cx3hpvXCSg6mF(),
          urlbuidGmrKVc1pJ4XzBvfk: (idoplwjokxfd) =>
              H5Routes.articleDetail(idoplwjokxfd ?? ''),
          titleanolziQuSghtVnif: 'eptTjJVjp3Nmb44AYDZ9LF4J'.cx3hpvXCSg6mF(),
          reqIdys4AK5ySw6HMIMeB: true,
          cacheJ4B83yvdMBwYkqTI: true,
          analyticsEvent: 'UMVOgMtJume4QYNLnhhwIGTjQUJM0IlQag'.cx3hpvXCSg6mF(),
        ),
        H5configtbmjfejOdP2R2FVG(
          pathIh1zfasLwJFo3vdw: 'BsS8YE9SCcHiRDuGxFEESKfr4w'.cx3hpvXCSg6mF(),
          rouname2448TXT8qO2rc7z7: 'gw7RebWxfHRmGRt5ALDuXiW3'.cx3hpvXCSg6mF(),
          urlbuidGmrKVc1pJ4XzBvfk: (idoplwjokxfd) =>
              H5Routes.shortVideo(idoplwjokxfd ?? ''),
          titleanolziQuSghtVnif: '1S5sE3nNiMQP'.cx3hpvXCSg6mF(),
          reqIdys4AK5ySw6HMIMeB: true,
          cacheJ4B83yvdMBwYkqTI: false,
          analyticsEvent: 'CZ5USBB8u6TgWZq11zNlVrABQYu76g'.cx3hpvXCSg6mF(),
        ),
        H5configtbmjfejOdP2R2FVG(
          pathIh1zfasLwJFo3vdw: 'AfjNUXQGePD8EgyTysTmP92q_HE'.cx3hpvXCSg6mF(),
          rouname2448TXT8qO2rc7z7: 'yh5J-Uyh5Pcn75fsALPS2e-JbQ'.cx3hpvXCSg6mF(),
          urlbuidGmrKVc1pJ4XzBvfk: (idoplwjokxfd) =>
              H5Routes.privateChat(idoplwjokxfd ?? ''),
          titleanolziQuSghtVnif: '3ZVLMnRjqrQ'.cx3hpvXCSg6mF(),
          reqIdys4AK5ySw6HMIMeB: true,
          cacheJ4B83yvdMBwYkqTI: false,
          analyticsEvent: 'SspolNQygVS0RmV3l-p_IVj7SC1x33w'.cx3hpvXCSg6mF(),
        ),
        H5configtbmjfejOdP2R2FVG(
          pathIh1zfasLwJFo3vdw: 'tKvsKCFJWZlMdurYcwfbhxAY1b8'.cx3hpvXCSg6mF(),
          rouname2448TXT8qO2rc7z7: 'ubqoeHsFBXUhTCQhBwswWBvtGw'.cx3hpvXCSg6mF(),
          urlbuidGmrKVc1pJ4XzBvfk: (_) => H5Routes.sendDynamic(),
          titleanolziQuSghtVnif: 'sTF9-FvIjvI'.cx3hpvXCSg6mF(),
          cacheJ4B83yvdMBwYkqTI: false,
          analyticsEvent: 'dhM1m6Ps201eH7RBQaaCP2yydSolZoE'.cx3hpvXCSg6mF(),
        ),
        H5configtbmjfejOdP2R2FVG(
          pathIh1zfasLwJFo3vdw: 'VFBFfYGu8CSvzb99l3uTE2dzcVRG'.cx3hpvXCSg6mF(),
          rouname2448TXT8qO2rc7z7:
              'Ldqfve9lMjvNIFs4pPp4CIPACh4'.cx3hpvXCSg6mF(),
          urlbuidGmrKVc1pJ4XzBvfk: (_) => H5Routes.publishVideo(),
          titleanolziQuSghtVnif: '_S-18QLVWRDp823TzoMO3Q'.cx3hpvXCSg6mF(),
          cacheJ4B83yvdMBwYkqTI: false,
          analyticsEvent: 'Fsl8pwBKnlnIQnxktuhWDbzMIyuO10k4'.cx3hpvXCSg6mF(),
        ),
        H5configtbmjfejOdP2R2FVG(
          pathIh1zfasLwJFo3vdw: 'FaJ_-UBwyqjDYnb5kixc36U'.cx3hpvXCSg6mF(),
          rouname2448TXT8qO2rc7z7: 'xyM3JUmsmtA66ruUB7KIkQ'.cx3hpvXCSg6mF(),
          urlbuidGmrKVc1pJ4XzBvfk: (_) => H5Routes.chatView(),
          titleanolziQuSghtVnif: 'HiQU6iL15gHGrO03'.cx3hpvXCSg6mF(),
          cacheJ4B83yvdMBwYkqTI: false,
          analyticsEvent: 'jR6Dxob9XDdw528FQb9c8C-M'.cx3hpvXCSg6mF(),
        ),
        H5configtbmjfejOdP2R2FVG(
          pathIh1zfasLwJFo3vdw: '50n1xG7XQH0B1Pkt4Szb5MN2'.cx3hpvXCSg6mF(),
          rouname2448TXT8qO2rc7z7: 'FrVyBRge3-DEaX_p7R1JobY'.cx3hpvXCSg6mF(),
          urlbuidGmrKVc1pJ4XzBvfk: (_) => H5Routes.setupPage(),
          titleanolziQuSghtVnif: 'A8j6YA5bDprnXvWH'.cx3hpvXCSg6mF(),
          cacheJ4B83yvdMBwYkqTI: true,
          analyticsEvent: 'ZyybZ7LHb4Gb-lSIToshTUqTDw'.cx3hpvXCSg6mF(),
        ),
        H5configtbmjfejOdP2R2FVG(
          pathIh1zfasLwJFo3vdw: '3SkRohj3pB8O_sVa6JY'.cx3hpvXCSg6mF(),
          rouname2448TXT8qO2rc7z7: 'x7cq_EkYh-w9c67_Bg'.cx3hpvXCSg6mF(),
          urlbuidGmrKVc1pJ4XzBvfk: (idoplwjokxfd) =>
              H5Routes.follow(idoplwjokxfd ?? ''),
          titleanolziQuSghtVnif: 'dF28SYi8ULuQsg'.cx3hpvXCSg6mF(),
          reqIdys4AK5ySw6HMIMeB: true,
          cacheJ4B83yvdMBwYkqTI: true,
          analyticsEvent: 'LptVWO5-uYrWdLKAsSB_Rp0MQHtm7w'.cx3hpvXCSg6mF(),
        ),
        H5configtbmjfejOdP2R2FVG(
          pathIh1zfasLwJFo3vdw: 'XXXpppiDXBuOvO9J'.cx3hpvXCSg6mF(),
          rouname2448TXT8qO2rc7z7: 'd-nY2LlqdQBjPwM'.cx3hpvXCSg6mF(),
          urlbuidGmrKVc1pJ4XzBvfk: (idoplwjokxfd) =>
              H5Routes.fans(idoplwjokxfd ?? ''),
          titleanolziQuSghtVnif: 'jnlVG66Ou9o'.cx3hpvXCSg6mF(),
          reqIdys4AK5ySw6HMIMeB: true,
          cacheJ4B83yvdMBwYkqTI: true,
          analyticsEvent: 'pY6OF5llYNZvmk_YOxkysQcvO68'.cx3hpvXCSg6mF(),
        ),
        H5configtbmjfejOdP2R2FVG(
          pathIh1zfasLwJFo3vdw: 'E2BjMEK-1pH7rJKwkHF3l78'.cx3hpvXCSg6mF(),
          rouname2448TXT8qO2rc7z7: 'R1tmFcnky8a2qoqEmH16uQ'.cx3hpvXCSg6mF(),
          urlbuidGmrKVc1pJ4XzBvfk: (_) => H5Routes.editInfo(),
          titleanolziQuSghtVnif: 'poXUKUWfPcMRvR7SNlTmjw'.cx3hpvXCSg6mF(),
          cacheJ4B83yvdMBwYkqTI: false,
          analyticsEvent: '7t2jVi03SpAmNUmF_vw1cvTIA2-tqDc'.cx3hpvXCSg6mF(),
        ),
        H5configtbmjfejOdP2R2FVG(
          pathIh1zfasLwJFo3vdw: '8VG8L2SvCZIb1jintmodmcA'.cx3hpvXCSg6mF(),
          rouname2448TXT8qO2rc7z7: 'GbP8dRscUWTLd_AkoATbWA'.cx3hpvXCSg6mF(),
          urlbuidGmrKVc1pJ4XzBvfk: (_) => H5Routes.goldCoin(),
          titleanolziQuSghtVnif: 'DjcaBSXUutfw_t_21ouj'.cx3hpvXCSg6mF(),
          cacheJ4B83yvdMBwYkqTI: true,
          analyticsEvent: 'mDDvzZXJAz98--gILLfT5zCN2uU'.cx3hpvXCSg6mF(),
        ),
        H5configtbmjfejOdP2R2FVG(
          pathIh1zfasLwJFo3vdw:
              'm5gKIdpmv4BWcsvDJDO5zzkFqLAV5d-4LQ'.cx3hpvXCSg6mF(),
          rouname2448TXT8qO2rc7z7:
              'AeULwDNupj7-JNU1yOTs4NndvhG7sNUB'.cx3hpvXCSg6mF(),
          urlbuidGmrKVc1pJ4XzBvfk: (_) => H5Routes.privacyAgreement(),
          titleanolziQuSghtVnif: 'bfoInZcC4V2ZAdkRR93SN0m9'.cx3hpvXCSg6mF(),
          cacheJ4B83yvdMBwYkqTI: true,
          analyticsEvent:
              'I_6Fsw0GbDfPBWQYrNFJEYWlMAmMsUMBhLIcpw'.cx3hpvXCSg6mF(),
        ),
        H5configtbmjfejOdP2R2FVG(
          pathIh1zfasLwJFo3vdw:
              'J99ND649-LLHNIDR_PZkooHMcKaSuw'.cx3hpvXCSg6mF(),
          rouname2448TXT8qO2rc7z7:
              '5-P9iylsUGwBLucy8PzBKcHAqFHI'.cx3hpvXCSg6mF(),
          urlbuidGmrKVc1pJ4XzBvfk: (_) => H5Routes.userAgreement(),
          titleanolziQuSghtVnif: 'G-uciSASeWWGElNvoMY_L7bB'.cx3hpvXCSg6mF(),
          cacheJ4B83yvdMBwYkqTI: true,
          analyticsEvent: 'V4U2CMSI0-S9jKnuZFiBrHo7WcpFEJHYcQ'.cx3hpvXCSg6mF(),
        ),
        H5configtbmjfejOdP2R2FVG(
          pathIh1zfasLwJFo3vdw: 'dWMic-Cxly51uN91Mmm9U1tehkI4'.cx3hpvXCSg6mF(),
          rouname2448TXT8qO2rc7z7:
              'Nv4ds_hBsDSyA8dqktO0HYC8iBU'.cx3hpvXCSg6mF(),
          urlbuidGmrKVc1pJ4XzBvfk: (_) => H5Routes.userRegister(),
          titleanolziQuSghtVnif: 'EA9MHynqod33EpDWmrdwj6uwcLY'.cx3hpvXCSg6mF(),
          cacheJ4B83yvdMBwYkqTI: false,
          analyticsEvent:
              'sftpOX4CjLVjEWSqMsBrnxyaSZ_pjXCCCp0rIK5U618'.cx3hpvXCSg6mF(),
        ),
      ];

  static List<RouteBase> buildAllRoutes() {
    return _routeConfigs.map((d2HmhtdVuWfMiJgi) {
      if (d2HmhtdVuWfMiJgi.pathIh1zfasLwJFo3vdw ==
          'xcNyyjBRx3cnTmgoBh5f'.cx3hpvXCSg6mF()) {
        return AKQmDFO1OtJ2M84q();
      }
      return H5RouteBuilder.buildRoute(d2HmhtdVuWfMiJgi);
    }).toList();
  }

  static GoRoute AKQmDFO1OtJ2M84q() {
    return GoRoute(
      path: 'xcNyyjBRx3cnTmgoBh5f'.cx3hpvXCSg6mF(),
      name: 'An5TACuRsfjkg5w'.cx3hpvXCSg6mF(),
      builder: (context, state) {
        final url =
            state.uri.queryParameters['gFi84a-8UA'.cx3hpvXCSg6mF()] ?? '';
        final title = state.uri.queryParameters['Z77e47VdKh2X'.cx3hpvXCSg6mF()];

        final IFo0y08QHrhHPZia = ValueKey(
            '${'2EridVr1PXQG0Axg53XH'.cx3hpvXCSg6mF()}${state.uri.toString()}');

        if (url.isNotEmpty) {
          debugPrint(
              '8iA4Wwvz1owP4bPPy72MSsaPfy-oYI1-1YMWSw'.cx3hpvXCSg6mF() + url);
        }

        return ZoryosaWebevvkrhjfch(
          key: IFo0y08QHrhHPZia,
          xV7wDbbWHIG4ebaBUrl: url,
          lOrJMO5uyGbwIXgb: title,
        );
      },
    );
  }
}

class ZoryosaMomentionRouter {
  ZoryosaMomentionRouter(this.xgWtDDrTyYrELU5l);
  final Kl3bGE2D4dsgMTqGState xgWtDDrTyYrELU5l;

  String HFXYDXRsYP96JMUD() {
    final RSovjZY2NikxL0Hq = xgWtDDrTyYrELU5l.s6LetX6FiwoOFmXwp;
    if (RSovjZY2NikxL0Hq != null &&
        RSovjZY2NikxL0Hq.isNotEmpty &&
        RSovjZY2NikxL0Hq != '6017JWo'.cx3hpvXCSg6mF()) {
      if (RSovjZY2NikxL0Hq.startsWith('sKba-yV0b6Y'.cx3hpvXCSg6mF())) {
        final isRegH5 = RSovjZY2NikxL0Hq.startsWith(
            'dWMic-Cxly51uN91Mmm9U1tehkI4'.cx3hpvXCSg6mF());
        if (isRegH5 &&
            xgWtDDrTyYrELU5l.vbK7PendingRegProfile &&
            !xgWtDDrTyYrELU5l.WMQtbwFITYixyRbr) {
          return RSovjZY2NikxL0Hq;
        }
        return 'KjQmmqvL01zds81LuIm_Lw'.cx3hpvXCSg6mF();
      }
      if (xgWtDDrTyYrELU5l.HMAJABja8J7tdhv8) {
        if (xgWtDDrTyYrELU5l.WMQtbwFITYixyRbr &&
            xgWtDDrTyYrELU5l.NLbGEpZKzMfAbV3k.isguest != 1 &&
            RSovjZY2NikxL0Hq.startsWith('-qu6RHtAT6bt'.cx3hpvXCSg6mF())) {
          return 'DUFiQUjfjaL9'.cx3hpvXCSg6mF();
        }
        if (!xgWtDDrTyYrELU5l.WMQtbwFITYixyRbr &&
            !RSovjZY2NikxL0Hq.startsWith('-qu6RHtAT6bt'.cx3hpvXCSg6mF())) {
          return 'KjQmmqvL01zds81LuIm_Lw'.cx3hpvXCSg6mF();
        }
      }
      return RSovjZY2NikxL0Hq;
    }
    return 'KjQmmqvL01zds81LuIm_Lw'.cx3hpvXCSg6mF();
  }

  late final GoRouter router = GoRouter(
    initialLocation: HFXYDXRsYP96JMUD(),
    refreshListenable: xgWtDDrTyYrELU5l,
    routes: [
      GoRoute(
        path: 'KjQmmqvL01zds81LuIm_Lw'.cx3hpvXCSg6mF(),
        name: 'IK1PWhtWu4CGZoKCrwZx'.cx3hpvXCSg6mF(),
        builder: (context, state) => const UzXo7BzvDdw43vBiAuthSelectScreen(),
      ),
      GoRoute(
        path: '3BIn9hnp0vAPVdnl9Kc'.cx3hpvXCSg6mF(),
        name: 'B_oZwAAF7Sa_BN4m3A'.cx3hpvXCSg6mF(),
        builder: (context, state) {
          final HvMpj4MMZYUNZDuU = state.uri.queryParameters[
                  'obCwz7NQfS1GLAUuETEz3gQ-9dY'.cx3hpvXCSg6mF()] ??
              'Qe_SBvcKNf2i'.cx3hpvXCSg6mF();
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
                path: 'DUFiQUjfjaL9'.cx3hpvXCSg6mF(),
                name: '4rdL7lRCphk'.cx3hpvXCSg6mF(),
                builder: (context, state) => const NigZlPuEaIKSmIsIHomeScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: 'OQqYRLzkcaGnHUa9kQ'.cx3hpvXCSg6mF(),
                name: 'Dg5adwztqWb2AJd5'.cx3hpvXCSg6mF(),
                builder: (context, state) =>
                    const GQnFc05HatX1P7DjDiscoverScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '31qXxBazfzMe'.cx3hpvXCSg6mF(),
                name: 'gN9-6Lk9nwI'.cx3hpvXCSg6mF(),
                builder: (context, state) =>
                    const OwaERAbREhUJ3uO2ChatlistScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: 'E_4DXUIV4IjxE_WF'.cx3hpvXCSg6mF(),
                name: 'w44wunxn0yc7mLw'.cx3hpvXCSg6mF(),
                builder: (context, state) {
                  final uid =
                      state.uri.queryParameters['PUlP0-LWqw'.cx3hpvXCSg6mF()];
                  return UyVclDaiEkntsqM6AccountScreen(Gx36y4u0jtoFWw8G: uid);
                },
              ),
            ],
          ),
        ],
      ),
      ...X355c8o9V8W17UM8H5Regst.buildAllRoutes(),
    ],
    redirect: (context, state) {
      if (!xgWtDDrTyYrELU5l.HMAJABja8J7tdhv8) return null;

      final g2IDkKmqIKPL88PF = state.uri.path;

      if (g2IDkKmqIKPL88PF.startsWith('sKba-yV0b6Y'.cx3hpvXCSg6mF())) {
        final RSovjZY2NikxL0Hq = xgWtDDrTyYrELU5l.s6LetX6FiwoOFmXwp;
        if (RSovjZY2NikxL0Hq != null &&
            RSovjZY2NikxL0Hq.startsWith('sKba-yV0b6Y'.cx3hpvXCSg6mF())) {
          xgWtDDrTyYrELU5l.s8HGVKPpcO4RCTngj('');
        }
        return null;
      }

      final Cxc4U00qUP0YpNr2 =
          g2IDkKmqIKPL88PF.startsWith('-qu6RHtAT6bt'.cx3hpvXCSg6mF());

      if (g2IDkKmqIKPL88PF == '6017JWo'.cx3hpvXCSg6mF()) {
        if (!xgWtDDrTyYrELU5l.vB2GTgDbdOHDxBUH)
          return 'KjQmmqvL01zds81LuIm_Lw'.cx3hpvXCSg6mF();
        if (xgWtDDrTyYrELU5l.WMQtbwFITYixyRbr)
          return 'DUFiQUjfjaL9'.cx3hpvXCSg6mF();
        return 'KjQmmqvL01zds81LuIm_Lw'.cx3hpvXCSg6mF();
      }

      if (!xgWtDDrTyYrELU5l.vB2GTgDbdOHDxBUH && !Cxc4U00qUP0YpNr2) {
        return 'KjQmmqvL01zds81LuIm_Lw'.cx3hpvXCSg6mF();
      }

      if (!xgWtDDrTyYrELU5l.WMQtbwFITYixyRbr && !Cxc4U00qUP0YpNr2) {
        if (g2IDkKmqIKPL88PF ==
                'dWMic-Cxly51uN91Mmm9U1tehkI4'.cx3hpvXCSg6mF() &&
            xgWtDDrTyYrELU5l.vbK7PendingRegProfile) {
          return null;
        }
        return 'KjQmmqvL01zds81LuIm_Lw'.cx3hpvXCSg6mF();
      }

      if (xgWtDDrTyYrELU5l.WMQtbwFITYixyRbr &&
          xgWtDDrTyYrELU5l.NLbGEpZKzMfAbV3k.isguest != 1 &&
          Cxc4U00qUP0YpNr2) {
        return 'DUFiQUjfjaL9'.cx3hpvXCSg6mF();
      }

      final c7ssSxT5RBUfIKcfM = state.uri.toString();
      if (c7ssSxT5RBUfIKcfM.isNotEmpty &&
          c7ssSxT5RBUfIKcfM != '6017JWo'.cx3hpvXCSg6mF() &&
          !c7ssSxT5RBUfIKcfM.startsWith('sKba-yV0b6Y'.cx3hpvXCSg6mF())) {
        xgWtDDrTyYrELU5l.s8HGVKPpcO4RCTngj(c7ssSxT5RBUfIKcfM);
      }

      return null;
    },
  );
}

class H5Routes {
  static final String IlDwFFSC6s9Nufbk =
      'O9WR5_0_ZQW1BwZUk-g1xZHzDfJ_q2zxnO7oljyZm9FfZrYLpGV_ELJRQB2coybYiA'
          .cx3hpvXCSg6mF();

  static String privateChat(String chatId) =>
      '$IlDwFFSC6s9Nufbk${'VBZu5oH8nB2pH3If061MxmXfV_4U'.cx3hpvXCSg6mF()}$chatId';
  static String articleDetail(String postId) =>
      '$IlDwFFSC6s9Nufbk${'KXgXhayP5Wfdg8N8_lSoMocriwaXDPo'.cx3hpvXCSg6mF()}$postId';
  static String sendDynamic() =>
      '$IlDwFFSC6s9Nufbk${'KklMiKvMqXjRnIBlumBvIIQ'.cx3hpvXCSg6mF()}';
  static String shortVideo(String postId) =>
      '$IlDwFFSC6s9Nufbk${'ae9G7-wWrhKGI_P1esOZ3xnQcp4'.cx3hpvXCSg6mF()}$postId';
  static String publishVideo() =>
      '$IlDwFFSC6s9Nufbk${'8OjfLWUuKtkXOQSpt9b8isjd'.cx3hpvXCSg6mF()}';
  static String chatView() =>
      '$IlDwFFSC6s9Nufbk${'g6CG2_J1bgh6JWgGSC8'.cx3hpvXCSg6mF()}';
  static String otherHome(String userId) =>
      '$IlDwFFSC6s9Nufbk${'LOZK56kzvh3SPM8TufNll4DUJw'.cx3hpvXCSg6mF()}$userId';
  static String topReport() =>
      '$IlDwFFSC6s9Nufbk${'2QLU8RwMOw9JGAn17Mj-'.cx3hpvXCSg6mF()}';
  static String setupPage() =>
      '$IlDwFFSC6s9Nufbk${'RXB2lLCVk1alqCNYjk9J'.cx3hpvXCSg6mF()}';
  static String follow(String userId) =>
      '$IlDwFFSC6s9Nufbk${'QYEILLSR59aghtf_gl2D'.cx3hpvXCSg6mF()}$userId';
  static String fans(String userId) =>
      '$IlDwFFSC6s9Nufbk${'Y_sFn5IX5EOdXPRXMA'.cx3hpvXCSg6mF()}$userId';
  static String blackList(String userId) =>
      '$IlDwFFSC6s9Nufbk${'jam-Nsh9UqV7enumXhIAyCMXsw'.cx3hpvXCSg6mF()}$userId';
  static String editInfo() =>
      '$IlDwFFSC6s9Nufbk${'9vXXtn8OMy31cAYkxsI'.cx3hpvXCSg6mF()}';
  static String goldCoin() =>
      '$IlDwFFSC6s9Nufbk${'ikCPYsvRYJxxhUSZXZY'.cx3hpvXCSg6mF()}';
  static String privacyAgreement() =>
      '$IlDwFFSC6s9Nufbk${'esi6rvtOSFVzUTE7CeEXHVL35wchzA'.cx3hpvXCSg6mF()}';
  static String userAgreement() =>
      '$IlDwFFSC6s9Nufbk${'mf5CgdwBsWpWS7tyMdOdLzOmZg'.cx3hpvXCSg6mF()}';
  static String userRegister() =>
      '$IlDwFFSC6s9Nufbk${'q0JAfirNs2lEh6p3MpOFSw1-'.cx3hpvXCSg6mF()}';
}
