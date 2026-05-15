import 'package:flutter/material.dart';
import 'dart:typed_data';
import 'package:convert/convert.dart';
import 'package:encrypt/encrypt.dart' as pWTwJEqi02LqTpQv;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

extension I7v6M0chSdWjZ6nY on String {
  static final bNUZ39H8M8b1GJ8r =
      pWTwJEqi02LqTpQv.Key.fromUtf8('518486he8pzgbjsk'); //oxl7tgv2g9pjo2n2
  static final D7JWzk97Plw8yild =
      pWTwJEqi02LqTpQv.IV.fromUtf8('614436p28qzhkjsl'); //98fno2eixou2j4dd

  static final WvyvC6clW4CJHR1z = pWTwJEqi02LqTpQv.Encrypter(pWTwJEqi02LqTpQv
      .AES(bNUZ39H8M8b1GJ8r, mode: pWTwJEqi02LqTpQv.AESMode.cbc));

  String q1x6sz56i957CVwS3() {
    try {
      final pqlNo95KOOpw3mVs =
          WvyvC6clW4CJHR1z.encrypt(this, iv: D7JWzk97Plw8yild);
      return hex.encode(pqlNo95KOOpw3mVs.bytes);
    } catch (eBhFni028eLKPvNQ) {
      print("$eBhFni028eLKPvNQ");
      return '';
    }
  }

  String xxEPCTFkQZQMW5TC() {
    try {
      final pqlNo95KOOpw3mVs =
          pWTwJEqi02LqTpQv.Encrypted(Uint8List.fromList(hex.decode(this)));
      return WvyvC6clW4CJHR1z.decrypt(pqlNo95KOOpw3mVs, iv: D7JWzk97Plw8yild);
    } catch (eBhFni028eLKPvNQ) {
      print("$eBhFni028eLKPvNQ");
      return '';
    }
  }
}

class DOz6AQPOqKSKp6Bs extends ChangeNotifier {
  static DOz6AQPOqKSKp6Bs XilhpOaRK2L8aluV = DOz6AQPOqKSKp6Bs._internal();

  factory DOz6AQPOqKSKp6Bs() {
    return XilhpOaRK2L8aluV;
  }

  DOz6AQPOqKSKp6Bs._internal();

  static void reset() {
    XilhpOaRK2L8aluV = DOz6AQPOqKSKp6Bs._internal();
  }

  late SharedPreferences Yr2QU2ZyE9IRxJSb;
  static const FlutterSecureStorage dTfFNCe7kvGb1t8g = FlutterSecureStorage();

  Future<void> x9wHbiG8Ru5EczbW() async {
    Yr2QU2ZyE9IRxJSb = await SharedPreferences.getInstance();

    await tGk7xXsCWW79WlPs(() async {
      _Nc3Tzi3dil1aUo7i =
          await dTfFNCe7kvGb1t8g.read(key: 'hih1ljemr8yc35_Nc3Tzi3dil1aUo7i') ??
              _Nc3Tzi3dil1aUo7i;
    });
    await tGk7xXsCWW79WlPs(() async {
      _i6eZ3Y7z38lp6BCP =
          await dTfFNCe7kvGb1t8g.read(key: 'hih1ljemr8yc35_i6eZ3Y7z38lp6BCP') ??
              _i6eZ3Y7z38lp6BCP;
    });
    await tGk7xXsCWW79WlPs(() async {
      _fChEg4YdO5awTPeH =
          await dTfFNCe7kvGb1t8g.read(key: 'hih1ljemr8yc35_fChEg4YdO5awTPeH') ??
              _fChEg4YdO5awTPeH;
    });

    await tGk7xXsCWW79WlPs(() async {
      _WyaWZmkwgIRcqPT0 =
          Yr2QU2ZyE9IRxJSb.getString('hih1ljemr8yc35_WyaWZmkwgIRcqPT0') ??
              _WyaWZmkwgIRcqPT0;
    });
    await tGk7xXsCWW79WlPs(() async {
      _DeWqeLeYk4a6IrL9 =
          Yr2QU2ZyE9IRxJSb.getString('hih1ljemr8yc35_DeWqeLeYk4a6IrL9') ??
              _DeWqeLeYk4a6IrL9;
    });
    await tGk7xXsCWW79WlPs(() async {
      _GWZ8t1UEya294Fnn =
          Yr2QU2ZyE9IRxJSb.getBool('hih1ljemr8yc35_GWZ8t1UEya294Fnn') ??
              _GWZ8t1UEya294Fnn;
    });
    await tGk7xXsCWW79WlPs(() async {
      _ceNcYRxLDpStI27s =
          Yr2QU2ZyE9IRxJSb.getString('hih1ljemr8yc35_ceNcYRxLDpStI27s') ??
              _ceNcYRxLDpStI27s;
    });
    await tGk7xXsCWW79WlPs(() async {
      _HyUYVxj2rDBg66mZ =
          Yr2QU2ZyE9IRxJSb.getString('hih1ljemr8yc35_HyUYVxj2rDBg66mZ') ??
              _HyUYVxj2rDBg66mZ;
    });
  }

  bool _GWZ8t1UEya294Fnn = false;
  bool get GWZ8t1UEya294Fnn => _GWZ8t1UEya294Fnn;
  set GWZ8t1UEya294Fnn(bool pebMeAb4f3oABiYd) {
    _GWZ8t1UEya294Fnn = pebMeAb4f3oABiYd;
    Yr2QU2ZyE9IRxJSb.setBool('hih1ljemr8yc35_GWZ8t1UEya294Fnn', pebMeAb4f3oABiYd);
  }

  String _Nc3Tzi3dil1aUo7i = '';
  String get Nc3Tzi3dil1aUo7i => _Nc3Tzi3dil1aUo7i;
  set Nc3Tzi3dil1aUo7i(String vIdy6yTe6ffTB7hW) {
    _Nc3Tzi3dil1aUo7i = vIdy6yTe6ffTB7hW;
    dTfFNCe7kvGb1t8g.write(
        key: 'hih1ljemr8yc35_Nc3Tzi3dil1aUo7i', value: vIdy6yTe6ffTB7hW);
  }

  String _WyaWZmkwgIRcqPT0 = '';
  String get WyaWZmkwgIRcqPT0 => _WyaWZmkwgIRcqPT0;
  set WyaWZmkwgIRcqPT0(String pebMeAb4f3oABiYd) {
    _WyaWZmkwgIRcqPT0 = pebMeAb4f3oABiYd;
    Yr2QU2ZyE9IRxJSb.setString(
        'hih1ljemr8yc35_WyaWZmkwgIRcqPT0', pebMeAb4f3oABiYd);
  }

  String _i6eZ3Y7z38lp6BCP = '';
  String get i6eZ3Y7z38lp6BCP => _i6eZ3Y7z38lp6BCP;
  set i6eZ3Y7z38lp6BCP(String vIdy6yTe6ffTB7hW) {
    _i6eZ3Y7z38lp6BCP = vIdy6yTe6ffTB7hW;
    dTfFNCe7kvGb1t8g.write(
        key: 'hih1ljemr8yc35_i6eZ3Y7z38lp6BCP', value: vIdy6yTe6ffTB7hW);
  }

  String _DeWqeLeYk4a6IrL9 = '';
  String get DeWqeLeYk4a6IrL9 => _DeWqeLeYk4a6IrL9;
  set DeWqeLeYk4a6IrL9(String pebMeAb4f3oABiYd) {
    _DeWqeLeYk4a6IrL9 = pebMeAb4f3oABiYd;
    Yr2QU2ZyE9IRxJSb.setString(
        'hih1ljemr8yc35_DeWqeLeYk4a6IrL9', pebMeAb4f3oABiYd);
  }

  String _ceNcYRxLDpStI27s = '';
  String get ceNcYRxLDpStI27s => _ceNcYRxLDpStI27s;
  set ceNcYRxLDpStI27s(String pebMeAb4f3oABiYd) {
    _ceNcYRxLDpStI27s = pebMeAb4f3oABiYd;
    Yr2QU2ZyE9IRxJSb.setString(
        'hih1ljemr8yc35_ceNcYRxLDpStI27s', pebMeAb4f3oABiYd);
  }

  String _fChEg4YdO5awTPeH = '';
  String get fChEg4YdO5awTPeH => _fChEg4YdO5awTPeH;
  set fChEg4YdO5awTPeH(String vIdy6yTe6ffTB7hW) {
    _fChEg4YdO5awTPeH = vIdy6yTe6ffTB7hW;
    dTfFNCe7kvGb1t8g.write(
        key: 'hih1ljemr8yc35_fChEg4YdO5awTPeH', value: vIdy6yTe6ffTB7hW);
  }

  String _HyUYVxj2rDBg66mZ = '';
  String get HyUYVxj2rDBg66mZ => _HyUYVxj2rDBg66mZ;
  set HyUYVxj2rDBg66mZ(String pebMeAb4f3oABiYd) {
    _HyUYVxj2rDBg66mZ = pebMeAb4f3oABiYd;
    Yr2QU2ZyE9IRxJSb.setString(
        'hih1ljemr8yc35_HyUYVxj2rDBg66mZ', pebMeAb4f3oABiYd);
  }

  Future<void> clearvd76T7VyPrIELu34() async {
    try {
      await tGk7xXsCWW79WlPs(() async {
        await dTfFNCe7kvGb1t8g.delete(key: 'hih1ljemr8yc35_Nc3Tzi3dil1aUo7i');
      });
      await tGk7xXsCWW79WlPs(() async {
        await dTfFNCe7kvGb1t8g.delete(key: 'hih1ljemr8yc35_i6eZ3Y7z38lp6BCP');
      });
      await tGk7xXsCWW79WlPs(() async {
        await dTfFNCe7kvGb1t8g.delete(key: 'hih1ljemr8yc35_fChEg4YdO5awTPeH');
      });

      _Nc3Tzi3dil1aUo7i = '';
      _i6eZ3Y7z38lp6BCP = '';
      _fChEg4YdO5awTPeH = '';

      await tGk7xXsCWW79WlPs(() async {
        await Yr2QU2ZyE9IRxJSb.remove('hih1ljemr8yc35_WyaWZmkwgIRcqPT0');
      });
      await tGk7xXsCWW79WlPs(() async {
        await Yr2QU2ZyE9IRxJSb.remove('hih1ljemr8yc35_DeWqeLeYk4a6IrL9');
      });
      await tGk7xXsCWW79WlPs(() async {
        await Yr2QU2ZyE9IRxJSb.remove('hih1ljemr8yc35_GWZ8t1UEya294Fnn');
      });
      await tGk7xXsCWW79WlPs(() async {
        await Yr2QU2ZyE9IRxJSb.remove('hih1ljemr8yc35_ceNcYRxLDpStI27s');
      });
      await tGk7xXsCWW79WlPs(() async {
        await Yr2QU2ZyE9IRxJSb.remove('hih1ljemr8yc35_HyUYVxj2rDBg66mZ');
      });

      _WyaWZmkwgIRcqPT0 = '';
      _DeWqeLeYk4a6IrL9 = '';
      _GWZ8t1UEya294Fnn = false;
      _ceNcYRxLDpStI27s = '';
      _HyUYVxj2rDBg66mZ = '';

      final XDmBmXjyXGu6qa0C = await SharedPreferences.getInstance();
      await tGk7xXsCWW79WlPs(() async {
        await XDmBmXjyXGu6qa0C.remove('mEM4lHBHal54wv7');
      });
      await tGk7xXsCWW79WlPs(() async {
        await XDmBmXjyXGu6qa0C.remove('ZKrddwSf1wRCX9a');
      });
      await tGk7xXsCWW79WlPs(() async {
        await XDmBmXjyXGu6qa0C.remove('JauW29WYX1Q5SnvH');
      });
      await tGk7xXsCWW79WlPs(() async {
        await XDmBmXjyXGu6qa0C.remove('u9hEir0XVOsCZVMq');
      });
      await tGk7xXsCWW79WlPs(() async {
        await XDmBmXjyXGu6qa0C.remove('LMeWVOZBe0nIHgi');
      });
      await tGk7xXsCWW79WlPs(() async {
        await XDmBmXjyXGu6qa0C.remove('K5BYRFlnvGhUcpP');
      });
      await tGk7xXsCWW79WlPs(() async {
        await XDmBmXjyXGu6qa0C.remove('pzzFF49ma0MqbA3');
      });
      await tGk7xXsCWW79WlPs(() async {
        await XDmBmXjyXGu6qa0C.remove('fXgyeGwUxgQ85WB');
      });
      await tGk7xXsCWW79WlPs(() async {
        await XDmBmXjyXGu6qa0C.remove('fHqL5RRc9mgt3gR');
      });
      await tGk7xXsCWW79WlPs(() async {
        await XDmBmXjyXGu6qa0C.remove('e82jyaExzc3IEEGa');
      });

      final LtPaDdMSM7nLANmp = XDmBmXjyXGu6qa0C.getKeys();
      for (final key in LtPaDdMSM7nLANmp) {
        if (key.startsWith('SOWAxgjTlgKFGBw') ||
            key.startsWith('LjsZ1ulxhPNRXlK')) {
          await tGk7xXsCWW79WlPs(() async {
            await XDmBmXjyXGu6qa0C.remove(key);
          });
        }
      }

      notifyListeners();
    } catch (e) {}
  }
}

Future tGk7xXsCWW79WlPs(Function() v4324CRJOMrqsSRvd) async {
  try {
    await v4324CRJOMrqsSRvd();
  } catch (_) {}
}
