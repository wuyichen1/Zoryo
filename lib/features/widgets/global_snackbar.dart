import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum SnackbarType {
  info,
  success,
  warning,
  error,
}

/// 顶层全局 Snackbar，基于 Overlay 保证显示在所有页面的最上层。
class GlobalSnackbar {
  GlobalSnackbar._();

  static final navigatorKey = GlobalKey<NavigatorState>();
  static OverlayEntry? _entry;
  static Timer? _timer;

  static bool get isShowing => _entry != null;

  static void show(
    String message, {
    SnackbarType type = SnackbarType.info,
    Duration duration = const Duration(seconds: 2),
    String? title,
  }) {
    final overlay = navigatorKey.currentState?.overlay;
    if (overlay == null) return;

    _timer?.cancel();
    _timer = null;

    _entry?.remove();
    _entry = OverlayEntry(
      builder: (context) => _SnackbarOverlay(
        message: message,
        title: title,
        type: type,
      ),
    );

    overlay.insert(_entry!);
    _timer = Timer(duration, hide);
  }

  static void showSuccess(
    String message, {
    Duration duration = const Duration(seconds: 2),
    String? title,
  }) {
    show(
      message,
      type: SnackbarType.success,
      duration: duration,
      title: title,
    );
  }

  static void showInfo(
    String message, {
    Duration duration = const Duration(seconds: 2),
    String? title,
  }) {
    show(
      message,
      type: SnackbarType.info,
      duration: duration,
      title: title,
    );
  }

  static void showWarning(
    String message, {
    Duration duration = const Duration(seconds: 2),
    String? title,
  }) {
    show(
      message,
      type: SnackbarType.warning,
      duration: duration,
      title: title,
    );
  }

  static void showError(
    String message, {
    Duration duration = const Duration(seconds: 2),
    String? title,
  }) {
    show(
      message,
      type: SnackbarType.error,
      duration: duration,
      title: title,
    );
  }

  static void hide() {
    _timer?.cancel();
    _timer = null;
    _entry?.remove();
    _entry = null;
  }
}

class _SnackbarOverlay extends StatelessWidget {
  const _SnackbarOverlay({
    required this.message,
    required this.type,
    this.title,
  });

  final String message;
  final String? title;
  final SnackbarType type;

  @override
  Widget build(BuildContext context) {
    final config = _SnackbarVisualConfig.fromType(type);

    return IgnorePointer(
      ignoring: false,
      child: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: TweenAnimationBuilder<double>(
              tween: Tween(begin: -24, end: 0),
              duration: const Duration(milliseconds: 220),
              curve: Curves.easeOutCubic,
              builder: (context, value, child) {
                return Transform.translate(
                  offset: Offset(0, value),
                  child: child,
                );
              },
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: GlobalSnackbar.hide,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: config.gradient,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: config.shadowColor,
                        blurRadius: 24,
                        offset: const Offset(0, 12),
                      ),
                    ],
                    border: Border.all(
                      color: Colors.white.withOpacity(0.15),
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 16,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            config.icon,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if ((title ?? config.fallbackTitle) != null)
                                Text(
                                  (title ?? config.fallbackTitle)!,
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              Text(
                                message,
                                style: GoogleFonts.poppins(
                                  color: Colors.white.withOpacity(0.95),
                                  fontSize: 14,
                                  height: 1.4,
                                  decoration: TextDecoration.none,
                                ),
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
          ),
        ),
      ),
    );
  }
}

class _SnackbarVisualConfig {
  const _SnackbarVisualConfig({
    required this.gradient,
    required this.icon,
    required this.shadowColor,
    this.fallbackTitle,
  });

  final LinearGradient gradient;
  final IconData icon;
  final Color shadowColor;
  final String? fallbackTitle;

  static _SnackbarVisualConfig fromType(SnackbarType type) {
    switch (type) {
      case SnackbarType.success:
        return _SnackbarVisualConfig(
          gradient: const LinearGradient(
            colors: [Color(0xFF34D399), Color(0xFF10B981)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          icon: Icons.check_rounded,
          shadowColor: const Color(0xFF10B981).withOpacity(0.35),
          fallbackTitle: 'Success',
        );
      case SnackbarType.warning:
        return _SnackbarVisualConfig(
          gradient: const LinearGradient(
            colors: [Color(0xFFFBBF24), Color(0xFFF97316)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          icon: Icons.warning_amber_rounded,
          shadowColor: const Color(0xFFF97316).withOpacity(0.35),
          fallbackTitle: 'Attention',
        );
      case SnackbarType.error:
        return _SnackbarVisualConfig(
          gradient: const LinearGradient(
            colors: [Color(0xFFEF4444), Color(0xFFDC2626)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          icon: Icons.error_outline_rounded,
          shadowColor: const Color(0xFFDC2626).withOpacity(0.4),
          fallbackTitle: 'Error',
        );
      case SnackbarType.info:
        return _SnackbarVisualConfig(
          // gradient: AppTheme.purpleGradient,
          // icon: Icons.info_outline_rounded,
          // shadowColor: AppTheme.primaryPurple.withOpacity(0.35),
          // fallbackTitle: null,
          gradient: const LinearGradient(
            colors: [Color(0xFFFBBF24), Color(0xFFF97316)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          icon: Icons.warning_amber_rounded,
          shadowColor: const Color(0xFFF97316).withOpacity(0.35),
          fallbackTitle: 'Attention',
        );
    }
  }
}
