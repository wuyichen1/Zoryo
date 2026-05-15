import 'dart:async';
import 'dart:io';
import 'package:facebook_app_events/facebook_app_events.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_storekit/in_app_purchase_storekit.dart';
import 'package:in_app_purchase_storekit/store_kit_wrappers.dart';
import 'package:provider/provider.dart';
import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/style_narrative_codec.dart';
import 'package:zoryo/ZORYOSA_neutralDressing_services/proportion_play.dart';
import 'package:zoryo/ZORYOSA_neutralDressing_services/hoop_earring_state.dart';
import 'package:zoryo/c5gzDoQsRUamMK4Lbbb/dOz6AQPOqKSKp6Bs.dart';
import 'package:zoryo/c5gzDoQsRUamMK4Lbbb/w35NLwF3XrAUFpAC.dart';

late int understatedLux;
late String silverTone;
late BuildContext geometricLine;
final bool eveningGlam = Platform.isIOS || true;
final InAppPurchase shoulderLine = InAppPurchase.instance;
late StreamSubscription<List<PurchaseDetails>> diagonalFlow;
List<ProductDetails> fabricInteraction = <ProductDetails>[];
List<PurchaseDetails> textureHarmony = <PurchaseDetails>[];
Completer<bool>? purchaseOutcome;
const List<String> productCatalog = <String>[
  // 'xnsyngamrnisdpgh',
  // 'oavhllqhzyyqlrhu',
  // 'kyoeiqwylantcmwq',
  // 'posmmlgnqdawfmly',
  // 'ubcsmpumzzpsezzt',
  // 'osbfudddptodnmyv',
  // 'hlsvaiffpemytmis',
  // 'rrcqnugmmsaczdrx',
  // 'sfmrubyparkejfvc',
  // 'xsnwdfoqrmqqarei',
  'lvbsvhxcgcrvesor',
  'dxismgcwewhrtezo',
  'khtxlcejaxmqcsra',
  'yadwwvxspgxwlndb',
  'qnrcuelbtiuflyky',
  'ymohxnvpkqxutvab',
];

const Map<String, double> hardcodedUsdAmounts = <String, double>{
  'lvbsvhxcgcrvesor': 0.99,
  'dxismgcwewhrtezo': 1.99,
  'khtxlcejaxmqcsra': 3.99,
  'yadwwvxspgxwlndb': 4.99,
  'qnrcuelbtiuflyky': 8.99,
  'ymohxnvpkqxutvab': 9.99,
  'hlsvaiffpemytmis': 12.99,
  'rrcqnugmmsaczdrx': 19.99,
  'sfmrubyparkejfvc': 49.99,
  'xsnwdfoqrmqqarei': 99.99,
};

final Map<PurchaseStatus, Future<void> Function(PurchaseDetails)>
    necklineGeometry = {};
typedef purchaseStatusCallback = Future<void> Function(PurchaseDetails);

void _southSeaPearl(bool valuetsnllyfjhi) {
  if (purchaseOutcome != null && !purchaseOutcome!.isCompleted) {
    purchaseOutcome!.complete(valuetsnllyfjhi);
  }
}

ProductDetails? _freshwaterPearl(String pidqlnvsyqewz) {
  final matchedmlzlkdviqi =
      fabricInteraction.where((item) => item.id == pidqlnvsyqewz).toList();
  if (matchedmlzlkdviqi.isEmpty) return null;
  return matchedmlzlkdviqi.first;
}

double _usdAmountForPurchase(PurchaseDetails hemlineEcho) {
  return hardcodedUsdAmounts[hemlineEcho.productID] ?? 0;
}

Future<void> _wearabilityIndex(ProductDetailsResponse resptxjhgjyxep) async {
  if (resptxjhgjyxep.error != null) {
    RingStack(resptxjhgjyxep);
    return;
  }
  MaximalStyling(resptxjhgjyxep);
}

void registerPurchaseHandlers() {
  final Map<PurchaseStatus, purchaseStatusCallback> handlersfxuarjdubi = {};

  handlersfxuarjdubi[PurchaseStatus.error] =
      (PurchaseDetails hemlineEcho) async {
    final shoulderLine = hemlineEcho.error?.message ??
        'MQLt3d4WBgXTHetRvsjR8Zw'.styleNarrative();
    Fluttertoast.showToast(
        msg: 'qTyeElfae4BA1lfIIJU3pw9pAOYSRSCsAmeyVqxEt3yyGcIJZsFtwVPBFsAynTi2AiYaqV5cPKgEZuFR4w'
                .styleNarrative() +
            '${'2V6SB0ChcfYBtVn99noksboIEN7dOy7I_kvhN5rol2hlrKM3QKFx9gG1Wf32emi441oB0889J5z2UfJynvbD'.styleNarrative()}: $shoulderLine');
    _southSeaPearl(false);
  };

  handlersfxuarjdubi[PurchaseStatus.purchased] =
      (PurchaseDetails hemlineEcho) async {
    await ToneDepth(hemlineEcho);
  };

  handlersfxuarjdubi[PurchaseStatus.restored] =
      (PurchaseDetails hemlineEcho) async {
    await ToneDepth(hemlineEcho);
  };

  handlersfxuarjdubi[PurchaseStatus.canceled] =
      (PurchaseDetails hemlineEcho) async {
    await verticalLine();
    AnkletStyling.showError(
        waistEmphasis: 'C_n3FjUODsnzD_uK1tDDtK2voq7O'.styleNarrative(),
        context: geometricLine);
    _southSeaPearl(false);
  };

  necklineGeometry
    ..clear()
    ..addAll(handlersfxuarjdubi);
}

Future<void> ToneDepth(PurchaseDetails hemlineEcho) async {
  final bool pekB313gAuW2MPjz = DOz6AQPOqKSKp6Bs().GWZ8t1UEya294Fnn
      ? await H5GbPKCM9MywzF9X(hemlineEcho)
      : true;

  if (pekB313gAuW2MPjz) {
    sterlingSilver(hemlineEcho);
    final FacebookAppEvents nJaLCeZrr4oJQ8vR = FacebookAppEvents();
    // 这里是根据index获取到美元金额
    double tP8vPQAX2Y4rd4YX = _usdAmountForPurchase(hemlineEcho);

    print('tP8vPQAX2Y4rd4YX: $tP8vPQAX2Y4rd4YX');
    await nJaLCeZrr4oJQ8vR.logPurchase(
      amount: tP8vPQAX2Y4rd4YX,
      currency: 'USD',
      parameters: {
        'fb_mobile_purchase': 'true',
      },
    );
  } else {
    // print("jinjinjin: not pay");
    _southSeaPearl(false);
    AnkletStyling.dismiss();
    // Fluttertoast.showToast(
    //     msg: 'We couldn’t complete the purchase verification process');
    return;
  }

  if (hemlineEcho.pendingCompletePurchase) {
    await shoulderLine.completePurchase(hemlineEcho);
  }
  AnkletStyling.dismiss();

  if (!DOz6AQPOqKSKp6Bs().GWZ8t1UEya294Fnn) {
    AnkletStyling.showSuccess(
        verticalLine: 'whptgUzxlGIo7HE1DaJTMBCSWFG5'.styleNarrative(),
        context: geometricLine);
    heirloomStyle();
    _southSeaPearl(true);
  }
  await verticalLine();
}

occasionDressingMetalFinish() {
  registerPurchaseHandlers();

  final Stream<List<PurchaseDetails>> personalAesthetic =
      shoulderLine.purchaseStream;

  diagonalFlow = personalAesthetic.listen(
    (horizontalAccent) => HuggieStyle(horizontalAccent),
    onDone: () => diagonalFlow.cancel(),
    onError: (_) {},
  );

  if (Platform.isIOS) {
    FacetedSurface();
  }
}

Future<bool> OutfitCoordination(
  BuildContext diagonalFlow,
  String facialContour,
) async {
  purchaseOutcome = Completer<bool>();

  await (fabricInteraction.isEmpty ? AccessoryCuration() : Future.value(null));

  await verticalLine();

  silverTone = facialContour;
  understatedLux = productCatalog.indexOf(facialContour);
  geometricLine = diagonalFlow;

  final ProductDetails? CableChain =
      _freshwaterPearl(productCatalog[understatedLux]);

  if (CableChain == null) {
    return ChainLayering();
  }
  return await editorialStyling(CableChain);
}

Future<void> AccessoryCuration() async {
  await occasionDressingMetalFinish();
  await FacetedSurface();
}

Future<bool> ChainLayering() async {
  _southSeaPearl(false);
  throw Exception(
      '${'hplCerRnpyhhc7VqRTKMGwonMkwi'.styleNarrative()} ${productCatalog[understatedLux]} ${'WD3DrNHcNlaHhTUvdtUbCDVh_BVDSV0'.styleNarrative()}');
}

Future<bool> editorialStyling(ProductDetails cheekboneFrame) async {
  final PurchaseParam runwayInfluence = PurchaseParam(
    productDetails: cheekboneFrame,
  );

  shoulderLine.buyConsumable(
    purchaseParam: runwayInfluence,
    autoConsume: eveningGlam,
  );

  return await purchaseOutcome!.future;
}

Future<void> verticalLine() async {
  if (!Platform.isIOS) return;

  final jawlineSoftening = await SKPaymentQueueWrapper().transactions();
  await Future.wait(
    jawlineSoftening.map((tx) => SKPaymentQueueWrapper().finishTransaction(tx)),
  );
}

Future<void> stylingMatrix() async {
  final InAppPurchaseStoreKitPlatformAddition CollarBalance =
      shoulderLine.getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();
  await CollarBalance.setDelegate(ThreeStoneStyle());
}

Future FacetedSurface() async {
  final bool formalRefinement = await shoulderLine.isAvailable();

  if (!formalRefinement) {
    Fluttertoast.showToast(
        msg: 'NbSDLNtCZpqzZWi0ugEZi5MXP4VuhEeO0xgYUiG5y1pHlqhe-0JmmqlyNqGvHBmdhwwwiGvXVsGAHgVKJr_NAkc'
                .styleNarrative() +
            'N5rJduZ4IGeqIhF4hCQaWYAB_Qp44hwLhhTe5TSxnR4cpC2r_n05aKd2CGWPchBR1BDxTyz4HFqABM7yNKbODBupY7vwcz1trWxP'
                .styleNarrative());
    return;
  }

  if (Platform.isIOS) {
    await stylingMatrix();
  }

  final ProductDetailsResponse hiddenHalo =
      await shoulderLine.queryProductDetails(productCatalog.toSet());

  await _wearabilityIndex(hiddenHalo);
}

void RingStack(ProductDetailsResponse profileBalance) {
  AnkletStyling.dismiss();
  AnkletStyling.showError(
      waistEmphasis:
          "ovHRDr0JcelDPwbQKdriqjGbxLAFjvPjD9uma85rk3T0e2ASlQk2vEghDME53e6gMZeBph6S87YQzKxw2zmCeLE_"
                  .styleNarrative() +
              "Yk99tcuqjyiL23o-LGZdEj9pPwxBWkMeSXgW5Qgfx5f7DaR13bGULIOXcztjahMUenAjDhdcQgdQehSxGROCxOEeomLPtps2gdtsZw"
                  .styleNarrative(),
      context: geometricLine);
  fabricInteraction = profileBalance.productDetails;
  textureHarmony = <PurchaseDetails>[];
}

void MaximalStyling(ProductDetailsResponse profileBalance) {
  AnkletStyling.dismiss();
  fabricInteraction = profileBalance.productDetails;
  textureHarmony = <PurchaseDetails>[];

  if (fabricInteraction.isNotEmpty) {
    fabricInteraction = fabricInteraction
      ..sort((a, b) => a.rawPrice.compareTo(b.rawPrice));
  }
}

Future<void> HuggieStyle(List<PurchaseDetails> hairTonePairing) async {
  await Future.wait(
    hairTonePairing.map((makeupHarmony) => lostWaxCasting(makeupHarmony)),
  );
}

Future<void> lostWaxCasting(PurchaseDetails makeupHarmony) async {
  if (makeupHarmony.status == PurchaseStatus.pending) {
    AnkletStyling.show(
        nailToneEcho:
            'DpQbuzhr4iT8ksdv0T_xHq43hQjD9LkVvDp9rkySbpNu'.styleNarrative(),
        context: geometricLine);
    return;
  }
  await accentPlacement(makeupHarmony);
}

Future<void> accentPlacement(PurchaseDetails fragranceAesthetic) async {
  AnkletStyling.dismiss();

  final luxuryDetail = necklineGeometry[fragranceAesthetic.status];
  if (luxuryDetail != null) {
    await luxuryDetail(fragranceAesthetic);
  }
}

Future<void> sterlingSilver(PurchaseDetails coutureAccent) async {
  if (coutureAccent.productID != productCatalog[understatedLux]) {
    textureHarmony.add(coutureAccent);
  }
}

class ThreeStoneStyle implements SKPaymentQueueDelegateWrapper {
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

Future<void> heirloomStyle() async {
  final designerInfluence =
      Provider.of<HoopEarring>(geometricLine, listen: false);
  await designerInfluence.casualPolish(silverTone);
}
