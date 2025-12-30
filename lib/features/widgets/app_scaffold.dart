import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../core/theme/app_theme.dart';
import '../../zzokdet_fangfa/app_state.dart';
import '../../zzokdet_fangfa/image_helper.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key, required this.shell});
  final StatefulNavigationShell shell;

  void _onTap(int index) {
    shell.goBranch(index, initialLocation: index == shell.currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    final gradient =
        Theme.of(context).extension<GradientTheme>()!.primaryGradient;
    final safeAreaBottom = MediaQuery.of(context).padding.bottom;
    final router = GoRouter.of(context);
    final routerState = router.routerDelegate.currentConfiguration;
    final matches = routerState.matches;

    String currentPath = routerState.uri.path;
    if (matches.isNotEmpty) {
      final topMatch = matches.last;
      currentPath = topMatch.matchedLocation;
    }

    final modalRoute = ModalRoute.of(context);
    if (modalRoute != null && modalRoute.settings.name != null) {
      final routeName = modalRoute.settings.name!;
      if (routeName.contains('h5-') || routeName.startsWith('/h5/')) {
        return Scaffold(body: shell);
      }
    }

    final isH5Page = currentPath.startsWith('/h5/');
    final isSubRoute = currentPath.startsWith('/chat/room');

    if (isH5Page) {
      return Scaffold(body: shell);
    }

    final isMainPage = !isH5Page &&
        !isSubRoute &&
        (currentPath == '/home' ||
            currentPath == '/discover' ||
            currentPath == '/chat' ||
            currentPath == '/account');

    return Scaffold(
      body: Stack(
        children: [
          shell,
          if (isMainPage)
            Positioned(
              left: 20,
              right: 20,
              bottom: 30,
              child: _FloatingNavBar(
                currentIndex: shell.currentIndex,
                onTap: _onTap,
                onUploadTap: () => context.push('/h5/send-dynamic'),
                gradient: gradient,
                safeAreaBottom: safeAreaBottom,
              ),
            ),
        ],
      ),
    );
  }
}

class _FloatingNavBar extends StatelessWidget {
  const _FloatingNavBar({
    required this.currentIndex,
    required this.onTap,
    required this.onUploadTap,
    required this.gradient,
    required this.safeAreaBottom,
  });

  final int currentIndex;
  final ValueChanged<int> onTap;
  final VoidCallback onUploadTap;
  final Gradient gradient;
  final double safeAreaBottom;

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
                _NavItem(
                  icon: 'assets/images/homeACGgxq7fEfqZnJYE.png',
                  iconSelected: 'assets/images/ACGgxq7fEfqZnJYE.png',
                  label: 'Home',
                  isSelected: currentIndex == 0,
                  onTap: () => onTap(0),
                ),
                _NavItem(
                  icon: 'assets/images/starpA4fb0awN1RGCDJH.png',
                  iconSelected: 'assets/images/pA4fb0awN1RGCDJH.png',
                  label: 'Discover',
                  isSelected: currentIndex == 1,
                  onTap: () => onTap(1),
                ),
                SizedBox(width: 30),
                _NavItem(
                  icon: 'assets/images/ding1dkl4u5zV7x0kFjE.png',
                  iconSelected: 'assets/images/1dkl4u5zV7x0kFjE.png',
                  label: 'Chat',
                  isSelected: currentIndex == 2,
                  onTap: () => onTap(2),
                ),
                _AccountNavItem(
                  label: 'Account',
                  isSelected: currentIndex == 3,
                  onTap: () => onTap(3),
                ),
              ],
            ),
          ),
        ),
        Center(
          child: GestureDetector(
            onTap: onUploadTap,
            child: Container(
              width: 55,
              height: 40,
              decoration: BoxDecoration(
                gradient: gradient,
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

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.icon,
    required this.iconSelected,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final String icon;
  final String iconSelected;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              isSelected ? iconSelected : icon,
              width: 33,
              height: 33,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                color:
                    isSelected ? Colors.white : Colors.white.withOpacity(0.7),
                fontSize: 12,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AccountNavItem extends StatelessWidget {
  const _AccountNavItem({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final currentUser = context.watch<AppState>().currentUser;

    return GestureDetector(
      onTap: onTap,
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
                  color: isSelected
                      ? Color(0xFFFF8133)
                      : Colors.white.withOpacity(0.7),
                  width: isSelected ? 1 : 1,
                ),
              ),
              child: CircleAvatar(
                radius: 11,
                backgroundImage: smartImageProvider(currentUser.RmXHAp70ovHNBN4U),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                color:
                    isSelected ? Colors.white : Colors.white.withOpacity(0.7),
                fontSize: 12,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
