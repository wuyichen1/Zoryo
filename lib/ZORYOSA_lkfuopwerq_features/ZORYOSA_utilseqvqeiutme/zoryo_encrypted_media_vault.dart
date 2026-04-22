import 'dart:io';

import 'package:archive/archive.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

/// 更换 `assets/images_encrypted.zip` / `assets/videos_encrypted.zip` 后递增，以触发重新解压。
const int kZoryoEncryptedMediaRevision = 1;

/// 启动时从加密 zip 解压图片/视频到应用支持目录；仅 [bundledOnlyAssets] 仍走 Flutter AssetBundle。
class ZoryoEncryptedMediaVault {
  ZoryoEncryptedMediaVault._();
  static final ZoryoEncryptedMediaVault instance = ZoryoEncryptedMediaVault._();

  static const Set<String> bundledOnlyAssets = {
    'assets/images/zoryo_inip.png',
    'assets/images/zoryo_logo.png',
  };

  static const String imagesZipAsset = 'assets/images_encrypted.zip';
  static const String videosZipAsset = 'assets/videos_encrypted.zip';

  /// 与打包 zip 时使用的密码一致（macOS `zip -er` / `zip -e -P` 传统 ZipCrypto）。
  static const String zipPassword = 'qazwsx';

  String? _rootDir;
  Future<void>? _readyFuture;

  Future<void> ensureReady() {
    _readyFuture ??= _prepare();
    return _readyFuture!;
  }

  Future<void> _prepare() async {
    if (kIsWeb) {
      _rootDir = null;
      return;
    }
    final support = await getApplicationSupportDirectory();
    final root = Directory(p.join(support.path, 'zoryo_decrypted_media'));
    final revFile = File(p.join(root.path, '.media_rev'));
    if (await root.exists() &&
        await revFile.exists() &&
        (await revFile.readAsString()).trim() ==
            '$kZoryoEncryptedMediaRevision') {
      _rootDir = root.path;
      return;
    }
    if (await root.exists()) {
      await root.delete(recursive: true);
    }
    await root.create(recursive: true);

    await _extractZipAsset(imagesZipAsset, root.path, zipPassword);
    await _extractZipAsset(videosZipAsset, root.path, zipPassword);

    await revFile.writeAsString('$kZoryoEncryptedMediaRevision', flush: true);
    _rootDir = root.path;
    if (kDebugMode) {
      debugPrint('ZoryoEncryptedMediaVault: extracted to $_rootDir');
    }
  }

  static Future<void> _extractZipAsset(
    String assetKey,
    String destRoot,
    String password,
  ) async {
    final byteData = await rootBundle.load(assetKey);
    final bytes = byteData.buffer
        .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes);
    // archive 解码过程会在部分场景改写输入 buffer，需传入可变拷贝避免
    // Unsupported operation: Cannot modify an unmodifiable list。
    final mutableBytes = Uint8List.fromList(bytes);
    final archive = ZipDecoder().decodeBytes(mutableBytes, password: password);
    try {
      for (final file in archive.files) {
        if (!file.isFile) continue;
        final logical = logicalPathFromZipEntry(file.name);
        if (logical.isEmpty) continue;
        final outPath = p.join(destRoot, logical);
        final outFile = File(outPath);
        await outFile.parent.create(recursive: true);
        final content = file.readBytes();
        if (content != null && content.isNotEmpty) {
          await outFile.writeAsBytes(content, flush: true);
        }
      }
    } finally {
      await archive.clear();
    }
  }

  /// zip 内路径规范为与逻辑资源一致，例如 `assets/images/a.png`。
  static String logicalPathFromZipEntry(String name) {
    var n = name.replaceAll('\\', '/');
    if (n.startsWith('./')) n = n.substring(2);
    if (n.endsWith('/')) return '';
    if (n.startsWith('assets/')) return n;
    if (n.startsWith('images/')) return p.join('assets', n);
    if (n.startsWith('videos/')) return p.join('assets', n);
    return n;
  }

  /// 返回磁盘绝对路径；若为 [bundledOnlyAssets] 或未解压则返回 null（使用 AssetImage）。
  String? absolutePathForLogicalAsset(String assetPath) {
    if (bundledOnlyAssets.contains(assetPath)) return null;
    if (!assetPath.startsWith('assets/images/') &&
        !assetPath.startsWith('assets/videos/')) {
      return null;
    }
    final root = _rootDir;
    if (root == null) return null;
    final f = File(p.join(root, assetPath));
    if (f.existsSync()) return f.path;
    return null;
  }
}
