import 'dart:io';

import 'package:flutter/material.dart';
import 'package:zoryo/features/utils/zoryo_encrypted_media_vault.dart';

const String _kImagesPrefix = 'assets/images/';

String _normalizeImageAssetPath(String imageName) {
  final value = imageName.trim();
  if (value.isEmpty) {
    return '${_kImagesPrefix}zoryo_defava.png';
  }
  if (value.startsWith('assets/')) {
    return value;
  }
  return '$_kImagesPrefix$value';
}

ImageProvider zoryoResolvedImageProvider(String imageName) {
  final assetPath = _normalizeImageAssetPath(imageName);
  if (ZoryoEncryptedMediaVault.bundledOnlyAssets.contains(assetPath)) {
    return AssetImage(assetPath);
  }
  final abs =
      ZoryoEncryptedMediaVault.instance.absolutePathForLogicalAsset(assetPath);
  if (abs != null) {
    return FileImage(File(abs));
  }
  return AssetImage(assetPath);
}

/// 除 [ZoryoEncryptedMediaVault.bundledOnlyAssets] 外，其余 `assets/images/`、`assets/videos/` 从解压目录读取。
class ZoryoResolvedImage extends StatelessWidget {
  const ZoryoResolvedImage({
    super.key,
    required this.imageName,
    this.width,
    this.height,
    this.fit,
    this.alignment = Alignment.center,
    this.errorBuilder,
    this.color,
    this.colorBlendMode,
    this.filterQuality = FilterQuality.low,
    this.repeat = ImageRepeat.noRepeat,
    this.matchTextDirection = false,
    this.package,
  });

  final String imageName;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final AlignmentGeometry alignment;
  final ImageErrorWidgetBuilder? errorBuilder;
  final Color? color;
  final BlendMode? colorBlendMode;
  final FilterQuality filterQuality;
  final ImageRepeat repeat;
  final bool matchTextDirection;
  final String? package;

  @override
  Widget build(BuildContext context) {
    final assetPath = _normalizeImageAssetPath(imageName);
    if (ZoryoEncryptedMediaVault.bundledOnlyAssets.contains(assetPath)) {
      return Image.asset(
        assetPath,
        package: package,
        width: width,
        height: height,
        fit: fit,
        alignment: alignment,
        errorBuilder: errorBuilder,
        color: color,
        colorBlendMode: colorBlendMode,
        filterQuality: filterQuality,
        repeat: repeat,
        matchTextDirection: matchTextDirection,
      );
    }
    final abs =
        ZoryoEncryptedMediaVault.instance.absolutePathForLogicalAsset(assetPath);
    if (abs != null) {
      return Image.file(
        File(abs),
        width: width,
        height: height,
        fit: fit ?? BoxFit.contain,
        alignment: alignment,
        errorBuilder: errorBuilder,
        color: color,
        colorBlendMode: colorBlendMode,
        filterQuality: filterQuality,
        repeat: repeat,
        matchTextDirection: matchTextDirection,
      );
    }
    return Image.asset(
      assetPath,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      errorBuilder: errorBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      filterQuality: filterQuality,
      repeat: repeat,
      matchTextDirection: matchTextDirection,
    );
  }
}
