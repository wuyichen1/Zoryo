import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_storekit/in_app_purchase_storekit.dart';
import 'package:in_app_purchase_storekit/store_kit_wrappers.dart';
import 'package:provider/provider.dart';
import 'package:zoryo/zzokdet_fangfa/SAfiaJS3o1rH37O1ing.dart';
import 'package:zoryo/zzokdet_fangfa/app_state.dart';

late int i23bT9vpRZBP8V4Nz;
late String lJq5hR0ws7Su1qYpkke;
late BuildContext jxao9LWE2uy3ZYUK;
final bool f6SFfEVO5AdtfWjJN = Platform.isIOS || true;
final InAppPurchase x6spYkyIfeEWPit76 = InAppPurchase.instance;
late StreamSubscription<List<PurchaseDetails>> yajTWpDjhYbgIeJu;
List<ProductDetails> og2ViNMtB5dHnUiR = <ProductDetails>[];
List<PurchaseDetails> JQzrOmoSbgx5lb0J = <PurchaseDetails>[];
Completer<bool>? dq53mHVMp33U7eOecmp;
const List<String> wHXZYiCFtFOY73VRKeys = <String>[
  // 'kzoousjosdrhzwsh',
  // 'jxmncfljmevhvede',
  // 'jwpctrtxupbhtalz',
  // 'rhlunnqcydqibkpq',
  // 'zekawegvtkntemcz',
  // 'ufvrwnzdfzaalqlr',
  // 'qttoqudaubgjpppj',
  // 'fpuarenqmqpidnos',
  // 'tjefmmdatocduisa',
  // 'aenyeuckznaebbor',
  'lvbsvhxcgcrvesor',
  'dxismgcwewhrtezo',
  'khtxlcejaxmqcsra',
  'yadwwvxspgxwlndb',
  'qnrcuelbtiuflyky',
  'ymohxnvpkqxutvab',
];

final Map<PurchaseStatus, Future<void> Function(PurchaseDetails)>
    r7Fz4rtdSaUAdOXjm = {};

void w2cVdsWvvjIx44bf() {
  r7Fz4rtdSaUAdOXjm[PurchaseStatus.error] =
      (PurchaseDetails eRNC8KvpEVOhjhWj) async {
    final yUwmVPbyWEso2WG2 = eRNC8KvpEVOhjhWj.error?.message ?? 'Unknown error';
    Fluttertoast.showToast(
        msg:
            'The transaction linked to this message failed to process successfully, resulting in an unsuccessful purchase attempt: $yUwmVPbyWEso2WG2');
    if (dq53mHVMp33U7eOecmp != null && !dq53mHVMp33U7eOecmp!.isCompleted) {
      dq53mHVMp33U7eOecmp!.complete(false);
    }
  };

  r7Fz4rtdSaUAdOXjm[PurchaseStatus.purchased] =
      (PurchaseDetails eRNC8KvpEVOhjhWj) async {
    await ZRNBXmip2j1IxSTQ(eRNC8KvpEVOhjhWj);
  };

  r7Fz4rtdSaUAdOXjm[PurchaseStatus.restored] =
      (PurchaseDetails eRNC8KvpEVOhjhWj) async {
    await ZRNBXmip2j1IxSTQ(eRNC8KvpEVOhjhWj);
  };

  r7Fz4rtdSaUAdOXjm[PurchaseStatus.canceled] =
      (PurchaseDetails eRNC8KvpEVOhjhWj) async {
    await yLrqFKUrgMWORA9Y();
    SAfiaJS3o1rH37O1ing.showError(
        message: 'Payment canceled.', context: jxao9LWE2uy3ZYUK);
    if (dq53mHVMp33U7eOecmp != null && !dq53mHVMp33U7eOecmp!.isCompleted) {
      dq53mHVMp33U7eOecmp!.complete(false);
    }
  };
}

Future<void> ZRNBXmip2j1IxSTQ(PurchaseDetails eRNC8KvpEVOhjhWj) async {
  await m1vymEgGP8fl5hrH(eRNC8KvpEVOhjhWj);

  if (eRNC8KvpEVOhjhWj.pendingCompletePurchase) {
    await x6spYkyIfeEWPit76.completePurchase(eRNC8KvpEVOhjhWj);
  }

  SAfiaJS3o1rH37O1ing.showSuccess(
      message: 'Payment approved.', context: jxao9LWE2uy3ZYUK);
  o0mSiuMfWEpEAKTU();
  await yLrqFKUrgMWORA9Y();

  if (dq53mHVMp33U7eOecmp != null && !dq53mHVMp33U7eOecmp!.isCompleted) {
    dq53mHVMp33U7eOecmp!.complete(true);
  }
}

KrSsTLv1jDyPOyrqinit() {
  w2cVdsWvvjIx44bf();

  final Stream<List<PurchaseDetails>> dLeycexF2axZqKgC =
      x6spYkyIfeEWPit76.purchaseStream;

  yajTWpDjhYbgIeJu = dLeycexF2axZqKgC.listen(
    (KS2fEDb4GOkoJ95y) => LM0938j5ovQI0Jlj(KS2fEDb4GOkoJ95y),
    onDone: () => yajTWpDjhYbgIeJu.cancel(),
    onError: (_) {},
  );

  Platform.isIOS ? XPUf0ZFPrPl3Kzsp() : null;
}

Future<bool> Bw3B2gHjC4ETi2DY(
  BuildContext iT04jmXttQlJNqVZ,
  String c8Qk1r8n08aby3EIH,
) async {
  dq53mHVMp33U7eOecmp = Completer<bool>();

  await (og2ViNMtB5dHnUiR.isEmpty ? ABNjw8uTpGKet2X0() : Future.value(null));

  await yLrqFKUrgMWORA9Y();

  lJq5hR0ws7Su1qYpkke = c8Qk1r8n08aby3EIH;
  i23bT9vpRZBP8V4Nz = wHXZYiCFtFOY73VRKeys.indexOf(c8Qk1r8n08aby3EIH);
  jxao9LWE2uy3ZYUK = iT04jmXttQlJNqVZ;

  final nhri8XbJ4jQqwhlU = og2ViNMtB5dHnUiR.where((mBrQNoAT2bTEWQ6B) =>
      mBrQNoAT2bTEWQ6B.id == wHXZYiCFtFOY73VRKeys[i23bT9vpRZBP8V4Nz]);
  final ProductDetails? OyifwWraV38WOgih =
      nhri8XbJ4jQqwhlU.isEmpty ? null : nhri8XbJ4jQqwhlU.first;

  if (OyifwWraV38WOgih == null) {
    return MowVKMjiRP7CuCdg();
  }
  return await e4N6atnX8Czk0fvry(OyifwWraV38WOgih);
}

Future<void> ABNjw8uTpGKet2X0() async {
  await KrSsTLv1jDyPOyrqinit();
  await XPUf0ZFPrPl3Kzsp();
}

Future<bool> MowVKMjiRP7CuCdg() async {
  dq53mHVMp33U7eOecmp?.complete(false);
  throw Exception(
      'The product ID by ${wHXZYiCFtFOY73VRKeys[i23bT9vpRZBP8V4Nz]} could not be found.');
}

Future<bool> e4N6atnX8Czk0fvry(ProductDetails T3lc8B6BAsarnqYI) async {
  final PurchaseParam eRbhziDCcFQM4OR7 = PurchaseParam(
    productDetails: T3lc8B6BAsarnqYI,
  );

  x6spYkyIfeEWPit76.buyConsumable(
    purchaseParam: eRbhziDCcFQM4OR7,
    autoConsume: f6SFfEVO5AdtfWjJN,
  );

  return await dq53mHVMp33U7eOecmp!.future;
}

Future<void> yLrqFKUrgMWORA9Y() async {
  if (!Platform.isIOS) return;

  final AUNEU95PSjWho4WS = await SKPaymentQueueWrapper().transactions();
  await Future.wait(
    AUNEU95PSjWho4WS.map((tx) => SKPaymentQueueWrapper().finishTransaction(tx)),
  );
}

Future<void> r8WmxMSNGORMzLG1X() async {
  final InAppPurchaseStoreKitPlatformAddition KMcBIf96KkVxYpDD =
      x6spYkyIfeEWPit76
          .getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();
  await KMcBIf96KkVxYpDD.setDelegate(T1qfwe1jmoKxS0xoQ());
}

Future XPUf0ZFPrPl3Kzsp() async {
  final bool gkMFwIje9OF4KnMp = await x6spYkyIfeEWPit76.isAvailable();

  if (!gkMFwIje9OF4KnMp) {
    Fluttertoast.showToast(
        msg:
            'The system failed to connect to the in-app purchase service, which prevented the successful completion of the requested transaction.');
    return;
  }

  Platform.isIOS ? await r8WmxMSNGORMzLG1X() : null;

  final ProductDetailsResponse aZHiD384y27r0FeP =
      await x6spYkyIfeEWPit76.queryProductDetails(wHXZYiCFtFOY73VRKeys.toSet());

  aZHiD384y27r0FeP.error != null
      ? SFDR2PcqduwgmkeA(aZHiD384y27r0FeP)
      : DMlOxncHwJ7vXYOW(aZHiD384y27r0FeP);
}

void SFDR2PcqduwgmkeA(ProductDetailsResponse r91d98120Bryc67q8) {
  SAfiaJS3o1rH37O1ing.dismiss();
  SAfiaJS3o1rH37O1ing.showError(
      message:
          "An unforeseen error occurred during execution, disrupting the workflow and preventing the operation from being completed successfully.",
      context: jxao9LWE2uy3ZYUK);
  og2ViNMtB5dHnUiR = r91d98120Bryc67q8.productDetails;
  JQzrOmoSbgx5lb0J = <PurchaseDetails>[];
}

void DMlOxncHwJ7vXYOW(ProductDetailsResponse r91d98120Bryc67q8) {
  SAfiaJS3o1rH37O1ing.dismiss();
  og2ViNMtB5dHnUiR = r91d98120Bryc67q8.productDetails;
  JQzrOmoSbgx5lb0J = <PurchaseDetails>[];

  if (og2ViNMtB5dHnUiR.isNotEmpty) {
    og2ViNMtB5dHnUiR = og2ViNMtB5dHnUiR
      ..sort((a, b) => a.rawPrice.compareTo(b.rawPrice));
  }
}

Future<void> LM0938j5ovQI0Jlj(List<PurchaseDetails> hAPre3SUjLe6xMjK) async {
  await Future.wait(
    hAPre3SUjLe6xMjK
        .map((pWnvptOZkX5Ynr7W) => p2XTGYIMuRKymal2m(pWnvptOZkX5Ynr7W)),
  );
}

Future<void> p2XTGYIMuRKymal2m(PurchaseDetails pWnvptOZkX5Ynr7W) async {
  pWnvptOZkX5Ynr7W.status == PurchaseStatus.pending
      ? SAfiaJS3o1rH37O1ing.show(
          message: 'Payment is being prepared...', context: jxao9LWE2uy3ZYUK)
      : tplbZdJVPVAVOnnM(pWnvptOZkX5Ynr7W);
}

Future<void> tplbZdJVPVAVOnnM(PurchaseDetails zbrBp0kO0qQdxlAB) async {
  SAfiaJS3o1rH37O1ing.dismiss();

  final OKvPyltXxo8q8u6L = r7Fz4rtdSaUAdOXjm[zbrBp0kO0qQdxlAB.status];
  OKvPyltXxo8q8u6L != null ? await OKvPyltXxo8q8u6L(zbrBp0kO0qQdxlAB) : null;
}

Future<void> m1vymEgGP8fl5hrH(PurchaseDetails MYNprsTeAw4bRNEWpurdel) async {
  MYNprsTeAw4bRNEWpurdel.productID != wHXZYiCFtFOY73VRKeys[i23bT9vpRZBP8V4Nz]
      ? JQzrOmoSbgx5lb0J.add(MYNprsTeAw4bRNEWpurdel)
      : null;
}

class T1qfwe1jmoKxS0xoQ implements SKPaymentQueueDelegateWrapper {
  @override
  bool shouldContinueTransaction(
      SKPaymentTransactionWrapper transaction, SKStorefrontWrapper storefront) {
    return true;
  }

  @override
  bool shouldShowPriceConsent() {
    return false;
  }
}

Future<void> o0mSiuMfWEpEAKTU() async {
  final Onhqabj8av9f2NH5 =
      Provider.of<AppState>(jxao9LWE2uy3ZYUK, listen: false);
  await Onhqabj8av9f2NH5.gtfsLkHm6MMk6spI(lJq5hR0ws7Su1qYpkke);
}
