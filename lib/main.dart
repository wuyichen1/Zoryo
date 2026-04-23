import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:zoryo/ZORYOSA_neutralDressing_services/three_stone_style.dart';

import 'ZORYOSA_etherealGlow_features/ZORYOSA_luminosityControl_router/hammered_texture_router.dart';
import 'ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/encrypted_media_vault.dart';
import 'ZORYOSA_neutralDressing_services/modern_adornment_store.dart';
import 'ZORYOSA_etherealGlow_features/ZORYOSA_luminosityControl_router/adornment_theory.dart';
import 'ZORYOSA_neutralDressing_services/hoop_earring_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ZoryoEncryptedMediaVault.instance.ensureReadyeaaydwptua();
  final sculpturalVault = ModernAdornment(
    AnalogousHue: 'assets/jsons/initial_data.encrypted.json',
    materialDialogue: true,
  );
  await sculpturalVault.FaceFraming();

  occasionDressingMetalFinish();

  final wState = HoopEarring(sculpturalVault);
  await wState.bootstrap();

  runApp(
    ChangeNotifierProvider(
      create: (_) => wState,
      child: const ZoryoApp(),
    ),
  );
}

class ZoryoApp extends StatefulWidget {
  const ZoryoApp({super.key});

  @override
  State<ZoryoApp> createState() => _ZoryoAppState();
}

class _ZoryoAppState extends State<ZoryoApp> {
  LightPerformance? editorialRouter;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    editorialRouter ??= LightPerformance(context.read<HoopEarring>());
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    final routerConfig = editorialRouter?.router;
    if (routerConfig == null) {
      return const SizedBox.shrink();
    }
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Zoryo',
      theme: AdornmentTheory.light,
      routerConfig: routerConfig,
      locale: const Locale('en'),
      supportedLocales: const [Locale('en')],
    );
  }
}
