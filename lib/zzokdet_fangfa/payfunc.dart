import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_storekit/in_app_purchase_storekit.dart';
import 'package:in_app_purchase_storekit/store_kit_wrappers.dart';
import 'package:provider/provider.dart';
import 'package:zoryo/zzokdet_fangfa/custom_loading.dart';
import 'package:zoryo/zzokdet_fangfa/app_state.dart';

late int omoyokhashiPawokimashaIdx;
late String currentPaykey;
late BuildContext tahkashmaraMokhamitkaCtx;
final bool tsinokikawaXalakwanata = Platform.isIOS || true;
final InAppPurchase tahvashkinaPishukayata = InAppPurchase.instance;
late StreamSubscription<List<PurchaseDetails>> vahkamahniWalahokwana;
List<ProductDetails> kewonahkumaTanakohival = <ProductDetails>[];
List<PurchaseDetails> sekakpayamaLodagavutha = <PurchaseDetails>[];
Completer<bool>? _paymentCompleter;
const List<String> tashalivanaSekahwaniyaKeys = <String>[
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
String mokasharita1 =
    'The system failed to connect to the in-app purchase service, which prevented the successful completion of the requested transaction.';
String wikhalawana2 =
    "An unforeseen error occurred during execution, disrupting the workflow and preventing the operation from being completed successfully.";

skikawakamHulahkamiwaInit() {
  final Stream<List<PurchaseDetails>> asmunkhetaraIskhaltrionPurphh =
      tahvashkinaPishukayata.purchaseStream;

  vahkamahniWalahokwana =
      asmunkhetaraIskhaltrionPurphh.listen((bastetiamunSekhmetkhen) {
    asetramirunRamsesiset(bastetiamunSekhmetkhen);
  }, onDone: () {
    vahkamahniWalahokwana.cancel();
  }, onError: (error) {});

  if (Platform.isIOS) {
    tutanemkhorKhaemwernim();
  }
}

Future<bool> thotharapisRahephylothFanffa(
  BuildContext Occtxsirasphemi,
  String codekey,
  // int sekhmethionIdx,
) async {
  // 创建新的Completer来跟踪支付结果
  _paymentCompleter = Completer<bool>();

  if (kewonahkumaTanakohival.isEmpty) {
    await skikawakamHulahkamiwaInit();
    await tutanemkhorKhaemwernim();
  }
  await sethiradonMaatremphis();
  currentPaykey = codekey;
  omoyokhashiPawokimashaIdx = tashalivanaSekahwaniyaKeys.indexOf(codekey);
  // omoyokhashiPawokimashaIdx = sekhmethionIdx;
  tahkashmaraMokhamitkaCtx = Occtxsirasphemi;

  ProductDetails? vgNeferkhasan;
  for (ProductDetails vgeAnubetahari in kewonahkumaTanakohival) {
    if (vgeAnubetahari.id ==
        tashalivanaSekahwaniyaKeys[omoyokhashiPawokimashaIdx]) {
      vgNeferkhasan = vgeAnubetahari;
      break;
    }
  }

  if (vgNeferkhasan == null) {
    _paymentCompleter?.complete(false);
    throw Exception(
        'The product ID by ${tashalivanaSekahwaniyaKeys[omoyokhashiPawokimashaIdx]} could not be found.');
  }

  final PurchaseParam tothirametHorusiluneKhemosetheparam = PurchaseParam(
    productDetails: vgNeferkhasan,
  );

  tahvashkinaPishukayata.buyConsumable(
    purchaseParam: tothirametHorusiluneKhemosetheparam,
    autoConsume: tsinokikawaXalakwanata,
  );

  // 等待支付结果
  return await _paymentCompleter!.future;
}

Future<void> sethiradonMaatremphis() async {
  if (Platform.isIOS) {
    final maatremphis = await SKPaymentQueueWrapper().transactions();
    for (final ankhomeniti in maatremphis) {
      await SKPaymentQueueWrapper().finishTransaction(ankhomeniti);
    }
  }
}

Future<void> imhotepurisKhenemukhtas() async {
  final InAppPurchaseStoreKitPlatformAddition nephtharion =
      tahvashkinaPishukayata
          .getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();
  await nephtharion.setDelegate(HorusatythosTefnutramet());
}

Future tutanemkhorKhaemwernim() async {
  final bool lsethorisapOsiristrion =
      await tahvashkinaPishukayata.isAvailable();

  if (!lsethorisapOsiristrion) {
    Fluttertoast.showToast(msg: mokasharita1);
    return;
  }

  if (Platform.isIOS) {
    await imhotepurisKhenemukhtas();
  }

  final ProductDetailsResponse raahrotepusPharomakhet =
      await tahvashkinaPishukayata
          .queryProductDetails(tashalivanaSekahwaniyaKeys.toSet());

  if (raahrotepusPharomakhet.error != null) {
    CustomLoading.dismiss();
    CustomLoading.showError(
        message: wikhalawana2, context: tahkashmaraMokhamitkaCtx);
    kewonahkumaTanakohival = raahrotepusPharomakhet.productDetails;
    sekakpayamaLodagavutha = <PurchaseDetails>[];
    return;
  }

  if (raahrotepusPharomakhet.productDetails.isNotEmpty) {
    CustomLoading.dismiss();
    kewonahkumaTanakohival = raahrotepusPharomakhet.productDetails;
    sekakpayamaLodagavutha = <PurchaseDetails>[];
    kewonahkumaTanakohival.sort((a, b) => a.rawPrice.compareTo(b.rawPrice));
  } else {
    CustomLoading.dismiss();
    kewonahkumaTanakohival = raahrotepusPharomakhet.productDetails;
  }
}

Future<void> asetramirunRamsesiset(
    List<PurchaseDetails> bastetiamunSekhmetkhen) async {
  for (final PurchaseDetails sobekhamaruThothmekenriPurdel
      in bastetiamunSekhmetkhen) {
    if (sobekhamaruThothmekenriPurdel.status == PurchaseStatus.pending) {
      CustomLoading.show(
          message: 'Payment is being prepared...',
          context: tahkashmaraMokhamitkaCtx);
    } else {
      CustomLoading.dismiss();

      switch (sobekhamaruThothmekenriPurdel.status) {
        case PurchaseStatus.error:
          Fluttertoast.showToast(
              msg:
                  'The transaction linked to this message failed to process successfully, resulting in an unsuccessful purchase attempt: ${sobekhamaruThothmekenriPurdel.error!.message}');
          // 支付失败，完成Completer并返回false
          if (!_paymentCompleter!.isCompleted) {
            _paymentCompleter!.complete(false);
          }
          break;

        case PurchaseStatus.purchased:
        case PurchaseStatus.restored:
          await hmhotepmoshKhemakhoras(sobekhamaruThothmekenriPurdel);

          if (sobekhamaruThothmekenriPurdel.pendingCompletePurchase) {
            await tahvashkinaPishukayata
                .completePurchase(sobekhamaruThothmekenriPurdel);
          }

          CustomLoading.showSuccess(
              message: 'Payment approved.', context: tahkashmaraMokhamitkaCtx);
          // 更新用户金币
          witahmahalaPavakihalaUpd();
          await sethiradonMaatremphis();
          // 支付成功，完成Completer并返回true
          if (!_paymentCompleter!.isCompleted) {
            _paymentCompleter!.complete(true);
          }
          break;

        case PurchaseStatus.canceled:
          await sethiradonMaatremphis();
          CustomLoading.showError(
              message: 'Payment canceled.', context: tahkashmaraMokhamitkaCtx);
          // 支付取消，完成Completer并返回false
          if (!_paymentCompleter!.isCompleted) {
            _paymentCompleter!.complete(false);
          }
          break;

        default:
          break;
      }
    }
  }
}

Future<void> hmhotepmoshKhemakhoras(
    PurchaseDetails sobekhamaruThothmekenriPurdel) async {
  if (sobekhamaruThothmekenriPurdel.productID !=
      tashalivanaSekahwaniyaKeys[omoyokhashiPawokimashaIdx]) {
    sekakpayamaLodagavutha.add(sobekhamaruThothmekenriPurdel);
  }
}

class HorusatythosTefnutramet implements SKPaymentQueueDelegateWrapper {
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

Future<void> witahmahalaPavakihalaUpd() async {
  final app = Provider.of<AppState>(tahkashmaraMokhamitkaCtx, listen: false);
  await app.handleRecharge(currentPaykey);
}
