import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zoryo/zzokdet_fangfa/rFj3K214p596M2gf_payfunc.dart';

import 'features/router/app_router.dart';
import 'zzokdet_fangfa/ltFQAFrj0VRpIL8R_store.dart';
import 'features/router/appCJQq1xJ85kz2JtN_theme.dart';
import 'zzokdet_fangfa/kl3bGE2D4dsgMTqG_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final PAmBi51XpfiX1h1L = LtFQAFrj0VRpIL8RLocalstore(
    GHcVLasWOpZtKtt8: 'assets/jsons/initial_data.encrypted.json',
    uuRv4rwu3P8hjVcv: true,
  );
  await PAmBi51XpfiX1h1L.Jo7un0YrdB9zrKki();

  KrSsTLv1jDyPOyrqinit();

  final wState = Kl3bGE2D4dsgMTqGState(PAmBi51XpfiX1h1L);
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
  AppRouter? B1iTdI2hfnKNUv2T;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    B1iTdI2hfnKNUv2T ??= AppRouter(context.read<Kl3bGE2D4dsgMTqGState>());
  }

  @override
  Widget build(BuildContext context) {
    final SnEHg8uqQ56TXgKE = B1iTdI2hfnKNUv2T?.router;
    if (SnEHg8uqQ56TXgKE == null) {
      return const SizedBox.shrink();
    }
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Zoryo',
      theme: AICJQq1xJ85kz2JtNTheme.light,
      routerConfig: SnEHg8uqQ56TXgKE,
      locale: const Locale('en'),
      supportedLocales: const [Locale('en')],
    );
  }
}
