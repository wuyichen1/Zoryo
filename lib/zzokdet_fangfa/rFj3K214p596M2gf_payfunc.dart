import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_storekit/in_app_purchase_storekit.dart';
import 'package:in_app_purchase_storekit/store_kit_wrappers.dart';
import 'package:provider/provider.dart';
import 'package:zoryo/ZORYOSA_lkfuopwerq_features/ZORYOSA_utilseqvqeiutme/sT4Ixl4VDmBmLyF0_encryption.dart';
import 'package:zoryo/zzokdet_fangfa/SAfiaJS3o1rH37O1ing.dart';
import 'package:zoryo/zzokdet_fangfa/kl3bGE2D4dsgMTqG_state.dart';

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
  'xnsyngamrnisdpgh',
  'oavhllqhzyyqlrhu',
  'kyoeiqwylantcmwq',
  'posmmlgnqdawfmly',
  'ubcsmpumzzpsezzt',
  'osbfudddptodnmyv',
  'hlsvaiffpemytmis',
  'rrcqnugmmsaczdrx',
  'sfmrubyparkejfvc',
  'xsnwdfoqrmqqarei',
];

final Map<PurchaseStatus, Future<void> Function(PurchaseDetails)>
    r7Fz4rtdSaUAdOXjm = {};
typedef Lgq5VmQ8y3CLjXsu = Future<void> Function(PurchaseDetails);

void _k9v0Qj7cBz4wYf1h(bool valuetsnllyfjhi) {
  if (dq53mHVMp33U7eOecmp != null && !dq53mHVMp33U7eOecmp!.isCompleted) {
    dq53mHVMp33U7eOecmp!.complete(valuetsnllyfjhi);
  }
}

ProductDetails? _j4hNc2mXq8vPz1Ta(String pidqlnvsyqewz) {
  final matchedmlzlkdviqi =
      og2ViNMtB5dHnUiR.where((item) => item.id == pidqlnvsyqewz).toList();
  if (matchedmlzlkdviqi.isEmpty) return null;
  return matchedmlzlkdviqi.first;
}

Future<void> _q2wEr8uIo3pAs6Df(ProductDetailsResponse resptxjhgjyxep) async {
  if (resptxjhgjyxep.error != null) {
    SFDR2PcqduwgmkeA(resptxjhgjyxep);
    return;
  }
  DMlOxncHwJ7vXYOW(resptxjhgjyxep);
}

void w2cVdsWvvjIx44bf() {
  final Map<PurchaseStatus, Lgq5VmQ8y3CLjXsu> handlersfxuarjdubi = {};

  handlersfxuarjdubi[PurchaseStatus.error] =
      (PurchaseDetails eRNC8KvpEVOhjhWj) async {
    final yUwmVPbyWEso2WG2 = eRNC8KvpEVOhjhWj.error?.message ??
        'MQLt3d4WBgXTHetRvsjR8Zw'.cx3hpvXCSg6mF();
    Fluttertoast.showToast(
        msg: 'qTyeElfae4BA1lfIIJU3pw9pAOYSRSCsAmeyVqxEt3yyGcIJZsFtwVPBFsAynTi2AiYaqV5cPKgEZuFR4w'
                .cx3hpvXCSg6mF() +
            '${'2V6SB0ChcfYBtVn99noksboIEN7dOy7I_kvhN5rol2hlrKM3QKFx9gG1Wf32emi441oB0889J5z2UfJynvbD'.cx3hpvXCSg6mF()}: $yUwmVPbyWEso2WG2');
    _k9v0Qj7cBz4wYf1h(false);
  };

  handlersfxuarjdubi[PurchaseStatus.purchased] =
      (PurchaseDetails eRNC8KvpEVOhjhWj) async {
    await ZRNBXmip2j1IxSTQ(eRNC8KvpEVOhjhWj);
  };

  handlersfxuarjdubi[PurchaseStatus.restored] =
      (PurchaseDetails eRNC8KvpEVOhjhWj) async {
    await ZRNBXmip2j1IxSTQ(eRNC8KvpEVOhjhWj);
  };

  handlersfxuarjdubi[PurchaseStatus.canceled] =
      (PurchaseDetails eRNC8KvpEVOhjhWj) async {
    await yLrqFKUrgMWORA9Y();
    SAfiaJS3o1rH37O1ing.showError(
        m5t1SfgrAUKHYvMTV: 'C_n3FjUODsnzD_uK1tDDtK2voq7O'.cx3hpvXCSg6mF(),
        context: jxao9LWE2uy3ZYUK);
    _k9v0Qj7cBz4wYf1h(false);
  };

  r7Fz4rtdSaUAdOXjm
    ..clear()
    ..addAll(handlersfxuarjdubi);
}

Future<void> ZRNBXmip2j1IxSTQ(PurchaseDetails eRNC8KvpEVOhjhWj) async {
  await m1vymEgGP8fl5hrH(eRNC8KvpEVOhjhWj);

  if (eRNC8KvpEVOhjhWj.pendingCompletePurchase) {
    await x6spYkyIfeEWPit76.completePurchase(eRNC8KvpEVOhjhWj);
  }

  SAfiaJS3o1rH37O1ing.showSuccess(
      rJ2e8C2BL6pudP0Q: 'whptgUzxlGIo7HE1DaJTMBCSWFG5'.cx3hpvXCSg6mF(),
      context: jxao9LWE2uy3ZYUK);
  o0mSiuMfWEpEAKTU();
  await yLrqFKUrgMWORA9Y();

  _k9v0Qj7cBz4wYf1h(true);
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

  if (Platform.isIOS) {
    XPUf0ZFPrPl3Kzsp();
  }
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

  final ProductDetails? OyifwWraV38WOgih =
      _j4hNc2mXq8vPz1Ta(wHXZYiCFtFOY73VRKeys[i23bT9vpRZBP8V4Nz]);

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
  _k9v0Qj7cBz4wYf1h(false);
  throw Exception(
      '${'hplCerRnpyhhc7VqRTKMGwonMkwi'.cx3hpvXCSg6mF()} ${wHXZYiCFtFOY73VRKeys[i23bT9vpRZBP8V4Nz]} ${'WD3DrNHcNlaHhTUvdtUbCDVh_BVDSV0'.cx3hpvXCSg6mF()}');
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
        msg: 'NbSDLNtCZpqzZWi0ugEZi5MXP4VuhEeO0xgYUiG5y1pHlqhe-0JmmqlyNqGvHBmdhwwwiGvXVsGAHgVKJr_NAkc'
                .cx3hpvXCSg6mF() +
            'N5rJduZ4IGeqIhF4hCQaWYAB_Qp44hwLhhTe5TSxnR4cpC2r_n05aKd2CGWPchBR1BDxTyz4HFqABM7yNKbODBupY7vwcz1trWxP'
                .cx3hpvXCSg6mF());
    return;
  }

  if (Platform.isIOS) {
    await r8WmxMSNGORMzLG1X();
  }

  final ProductDetailsResponse aZHiD384y27r0FeP =
      await x6spYkyIfeEWPit76.queryProductDetails(wHXZYiCFtFOY73VRKeys.toSet());

  await _q2wEr8uIo3pAs6Df(aZHiD384y27r0FeP);
}

void SFDR2PcqduwgmkeA(ProductDetailsResponse r91d98120Bryc67q8) {
  SAfiaJS3o1rH37O1ing.dismiss();
  SAfiaJS3o1rH37O1ing.showError(
      m5t1SfgrAUKHYvMTV:
          "ovHRDr0JcelDPwbQKdriqjGbxLAFjvPjD9uma85rk3T0e2ASlQk2vEghDME53e6gMZeBph6S87YQzKxw2zmCeLE_"
                  .cx3hpvXCSg6mF() +
              "Yk99tcuqjyiL23o-LGZdEj9pPwxBWkMeSXgW5Qgfx5f7DaR13bGULIOXcztjahMUenAjDhdcQgdQehSxGROCxOEeomLPtps2gdtsZw"
                  .cx3hpvXCSg6mF(),
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
  if (pWnvptOZkX5Ynr7W.status == PurchaseStatus.pending) {
    SAfiaJS3o1rH37O1ing.show(
        HTvl9ShAZuEtpEEl:
            'DpQbuzhr4iT8ksdv0T_xHq43hQjD9LkVvDp9rkySbpNu'.cx3hpvXCSg6mF(),
        context: jxao9LWE2uy3ZYUK);
    return;
  }
  await tplbZdJVPVAVOnnM(pWnvptOZkX5Ynr7W);
}

Future<void> tplbZdJVPVAVOnnM(PurchaseDetails zbrBp0kO0qQdxlAB) async {
  SAfiaJS3o1rH37O1ing.dismiss();

  final OKvPyltXxo8q8u6L = r7Fz4rtdSaUAdOXjm[zbrBp0kO0qQdxlAB.status];
  if (OKvPyltXxo8q8u6L != null) {
    await OKvPyltXxo8q8u6L(zbrBp0kO0qQdxlAB);
  }
}

Future<void> m1vymEgGP8fl5hrH(PurchaseDetails MYNprsTeAw4bRNEWpurdel) async {
  if (MYNprsTeAw4bRNEWpurdel.productID !=
      wHXZYiCFtFOY73VRKeys[i23bT9vpRZBP8V4Nz]) {
    JQzrOmoSbgx5lb0J.add(MYNprsTeAw4bRNEWpurdel);
  }
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
      Provider.of<Kl3bGE2D4dsgMTqGState>(jxao9LWE2uy3ZYUK, listen: false);
  await Onhqabj8av9f2NH5.gtfsLkHm6MMk6spI(lJq5hR0ws7Su1qYpkke);
}
