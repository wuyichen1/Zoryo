import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../router/app_theme.dart';
import '../../zzokdet_fangfa/app_state.dart';
import '../../zzokdet_fangfa/h71YrziMFtWP6pMg_image.dart';

class EBbEnnC9KeLzgmSzScaffold extends StatelessWidget {
  const EBbEnnC9KeLzgmSzScaffold({super.key, required this.dhsTqsF78WV8cVBC});
  final StatefulNavigationShell dhsTqsF78WV8cVBC;

  void nijDq1PYlIo328hh(int i5mYyrZGJ6QAEd1Eo) {
    dhsTqsF78WV8cVBC.goBranch(i5mYyrZGJ6QAEd1Eo,
        initialLocation: i5mYyrZGJ6QAEd1Eo == dhsTqsF78WV8cVBC.currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    final SMqaWwM5TE3r7YiP =
        Theme.of(context).extension<GradientTheme>()!.primaryGradient;
    final SaN4ZR9oHZKdghwb = MediaQuery.of(context).padding.bottom;
    final tv8Ge2otCzusFzm0 = GoRouter.of(context);
    final LggNvY4gaC5aPI1r =
        tv8Ge2otCzusFzm0.routerDelegate.currentConfiguration;
    final RAq4PIUKnTs6Qw3v = LggNvY4gaC5aPI1r.matches;

    String c17B0LqjHcPNW110t = LggNvY4gaC5aPI1r.uri.path;
    if (RAq4PIUKnTs6Qw3v.isNotEmpty) {
      final topMatch = RAq4PIUKnTs6Qw3v.last;
      c17B0LqjHcPNW110t = topMatch.matchedLocation;
    }

    final jFHJUGp8HmulSRDZ = ModalRoute.of(context);
    if (jFHJUGp8HmulSRDZ != null && jFHJUGp8HmulSRDZ.settings.name != null) {
      final r7avtoR9Y7alMGl8d = jFHJUGp8HmulSRDZ.settings.name!;
      if (r7avtoR9Y7alMGl8d.contains('h5-') ||
          r7avtoR9Y7alMGl8d.startsWith('/h5/')) {
        return Scaffold(body: dhsTqsF78WV8cVBC);
      }
    }

    final zkG2O5Q1jMpUk4VD = c17B0LqjHcPNW110t.startsWith('/h5/');
    final UANdJ3FTEpFG7mt5 = c17B0LqjHcPNW110t.startsWith('/chat/room');

    if (zkG2O5Q1jMpUk4VD) {
      return Scaffold(body: dhsTqsF78WV8cVBC);
    }

    final dPk5Lq2mY20pGMHV = !zkG2O5Q1jMpUk4VD &&
        !UANdJ3FTEpFG7mt5 &&
        (c17B0LqjHcPNW110t == '/home' ||
            c17B0LqjHcPNW110t == '/discover' ||
            c17B0LqjHcPNW110t == '/chat' ||
            c17B0LqjHcPNW110t == '/account');

    return Scaffold(
      body: Stack(
        children: [
          dhsTqsF78WV8cVBC,
          if (dPk5Lq2mY20pGMHV)
            Positioned(
              left: 20,
              right: 20,
              bottom: 30,
              child: ZyNiX4k9K0achLKt(
                GL7ekdqqh7RTkgdg: dhsTqsF78WV8cVBC.currentIndex,
                DmkRvdbRvmLiDDbc: nijDq1PYlIo328hh,
                yhCcLT9R3e3Uzaad: () => context.push('/h5/send-dynamic'),
                l6N4AhHrEgDYd8md: SMqaWwM5TE3r7YiP,
                SaN4ZR9oHZKdghwb: SaN4ZR9oHZKdghwb,
              ),
            ),
        ],
      ),
    );
  }
}

class ZyNiX4k9K0achLKt extends StatelessWidget {
  const ZyNiX4k9K0achLKt({
    required this.GL7ekdqqh7RTkgdg,
    required this.DmkRvdbRvmLiDDbc,
    required this.yhCcLT9R3e3Uzaad,
    required this.l6N4AhHrEgDYd8md,
    required this.SaN4ZR9oHZKdghwb,
  });

  final int GL7ekdqqh7RTkgdg;
  final ValueChanged<int> DmkRvdbRvmLiDDbc;
  final VoidCallback yhCcLT9R3e3Uzaad;
  final Gradient l6N4AhHrEgDYd8md;
  final double SaN4ZR9oHZKdghwb;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 18),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 154, 78, 32),
                const Color.fromARGB(255, 24, 24, 24),
                const Color.fromARGB(255, 17, 70, 144),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 6,
                offset: const Offset(0, -2),
              ),
            ],
            borderRadius: BorderRadius.circular(88),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DkSsuZqgcZ4ASQkd(
                  YMMtYKTDlr5oVdaj: 'assets/images/homeACGgxq7fEfqZnJYE.png',
                  ERo5z44EaB2vPs8X: 'assets/images/ACGgxq7fEfqZnJYE.png',
                  l1pSGPowJkfGj8cuu: 'Home',
                  nDxX31vGXT8or2M2: GL7ekdqqh7RTkgdg == 0,
                  b2gHH4Kg5ipUi50F8: () => DmkRvdbRvmLiDDbc(0),
                ),
                DkSsuZqgcZ4ASQkd(
                  YMMtYKTDlr5oVdaj: 'assets/images/starpA4fb0awN1RGCDJH.png',
                  ERo5z44EaB2vPs8X: 'assets/images/pA4fb0awN1RGCDJH.png',
                  l1pSGPowJkfGj8cuu: 'Discover',
                  nDxX31vGXT8or2M2: GL7ekdqqh7RTkgdg == 1,
                  b2gHH4Kg5ipUi50F8: () => DmkRvdbRvmLiDDbc(1),
                ),
                SizedBox(width: 30),
                DkSsuZqgcZ4ASQkd(
                  YMMtYKTDlr5oVdaj: 'assets/images/ding1dkl4u5zV7x0kFjE.png',
                  ERo5z44EaB2vPs8X: 'assets/images/1dkl4u5zV7x0kFjE.png',
                  l1pSGPowJkfGj8cuu: 'Chat',
                  nDxX31vGXT8or2M2: GL7ekdqqh7RTkgdg == 2,
                  b2gHH4Kg5ipUi50F8: () => DmkRvdbRvmLiDDbc(2),
                ),
                A6WYYoppsBokDl9vf(
                  zsh0d1Z9pnpjYUoA: 'Account',
                  nDxX31vGXT8or2M2: GL7ekdqqh7RTkgdg == 3,
                  tsm6ejzHDJAGMpaK: () => DmkRvdbRvmLiDDbc(3),
                ),
              ],
            ),
          ),
        ),
        Center(
          child: GestureDetector(
            onTap: yhCcLT9R3e3Uzaad,
            child: Container(
              width: 55,
              height: 40,
              decoration: BoxDecoration(
                gradient: l6N4AhHrEgDYd8md,
                borderRadius: BorderRadius.circular(66),
              ),
              child: const Icon(Icons.add, color: Colors.white, size: 28),
            ),
          ),
        ),
      ],
    );
  }
}

class DkSsuZqgcZ4ASQkd extends StatelessWidget {
  const DkSsuZqgcZ4ASQkd({
    required this.YMMtYKTDlr5oVdaj,
    required this.ERo5z44EaB2vPs8X,
    required this.l1pSGPowJkfGj8cuu,
    required this.nDxX31vGXT8or2M2,
    required this.b2gHH4Kg5ipUi50F8,
  });

  final String YMMtYKTDlr5oVdaj;
  final String ERo5z44EaB2vPs8X;
  final String l1pSGPowJkfGj8cuu;
  final bool nDxX31vGXT8or2M2;
  final VoidCallback b2gHH4Kg5ipUi50F8;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: b2gHH4Kg5ipUi50F8,
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              nDxX31vGXT8or2M2 ? ERo5z44EaB2vPs8X : YMMtYKTDlr5oVdaj,
              width: 33,
              height: 33,
            ),
            const SizedBox(height: 4),
            Text(
              l1pSGPowJkfGj8cuu,
              style: TextStyle(
                color: nDxX31vGXT8or2M2
                    ? Colors.white
                    : Colors.white.withOpacity(0.7),
                fontSize: 12,
                fontWeight:
                    nDxX31vGXT8or2M2 ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class A6WYYoppsBokDl9vf extends StatelessWidget {
  const A6WYYoppsBokDl9vf({
    required this.zsh0d1Z9pnpjYUoA,
    required this.nDxX31vGXT8or2M2,
    required this.tsm6ejzHDJAGMpaK,
  });

  final String zsh0d1Z9pnpjYUoA;
  final bool nDxX31vGXT8or2M2;
  final VoidCallback tsm6ejzHDJAGMpaK;

  @override
  Widget build(BuildContext context) {
    final Vp5ZvEkNQoCzrtKf = context.watch<AppState>().NLbGEpZKzMfAbV3k;

    return GestureDetector(
      onTap: tsm6ejzHDJAGMpaK,
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: nDxX31vGXT8or2M2
                      ? Color(0xFFFF8133)
                      : Colors.white.withOpacity(0.7),
                  width: nDxX31vGXT8or2M2 ? 1 : 1,
                ),
              ),
              child: CircleAvatar(
                radius: 11,
                backgroundImage:
                    UPClh6pI9Z9yX3xQ(Vp5ZvEkNQoCzrtKf.RmXHAp70ovHNBN4U),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              zsh0d1Z9pnpjYUoA,
              style: TextStyle(
                color: nDxX31vGXT8or2M2
                    ? Colors.white
                    : Colors.white.withOpacity(0.7),
                fontSize: 12,
                fontWeight:
                    nDxX31vGXT8or2M2 ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
