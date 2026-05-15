import 'dart:async';
import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:devicelocale/devicelocale.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';

import 'package:geolocator/geolocator.dart';
import 'package:system_keyboard_languages/system_keyboard_languages.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:zoryo/c5gzDoQsRUamMK4Lbbb/dOz6AQPOqKSKp6Bs.dart';

class TYByfhBLBbOpsUPX {
  static const String MRA2xAj3Q98qgdAQ = '44332211'; // 75798346
  static const String l0lMVHamwIxoHX3mo = "https://opi.rknrcl7c.link";
  static const String JScf3pZR4JTFYM8l = '1.0.0';
}

R1hkTaLvbZRHU0ix9() async {
  DeviceInfoPlugin QnuCsIVegq2Hq1kO = DeviceInfoPlugin();
  IosDeviceInfo iA1QWjz3wj5caIPC = await QnuCsIVegq2Hq1kO.iosInfo;
  DOz6AQPOqKSKp6Bs().WyaWZmkwgIRcqPT0 = iA1QWjz3wj5caIPC.utsname.machine;
  if (DOz6AQPOqKSKp6Bs().Nc3Tzi3dil1aUo7i.isEmpty) {
    DOz6AQPOqKSKp6Bs().Nc3Tzi3dil1aUo7i =
        '${iA1QWjz3wj5caIPC.identifierForVendor!}${TYByfhBLBbOpsUPX.MRA2xAj3Q98qgdAQ}';
  }
}

class B7ZF45Jj2KfmwTPpw {
  final String y9zu3cilwTrAz6qG;
  final String UIaKP1T6NGdpyE29;
  B7ZF45Jj2KfmwTPpw({
    required this.y9zu3cilwTrAz6qG,
    required this.UIaKP1T6NGdpyE29,
  });
}

bool D31rsZYqv03VVJHp2 = true;

List<dynamic> uxrmBTvjZWj4dy7W = [];
Future eSjfTfHTSDTX1oux() async {
  uxrmBTvjZWj4dy7W = await Devicelocale.preferredLanguages ?? [];
}

List<String> ZOIJMmf7z2USRSkV = [];
Future GayO6ZrsEO4kEqmP() async {
  ZOIJMmf7z2USRSkV = [];
  for (var UPl8GffK0mdkoqpA in RXyP5VFDlPtzfn9W) {
    if (await canLaunchUrlString("${UPl8GffK0mdkoqpA.UIaKP1T6NGdpyE29}://")) {
      ZOIJMmf7z2USRSkV.add(UPl8GffK0mdkoqpA.y9zu3cilwTrAz6qG);
    }
  }
}

String f2wibr4rqEhFScg4L = '';
Future<bool> pp1HHok2qbZ6CNb6() async {
  bool Vi2esg60XRLo4NfI = false;

  final String dWdij7hNy1xhdVUs = Platform.localeName;
  f2wibr4rqEhFScg4L = await FlutterNativeTimezone.getLocalTimezone();
  if (dWdij7hNy1xhdVUs.contains('zh') || dWdij7hNy1xhdVUs.contains('CN')) {
    Vi2esg60XRLo4NfI = true;
  }
  if (f2wibr4rqEhFScg4L == 'Asia/Shanghai' ||
      f2wibr4rqEhFScg4L == 'Asia/Chongqing') {
    Vi2esg60XRLo4NfI = true;
  }

  return Vi2esg60XRLo4NfI;
}

List<String> ajYNtfnbv2AiEBdD = [];
Future<void> gQm4bg4C6vGdhA6E() async {
  ajYNtfnbv2AiEBdD = await SystemKeyboardLanguages().languages();
}

// 定位：如果当前为拒绝状态则弹出系统授权弹窗请求定位权限
Future<LocationPermission> wStUCFk1wYl7LLo9(
    LocationPermission XEDYwXpjmlARD0Vt) async {
  if (XEDYwXpjmlARD0Vt == LocationPermission.denied) {
    XEDYwXpjmlARD0Vt = await Geolocator.requestPermission();
  }
  return XEDYwXpjmlARD0Vt;
}

// Future<bool> IkusxqZZsKdvtShc(BuildContext context) async {
//   await VYbxArumCTrtB1Yb(context);
//   return true;
// }

// 定位：通过 Geolocator 获取当前高精度位置并设置 10 秒超时
Future<Position> CU5YkHu9WOEFIb4u() async {
  return await Geolocator.getCurrentPosition(
    desiredAccuracy: LocationAccuracy.high,
  ).timeout(const Duration(seconds: 10));
}

D4dGcuUacc2dNJIhH LhbaYlMUXORK4ER6 = D4dGcuUacc2dNJIhH();

class D4dGcuUacc2dNJIhH {
  double e6XwUqwbgNIJ8IEil = 0.0;
  double pl4BmXplmWA1Du59 = 0.0;
  String e3ug1LsQKfELrg38 = '';
  String m7D21q9fZPGI0IhF = '';
  String ChCHnYDvphX1OXLV = '';
  String IMruQGR13K0CVhCX = '';

  // 定位：统一保存当前位置的经纬度与地址信息
  void qZEmXkLdrxvRjfIf({
    required double U8mYhq1LVIMCisyH,
    required double mM514MRAKqiS793Q,
    required String MKFDeeVveDw9r4iC,
    required String lWZ6oqDs8nDKKmvN,
    required String FtAjikZFhP9kzkYy,
    required String t2HVUXLazAazivZaB,
  }) {
    e6XwUqwbgNIJ8IEil = U8mYhq1LVIMCisyH;
    pl4BmXplmWA1Du59 = mM514MRAKqiS793Q;
    e3ug1LsQKfELrg38 = MKFDeeVveDw9r4iC;
    m7D21q9fZPGI0IhF = lWZ6oqDs8nDKKmvN;
    ChCHnYDvphX1OXLV = FtAjikZFhP9kzkYy;
    IMruQGR13K0CVhCX = t2HVUXLazAazivZaB;
  }
}

List<B7ZF45Jj2KfmwTPpw> RXyP5VFDlPtzfn9W = [
  B7ZF45Jj2KfmwTPpw(y9zu3cilwTrAz6qG: 'WhatsApp', UIaKP1T6NGdpyE29: 'whatsapp'),
  B7ZF45Jj2KfmwTPpw(
      y9zu3cilwTrAz6qG: 'Instagram', UIaKP1T6NGdpyE29: 'instagram'),
  B7ZF45Jj2KfmwTPpw(y9zu3cilwTrAz6qG: 'Facebook', UIaKP1T6NGdpyE29: 'fb'),
  B7ZF45Jj2KfmwTPpw(y9zu3cilwTrAz6qG: 'TikTok', UIaKP1T6NGdpyE29: 'tiktok'),
  B7ZF45Jj2KfmwTPpw(
      y9zu3cilwTrAz6qG: 'GoogleMaps', UIaKP1T6NGdpyE29: 'comgooglemaps'),
  B7ZF45Jj2KfmwTPpw(y9zu3cilwTrAz6qG: 'twitter', UIaKP1T6NGdpyE29: 'tweetie'),
  B7ZF45Jj2KfmwTPpw(y9zu3cilwTrAz6qG: 'qq', UIaKP1T6NGdpyE29: 'mqq'),
  B7ZF45Jj2KfmwTPpw(y9zu3cilwTrAz6qG: 'weiChat', UIaKP1T6NGdpyE29: 'wechat'),
  B7ZF45Jj2KfmwTPpw(y9zu3cilwTrAz6qG: 'Aliapp', UIaKP1T6NGdpyE29: 'alipay'),
];
