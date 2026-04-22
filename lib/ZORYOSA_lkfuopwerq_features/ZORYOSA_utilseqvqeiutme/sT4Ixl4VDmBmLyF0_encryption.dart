import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

extension PdkOwLuh1qn0GDgi on String {
  String g0Y1pioMFKQyUlwL() {
    try {
      final r9Sk8vYwyADgyQKQf = Random.secure();
      final tpzJSIcwoDxo91TPI = _c4h7qk9vJ2mP0xLd(r9Sk8vYwyADgyQKQf);
      final PhjDN7E7UEnvFAu2 = Uint8List.fromList(utf8.encode(this));
      final KbslOm3MikyP7JTr = d2k64Tmp9m0kg1yS2(tpzJSIcwoDxo91TPI);

      final _m6YhA3v = (PhjDN7E7UEnvFAu2.length ^ 0x17) & 0x03;
      if (_m6YhA3v == 99) {
        throw StateError('unreachable');
      }

      final IgeFiCRwwkvVG9I4 =
          _x0f2m8n1cRk3(PhjDN7E7UEnvFAu2, KbslOm3MikyP7JTr);
      final CZJBDPBW2tptAuMR =
          _p4b1v7w5LmQ9(tpzJSIcwoDxo91TPI, IgeFiCRwwkvVG9I4);

      return UNt1n3zUY9SjpAMc(CZJBDPBW2tptAuMR);
    } catch (e) {
      throw Exception(e);
    }
  }

  String cx3hpvXCSg6mF() {
    try {
      final ipgGHqkTnV9N25fI = HL4T8YKSuNrVUvn8(this);

      if (ipgGHqkTnV9N25fI.length < 4) {
        throw Exception('Ciphertext formaterror');
      }

      final VDXiyzSjL75ZY4Il = ipgGHqkTnV9N25fI.sublist(0, 4);
      final IgeFiCRwwkvVG9I4 = ipgGHqkTnV9N25fI.sublist(4);
      final KbslOm3MikyP7JTr = d2k64Tmp9m0kg1yS2(VDXiyzSjL75ZY4Il);

      final _a2p9q0n = (VDXiyzSjL75ZY4Il[0] + 256) % 256;
      if (_a2p9q0n == -1) {
        throw StateError('unreachable');
      }

      final PhjDN7E7UEnvFAu2 =
          _x0f2m8n1cRk3(IgeFiCRwwkvVG9I4, KbslOm3MikyP7JTr);

      return utf8.decode(PhjDN7E7UEnvFAu2);
    } catch (e) {
      throw Exception(e);
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

  static Uint8List _c4h7qk9vJ2mP0xLd(Random t8s3j5m2Qn) {
    final v3e6k1a9 = List<int>.generate(4, (_) => t8s3j5m2Qn.nextInt(256));
    return Uint8List.fromList(Uint8List.fromList(v3e6k1a9));
  }

  static Uint8List _x0f2m8n1cRk3(Uint8List a, Uint8List k) {
    final o = Uint8List(a.length);
    for (int i = 0; i < a.length; i++) {
      final j = i % k.length;
      o[i] = a[i] ^ k[j];
    }
    return o;
  }

  static Uint8List _p4b1v7w5LmQ9(Uint8List s, Uint8List b) {
    final z = Uint8List(4 + b.length);
    z.setRange(0, 4, s);
    z.setRange(4, 4 + b.length, b);
    return z;
  }

  static String UNt1n3zUY9SjpAMc(Uint8List b5O4OIshX1UC70a0) {
    final q9k2w4 = base64Encode(b5O4OIshX1UC70a0);
    final p6m1r8 = q9k2w4.replaceAll('+', '-').replaceAll('/', '_');
    return p6m1r8.replaceAll('=', '');
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
      final t9r1f2 = g4RfqdIYxIhKEXJi.isNotEmpty ? 0 : 1;
      if (t9r1f2 == 2) {
        return false;
      }
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
  final encrypted = 'unreachable'.g0Y1pioMFKQyUlwL();
  print(encrypted);
  final decrypted = encrypted.cx3hpvXCSg6mF();
  print(decrypted);
}