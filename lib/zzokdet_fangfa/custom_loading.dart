import 'package:flutter/material.dart';

/// 自定义加载组件
/// 提供简单的加载动画和弹窗功能
class CustomLoading {
  static OverlayEntry? _overlayEntry;
  static bool _isShowing = false;

  /// 显示加载弹窗
  static void show({
    required BuildContext context,
    String? message,
    Color? color,
    Color? backgroundColor,
  }) {
    if (_isShowing) return;

    _isShowing = true;
    _overlayEntry = OverlayEntry(
      builder: (context) => _LoadingOverlay(
        message: message,
        color: color,
        backgroundColor: backgroundColor,
      ),
    );

    Overlay.of(context).insert(_overlayEntry!);
  }

  /// 显示成功弹窗
  static void showSuccess({
    required BuildContext context,
    String? message,
    Color? color,
  }) {
    _dismiss();
    _showToast(
      context: context,
      message: message ?? '操作成功',
      color: color ?? Colors.green,
      icon: Icons.check_circle,
    );
  }

  /// 显示错误弹窗
  static void showError({
    required BuildContext context,
    String? message,
    Color? color,
  }) {
    _dismiss();
    _showToast(
      context: context,
      message: message ?? '操作失败',
      color: color ?? Colors.red,
      icon: Icons.error,
    );
  }

  /// 关闭加载弹窗
  static void dismiss() {
    _dismiss();
  }

  static void _dismiss() {
    if (_overlayEntry != null) {
      _overlayEntry!.remove();
      _overlayEntry = null;
    }
    _isShowing = false;
  }

  static void _showToast({
    required BuildContext context,
    required String message,
    required Color color,
    required IconData icon,
  }) {
    _isShowing = true;
    _overlayEntry = OverlayEntry(
      builder: (context) => _ToastOverlay(
        message: message,
        color: color,
        icon: icon,
      ),
    );

    Overlay.of(context).insert(_overlayEntry!);

    // 2秒后自动关闭
    Future.delayed(const Duration(milliseconds: 1300), () {
      _dismiss();
    });
  }
}

/// 加载覆盖层
class _LoadingOverlay extends StatefulWidget {
  final String? message;
  final Color? color;
  final Color? backgroundColor;

  const _LoadingOverlay({
    this.message,
    this.color,
    this.backgroundColor,
  });

  @override
  State<_LoadingOverlay> createState() => _LoadingOverlayState();
}

class _LoadingOverlayState extends State<_LoadingOverlay>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = widget.color ?? theme.primaryColor;
    final backgroundColor =
        widget.backgroundColor ?? Colors.black.withOpacity(0.5);

    return Material(
      color: backgroundColor,
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(color),
                  strokeWidth: 3.0,
                ),
              ),
              if (widget.message != null) ...[
                const SizedBox(height: 16),
                Text(
                  widget.message!,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

/// 提示覆盖层
class _ToastOverlay extends StatefulWidget {
  final String message;
  final Color color;
  final IconData icon;

  const _ToastOverlay({
    required this.message,
    required this.color,
    required this.icon,
  });

  @override
  State<_ToastOverlay> createState() => _ToastOverlayState();
}

class _ToastOverlayState extends State<_ToastOverlay>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, -1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Center(
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: SlideTransition(
            position: _slideAnimation,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 32),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              decoration: BoxDecoration(
                color: widget.color,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    widget.icon,
                    color: Colors.white,
                    size: 20,
                  ),
                  const SizedBox(width: 12),
                  Flexible(
                    child: Text(
                      widget.message,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
