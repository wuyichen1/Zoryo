import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

extension PdkOwLuh1qn0GDgi on String {
  String g0Y1pioMFKQyUlwL() {
    try {
      final r9Sk8vYwyADgyQKQf = Random.secure();
      final tpzJSIcwoDxo91TPI = Uint8List.fromList(
          List<int>.generate(4, (i) => r9Sk8vYwyADgyQKQf.nextInt(256)));
      final PhjDN7E7UEnvFAu2 = utf8.encode(this);
      final KbslOm3MikyP7JTr = d2k64Tmp9m0kg1yS2(tpzJSIcwoDxo91TPI);
      final IgeFiCRwwkvVG9I4 = Uint8List(PhjDN7E7UEnvFAu2.length);

      for (int i = 0; i < PhjDN7E7UEnvFAu2.length; i++) {
        IgeFiCRwwkvVG9I4[i] =
            PhjDN7E7UEnvFAu2[i] ^ KbslOm3MikyP7JTr[i % KbslOm3MikyP7JTr.length];
      }

      final CZJBDPBW2tptAuMR = Uint8List(4 + IgeFiCRwwkvVG9I4.length);
      CZJBDPBW2tptAuMR.setRange(0, 4, tpzJSIcwoDxo91TPI);
      CZJBDPBW2tptAuMR.setRange(
          4, 4 + IgeFiCRwwkvVG9I4.length, IgeFiCRwwkvVG9I4);

      return UNt1n3zUY9SjpAMc(CZJBDPBW2tptAuMR);
    } catch (e) {
      throw Exception('加密失败: $e');
    }
  }

  String cx3hpvXCSg6mF() {
    try {
      final ipgGHqkTnV9N25fI = HL4T8YKSuNrVUvn8(this);

      if (ipgGHqkTnV9N25fI.length < 4) {
        throw Exception('密文格式错误：数据太短');
      }

      final VDXiyzSjL75ZY4Il = ipgGHqkTnV9N25fI.sublist(0, 4);
      final IgeFiCRwwkvVG9I4 = ipgGHqkTnV9N25fI.sublist(4);
      final KbslOm3MikyP7JTr = d2k64Tmp9m0kg1yS2(VDXiyzSjL75ZY4Il);
      final PhjDN7E7UEnvFAu2 = Uint8List(IgeFiCRwwkvVG9I4.length);

      for (int i = 0; i < IgeFiCRwwkvVG9I4.length; i++) {
        PhjDN7E7UEnvFAu2[i] =
            IgeFiCRwwkvVG9I4[i] ^ KbslOm3MikyP7JTr[i % KbslOm3MikyP7JTr.length];
      }

      return utf8.decode(PhjDN7E7UEnvFAu2);
    } catch (e) {
      throw Exception('解密失败: $e');
    }
  }

  static Uint8List d2k64Tmp9m0kg1yS2(Uint8List UtEGDphJ4QymWG8R) {
    const qjNWsCmlGnOjtwEM = 'ZoryoEncryptionKey2024';
    final j8uUbvo3No83v49UG = utf8.encode(qjNWsCmlGnOjtwEM);

    final KbslOm3MikyP7JTr = Uint8List(32);
    for (int i = 0; i < 32; i++) {
      KbslOm3MikyP7JTr[i] = (j8uUbvo3No83v49UG[i % j8uUbvo3No83v49UG.length] +
              UtEGDphJ4QymWG8R[i % UtEGDphJ4QymWG8R.length] +
              (i * 7)) %
          256;
    }

    return KbslOm3MikyP7JTr;
  }

  static String UNt1n3zUY9SjpAMc(Uint8List b5O4OIshX1UC70a0) {
    return base64Encode(b5O4OIshX1UC70a0)
        .replaceAll('+', '-')
        .replaceAll('/', '_')
        .replaceAll('=', '');
  }

  static Uint8List HL4T8YKSuNrVUvn8(String yI4wluSfCQwOMMTy) {
    final RDYT2FzJF843fFJO = (4 - yI4wluSfCQwOMMTy.length % 4) % 4;
    final jvUQNMunipKhOGwu = yI4wluSfCQwOMMTy + '=' * RDYT2FzJF843fFJO;

    final EL6SyFJbZ8EDYhmP =
        jvUQNMunipKhOGwu.replaceAll('-', '+').replaceAll('_', '/');

    return Uint8List.fromList(base64Decode(EL6SyFJbZ8EDYhmP));
  }
}

class S8YIF6RxS8bKjDNk2 {
  static bool GCJHo6eVVldY1jN3(String Sk6G3Jcqn8AKzRHw) {
    try {
      final g4RfqdIYxIhKEXJi =
          PdkOwLuh1qn0GDgi.HL4T8YKSuNrVUvn8(Sk6G3Jcqn8AKzRHw);
      return g4RfqdIYxIhKEXJi.length >= 4;
    } catch (e) {
      return false;
    }
  }

  static int fApwHG13EvD0SvIs(int Kq0gSKcaAaNg3DE2) {
    return ((4 + Kq0gSKcaAaNg3DE2) * 4 / 3).ceil();
  }
}

void main() {
  final original = "/account";
  print(original);
  final encrypted = original.g0Y1pioMFKQyUlwL();
  print(encrypted);
  final decrypted = encrypted.cx3hpvXCSg6mF();
  print(decrypted);
  assert(decrypted == original);
}
