import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:zoryo/c5gzDoQsRUamMK4Lbbb/dOz6AQPOqKSKp6Bs.dart';
import 'package:zoryo/c5gzDoQsRUamMK4Lbbb/tYByfhBLBbOpsUPX.dart';

class W35NLwF3XrAUFpAC implements Exception {
  final String rpHejd9OVcRq4elB;
  final int? iWHsaHt3Rl0Lz0Q8;

  W35NLwF3XrAUFpAC(this.rpHejd9OVcRq4elB, {this.iWHsaHt3Rl0Lz0Q8});

  @override
  String toString() {
    return 'NetworkException: $rpHejd9OVcRq4elB (Status Code: $iWHsaHt3Rl0Lz0Q8)';
  }
}

class UEWZzutL8YUdiLEW {
  final String ofxUzVM390p8tD2k = TYByfhBLBbOpsUPX.l0lMVHamwIxoHX3mo;
  final int Dc4TX5lM66NLPsPS;
  final int liLR78raHvoR7wkp;

  UEWZzutL8YUdiLEW({
    this.Dc4TX5lM66NLPsPS = 30,
    this.liLR78raHvoR7wkp = 5,
  });

  Future<Map<String, dynamic>> s1Z6Yji9OQQU5e6II(
    String Seb9I7DF055JCbns,
    Map<String, dynamic> MNucbbDoFa7FGmaK,
  ) async {
    final g6tLe9jc5nIkT4WeE = Uri.parse('$ofxUzVM390p8tD2k$Seb9I7DF055JCbns');

    final mvtOPCY5AnjJKqy7 = {
      'Content-Type': 'application/json',
      'appVersion': TYByfhBLBbOpsUPX.JScf3pZR4JTFYM8l,
      'deviceNo': DOz6AQPOqKSKp6Bs().Nc3Tzi3dil1aUo7i,
      'pushToken': DOz6AQPOqKSKp6Bs().DeWqeLeYk4a6IrL9,
      'loginToken': DOz6AQPOqKSKp6Bs().i6eZ3Y7z38lp6BCP,
      'appId': TYByfhBLBbOpsUPX.MRA2xAj3Q98qgdAQ,
    };

    for (int RyLgw89iiKVcJcRh = 0;
        RyLgw89iiKVcJcRh < liLR78raHvoR7wkp;
        RyLgw89iiKVcJcRh++) {
      try {
        final EacOSloQNmHCBpE7 = await G5MIqqUYvsuJFVd5(
            g6tLe9jc5nIkT4WeE, mvtOPCY5AnjJKqy7, MNucbbDoFa7FGmaK);

        final eXGxVzwhqQgNxyKH = g2IgVNpUTATD09Nk(EacOSloQNmHCBpE7);

        return eXGxVzwhqQgNxyKH;
      } catch (zExijJ35UQUqiFvE) {
        print(
            'Request Error (attempt ${RyLgw89iiKVcJcRh + 1}/$liLR78raHvoR7wkp): ${zExijJ35UQUqiFvE}');
        if (RyLgw89iiKVcJcRh == liLR78raHvoR7wkp - 1) {
          throw W35NLwF3XrAUFpAC(
              'The system failed while attempting to process the POST request $g6tLe9jc5nIkT4WeE',
              iWHsaHt3Rl0Lz0Q8: zExijJ35UQUqiFvE is http.Response
                  ? zExijJ35UQUqiFvE.statusCode
                  : null);
        }
        await Future.delayed(Duration(seconds: 2 * (RyLgw89iiKVcJcRh + 1)));
      }
    }
    throw W35NLwF3XrAUFpAC(
        'The workflow was discontinued after hitting the retry cap.');
  }

  Future<http.Response> G5MIqqUYvsuJFVd5(
      Uri oOnZ1kCmn3SoibPj,
      Map<String, String> upFhqLBfWx8jrfsN,
      Map<String, dynamic> JdrR8qMePAgIEtuy) async {
    final MfYpRNPwgT9kQb7w = json.encode(JdrR8qMePAgIEtuy);
    final hRB8t8EqZSSPVOaV = MfYpRNPwgT9kQb7w.q1x6sz56i957CVwS3();

    upFhqLBfWx8jrfsN.forEach((key, value) {
      print('  $key: $value');
    });

    print('  JdrR8qMePAgIEtuy: $JdrR8qMePAgIEtuy');

    try {
      final qP7E6KdgEGEuwfSP = await http
          .post(
            oOnZ1kCmn3SoibPj,
            headers: upFhqLBfWx8jrfsN,
            body: hRB8t8EqZSSPVOaV,
          )
          .timeout(
            Duration(seconds: Dc4TX5lM66NLPsPS),
          );
      return qP7E6KdgEGEuwfSP;
    } catch (e) {
      rethrow;
    }
  }
}

Map<String, dynamic> g2IgVNpUTATD09Nk(http.Response lPhLKnfdkYj3nH9T) {
  switch (lPhLKnfdkYj3nH9T.statusCode) {
    case 200:
    case 201:
      return json.decode(lPhLKnfdkYj3nH9T.body);
    case 400:
      throw W35NLwF3XrAUFpAC('Bad request: ${lPhLKnfdkYj3nH9T.body}',
          iWHsaHt3Rl0Lz0Q8: lPhLKnfdkYj3nH9T.statusCode);
    case 401:
      throw W35NLwF3XrAUFpAC('Unauthorized: ${lPhLKnfdkYj3nH9T.body}',
          iWHsaHt3Rl0Lz0Q8: lPhLKnfdkYj3nH9T.statusCode);
    case 404:
      throw W35NLwF3XrAUFpAC('Not found: ${lPhLKnfdkYj3nH9T.body}',
          iWHsaHt3Rl0Lz0Q8: lPhLKnfdkYj3nH9T.statusCode);
    case 500:
      throw W35NLwF3XrAUFpAC('Server error: ${lPhLKnfdkYj3nH9T.body}',
          iWHsaHt3Rl0Lz0Q8: lPhLKnfdkYj3nH9T.statusCode);
    default:
      throw W35NLwF3XrAUFpAC('Unexpected error: ${lPhLKnfdkYj3nH9T.statusCode}',
          iWHsaHt3Rl0Lz0Q8: lPhLKnfdkYj3nH9T.statusCode);
  }
}

Future<Map<String, dynamic>?> y2qPvgXc8yhcIJUFi(bmhFoaArBVvivbor) async {
  final cDvMa9kKN5ZQdqku = UEWZzutL8YUdiLEW();

  final Map<String, dynamic> TfFUyVFU8HMvRupV = {
    "r09aij5tAEjl3EKWCo": bmhFoaArBVvivbor
  };

  try {
    final GSdYaE3suUldVdVr = await cDvMa9kKN5ZQdqku.s1Z6Yji9OQQU5e6II(
      "/opi/v1/spT5rcszFXSrmwmyt",
      TfFUyVFU8HMvRupV,
    );

    return GSdYaE3suUldVdVr;
  } catch (NEWfTTo8t9hLf6m2) {
    return null;
  }
}

Future<bool> H5GbPKCM9MywzF9X(PurchaseDetails v77GD5ogomJqkkPHa) async {
  String? r7wokuveaQvljwPKh = v77GD5ogomJqkkPHa.purchaseID;
  PurchaseVerificationData Y0YrgOJGxQjwNdZk =
      v77GD5ogomJqkkPHa.verificationData;
  Map<String, dynamic> b5oWOQW6P7nh9X08 = {
    "orderCode": DOz6AQPOqKSKp6Bs().HyUYVxj2rDBg66mZ,
  };
  final kOWBcxMqiVOm5eJX = UEWZzutL8YUdiLEW();
  final Map<String, dynamic> p6RFkZ6u7RKzXGxXJ = {
    "hrdZyOMS6nyQVMbPt": r7wokuveaQvljwPKh,
    "q90JdXx5Y5mylH7up": Y0YrgOJGxQjwNdZk.serverVerificationData,
    "xfDvF4sfqVBcyKbpc": jsonEncode(b5oWOQW6P7nh9X08),
  };

  try {
    final D7U5LLqJQxOqFDe4 = await kOWBcxMqiVOm5eJX.s1Z6Yji9OQQU5e6II(
      '/opi/v1/ZkbA11k8gIiTKOKjp',
      p6RFkZ6u7RKzXGxXJ,
    );
    return D7U5LLqJQxOqFDe4['code'] == '0000';
  } catch (xWrdYZrKL8pWy9oR) {
    return false;
  }
}

Future<Map<String, dynamic>?> v2ggPvBbxvDtOgSd() async {
  final tdeGvfNXWhdwYDVX = UEWZzutL8YUdiLEW();

  final Map<String, dynamic> j2xBTQFEAVooBU0yY = {
    if (DOz6AQPOqKSKp6Bs().fChEg4YdO5awTPeH != '')
      'etJrA9QDSQAZ8MFhd': DOz6AQPOqKSKp6Bs().fChEg4YdO5awTPeH,
    "QDbppeNizZakxaKpn": DOz6AQPOqKSKp6Bs().Nc3Tzi3dil1aUo7i,
    "hqM8CngE2H6MLsS0v": {
      "countryCode": LhbaYlMUXORK4ER6.m7D21q9fZPGI0IhF,
      "latitude": LhbaYlMUXORK4ER6.e6XwUqwbgNIJ8IEil,
      "longitude": LhbaYlMUXORK4ER6.pl4BmXplmWA1Du59,
    }
  };

  try {
    final ttnhf7DxXrBovjk0 = await tdeGvfNXWhdwYDVX.s1Z6Yji9OQQU5e6II(
      '/opi/v1/RR6uzTHrTtZ0SIzCl',
      j2xBTQFEAVooBU0yY,
    );

    if (ttnhf7DxXrBovjk0.containsKey('result') &&
        ttnhf7DxXrBovjk0['result'] is String) {
      final j9JvqeLxmT3K6OrU =
          ttnhf7DxXrBovjk0['result'].toString().xxEPCTFkQZQMW5TC();
      try {
        final J5SZWevvRVonnN6M = json.decode(j9JvqeLxmT3K6OrU);
        ttnhf7DxXrBovjk0['result'] = J5SZWevvRVonnN6M;
      } catch (g00LmWFi39W8DUwg5) {
        print("$g00LmWFi39W8DUwg5");
      }
    }
    return ttnhf7DxXrBovjk0;
  } catch (uOtj71aIpiaMOrJa) {
    return null;
  }
}

Future<Map<String, dynamic>?> h78XSew2F4gTURPPB(int c3RSttBmj1Fke5lOT) async {
  final BCMb2mHKPCvGBxdd = UEWZzutL8YUdiLEW();
  final Map<String, dynamic> TyQjjsrGlncVqQq3 = {
    "m7sALlIU7dHTuyweYd": 1,
    "PEZv7Zz6zuszZF03n": c3RSttBmj1Fke5lOT,
    "g2dCRmNzGuK0Bd0ohe": uxrmBTvjZWj4dy7W,
    "q00Hf5BgCaio7HHbps": ZOIJMmf7z2USRSkV,
    "jD6z8PaOJMOcgmfit": f2wibr4rqEhFScg4L,
    "RqAyWLvf15FrSXjMk": ajYNtfnbv2AiEBdD,
    "d7QJbT05NAMBuRBckg": 0,
  };

  try {
    final a4LohdgcG1buIMvHI = await BCMb2mHKPCvGBxdd.s1Z6Yji9OQQU5e6II(
      "/opi/v1/XHQ9N62eijrItz5Yo",
      TyQjjsrGlncVqQq3,
    );

    if (a4LohdgcG1buIMvHI.containsKey('result') &&
        a4LohdgcG1buIMvHI['result'] is String) {
      final bzamiek0TjILy6d8 =
          a4LohdgcG1buIMvHI['result'].toString().xxEPCTFkQZQMW5TC();
      try {
        final t4i2qv5565QmVa2z = json.decode(bzamiek0TjILy6d8);
        a4LohdgcG1buIMvHI['result'] = t4i2qv5565QmVa2z;
      } catch (e) {
        print("$e");
      }
    }

    return a4LohdgcG1buIMvHI;
  } catch (bEh2tjIKzBH2sKoG) {
    print(bEh2tjIKzBH2sKoG);
    return null;
  }
}
