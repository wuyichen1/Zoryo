import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

/// 字符串加密解密扩展
/// 使用流式加密（XOR），加密结果长度接近源字符串
extension StringEncryption on String {
  /// 加密字符串
  ///
  /// 使用流式XOR加密，每次加密都会生成随机的IV（初始化向量），
  /// 因此相同字符串的加密结果会不同，但解密后能还原为原始字符串。
  /// 加密结果长度 ≈ 源字符串长度 + 约6个字符（4字节IV的Base64编码）
  ///
  /// 返回格式：Base64URL编码（IV(4字节) + 密文）
  ///
  /// 示例：
  /// ```dart
  /// String plaintext = "Hello World";
  /// String encrypted1 = plaintext.encrypt();
  /// String encrypted2 = plaintext.encrypt(); // 结果与encrypted1不同
  /// String decrypted = encrypted1.decrypt(); // 还原为 "Hello World"
  /// ```
  String encrypt() {
    try {
      // 生成4字节随机IV
      final random = Random.secure();
      final iv = Uint8List.fromList(
          List<int>.generate(4, (i) => random.nextInt(256)));

      // 将字符串转换为UTF-8字节
      final plainBytes = utf8.encode(this);

      // 使用固定密钥派生流密钥（从IV派生，确保每次加密结果不同）
      final streamKey = _deriveStreamKey(iv);

      // 执行XOR加密（流式，长度不变）
      final cipherBytes = Uint8List(plainBytes.length);
      for (int i = 0; i < plainBytes.length; i++) {
        cipherBytes[i] = plainBytes[i] ^ streamKey[i % streamKey.length];
      }

      // 合并IV(4字节) + 密文
      final combined = Uint8List(4 + cipherBytes.length);
      combined.setRange(0, 4, iv);
      combined.setRange(4, 4 + cipherBytes.length, cipherBytes);

      // 使用Base64URL编码，去掉填充的=号
      return _base64UrlEncode(combined);
    } catch (e) {
      throw Exception('加密失败: $e');
    }
  }

  /// 解密字符串
  ///
  /// 解密由 [encrypt] 方法加密的字符串。
  ///
  /// 示例：
  /// ```dart
  /// String encrypted = "base64url_encoded_data";
  /// String decrypted = encrypted.decrypt();
  /// ```
  String decrypt() {
    try {
      // 解码Base64URL
      final combined = _base64UrlDecode(this);

      // 检查最小长度（至少需要4字节IV）
      if (combined.length < 4) {
        throw Exception('密文格式错误：数据太短');
      }

      // 提取IV（前4字节）
      final iv = combined.sublist(0, 4);

      // 提取密文（剩余部分）
      final cipherBytes = combined.sublist(4);

      // 派生流密钥（与加密时相同）
      final streamKey = _deriveStreamKey(iv);

      // 执行XOR解密（XOR的特性：加密和解密是同一个操作）
      final plainBytes = Uint8List(cipherBytes.length);
      for (int i = 0; i < cipherBytes.length; i++) {
        plainBytes[i] = cipherBytes[i] ^ streamKey[i % streamKey.length];
      }

      // 将字节转换回字符串
      return utf8.decode(plainBytes);
    } catch (e) {
      throw Exception('解密失败: $e');
    }
  }

  /// 从IV派生流密钥
  /// 使用固定密钥和IV通过简单哈希生成流密钥
  static Uint8List _deriveStreamKey(Uint8List iv) {
    // 固定密钥（在实际应用中，可以从配置文件或环境变量读取）
    const fixedKey = 'ZoryoEncryptionKey2024';
    final keyBytes = utf8.encode(fixedKey);

    // 使用简单的密钥派生：将固定密钥和IV混合
    final streamKey = Uint8List(32); // 32字节流密钥
    for (int i = 0; i < 32; i++) {
      streamKey[i] = (keyBytes[i % keyBytes.length] +
              iv[i % iv.length] +
              (i * 7)) %
          256;
    }

    return streamKey;
  }

  /// Base64URL编码（去掉填充的=号）
  static String _base64UrlEncode(Uint8List data) {
    return base64Encode(data)
        .replaceAll('+', '-')
        .replaceAll('/', '_')
        .replaceAll('=', '');
  }

  /// Base64URL解码（自动添加填充）
  static Uint8List _base64UrlDecode(String encoded) {
    // 添加填充
    final padding = (4 - encoded.length % 4) % 4;
    final padded = encoded + '=' * padding;

    // 转换回标准Base64
    final base64 = padded.replaceAll('-', '+').replaceAll('_', '/');

    return Uint8List.fromList(base64Decode(base64));
  }
}

/// 字符串加密解密工具类（可选，提供静态方法）
class StringEncryptionUtil {
  /// 验证字符串是否为有效的加密格式
  static bool isValidEncryptedFormat(String encrypted) {
    try {
      final combined = StringEncryption._base64UrlDecode(encrypted);
      // 至少需要4字节IV
      return combined.length >= 4;
    } catch (e) {
      return false;
    }
  }

  /// 获取加密结果的大概长度（用于估算）
  /// [plainTextLength] 原始文本长度
  /// 返回：加密后的大概长度
  static int estimateEncryptedLength(int plainTextLength) {
    // IV(4字节) + 密文(原文长度) = 4 + plainTextLength
    // Base64编码后长度约为：ceil((4 + plainTextLength) * 4 / 3)
    return ((4 + plainTextLength) * 4 / 3).ceil();
  }
}

void main() {
  final original = 'zoryo@gmail.com';
  print(original);
  final encrypted = original.encrypt();
  print(encrypted);
  final decrypted = encrypted.decrypt();
  print(decrypted);
  assert(decrypted == original);
}

