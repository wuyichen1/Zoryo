import 'package:flutter/material.dart';

/// 判断图片URL是否为网络图片
bool _isNetworkImage(String url) {
  if (url.isEmpty) return false;
  return url.startsWith('http://') || url.startsWith('https://');
}

/// 智能加载图片 - 自动判断是网络图片还是本地资源
class SmartImage extends StatelessWidget {
  const SmartImage({
    super.key,
    required this.url,
    this.fit,
    this.width,
    this.height,
    this.errorWidget,
    this.placeholder,
  });

  final String url;
  final BoxFit? fit;
  final double? width;
  final double? height;
  final Widget? errorWidget;
  final Widget? placeholder;

  @override
  Widget build(BuildContext context) {
    if (url.isEmpty) {
      return Image.asset(
        'assets/images/zoryo_logo.png',
        fit: fit,
        width: width,
        height: height,
        errorBuilder: (context, error, stackTrace) =>
            errorWidget ?? Image.asset('assets/images/zoryo_logo.png'),
      );
    }

    if (_isNetworkImage(url)) {
      return Image.network(
        url,
        fit: fit,
        width: width,
        height: height,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return placeholder ??
              Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                      : null,
                ),
              );
        },
        errorBuilder: (context, error, stackTrace) =>
            errorWidget ?? Image.asset('assets/images/zoryo_logo.png'),
      );
    } else {
      return Image.asset(
        url,
        fit: fit,
        width: width,
        height: height,
        errorBuilder: (context, error, stackTrace) =>
            errorWidget ?? Image.asset('assets/images/zoryo_logo.png'),
      );
    }
  }
}

/// 智能加载头像 - 用于CircleAvatar的backgroundImage
/// 注意：CircleAvatar 的 backgroundImage 会自动处理加载错误
ImageProvider smartImageProvider(String url) {
  if (url.isEmpty) {
    return const AssetImage('assets/images/zoryo_logo.png');
  }

  if (_isNetworkImage(url)) {
    // NetworkImage 会自动处理网络错误，CircleAvatar 会显示默认背景
    return NetworkImage(url);
  } else {
    // AssetImage 如果资源不存在会抛出异常，但 CircleAvatar 会捕获并显示默认背景
    return AssetImage(url);
  }
}

