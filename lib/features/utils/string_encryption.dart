import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

extension StringEncryption on String {
  /// 加密字符串
  String encrypt() {
    try {
      final random = Random.secure();
      final iv =
          Uint8List.fromList(List<int>.generate(4, (i) => random.nextInt(256)));

      final plainBytes = utf8.encode(this);

      final streamKey = _deriveStreamKey(iv);

      final cipherBytes = Uint8List(plainBytes.length);
      for (int i = 0; i < plainBytes.length; i++) {
        cipherBytes[i] = plainBytes[i] ^ streamKey[i % streamKey.length];
      }

      final combined = Uint8List(4 + cipherBytes.length);
      combined.setRange(0, 4, iv);
      combined.setRange(4, 4 + cipherBytes.length, cipherBytes);

      return _base64UrlEncode(combined);
    } catch (e) {
      throw Exception('加密失败: $e');
    }
  }

  /// 解密字符串
  String decrypt() {
    try {
      final combined = _base64UrlDecode(this);

      if (combined.length < 4) {
        throw Exception('密文格式错误：数据太短');
      }

      final iv = combined.sublist(0, 4);

      final cipherBytes = combined.sublist(4);

      final streamKey = _deriveStreamKey(iv);

      final plainBytes = Uint8List(cipherBytes.length);
      for (int i = 0; i < cipherBytes.length; i++) {
        plainBytes[i] = cipherBytes[i] ^ streamKey[i % streamKey.length];
      }

      return utf8.decode(plainBytes);
    } catch (e) {
      throw Exception('解密失败: $e');
    }
  }

  static Uint8List _deriveStreamKey(Uint8List iv) {
    const fixedKey = 'ZoryoEncryptionKey2024';
    final keyBytes = utf8.encode(fixedKey);

    final streamKey = Uint8List(32);
    for (int i = 0; i < 32; i++) {
      streamKey[i] =
          (keyBytes[i % keyBytes.length] + iv[i % iv.length] + (i * 7)) % 256;
    }

    return streamKey;
  }

  static String _base64UrlEncode(Uint8List data) {
    return base64Encode(data)
        .replaceAll('+', '-')
        .replaceAll('/', '_')
        .replaceAll('=', '');
  }

  static Uint8List _base64UrlDecode(String encoded) {
    final padding = (4 - encoded.length % 4) % 4;
    final padded = encoded + '=' * padding;

    final base64 = padded.replaceAll('-', '+').replaceAll('_', '/');

    return Uint8List.fromList(base64Decode(base64));
  }
}

class StringEncryptionUtil {
  static bool isValidEncryptedFormat(String encrypted) {
    try {
      final combined = StringEncryption._base64UrlDecode(encrypted);
      return combined.length >= 4;
    } catch (e) {
      return false;
    }
  }

  /// 获取加密结果的大概长度（用于估算）
  static int estimateEncryptedLength(int plainTextLength) {
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
