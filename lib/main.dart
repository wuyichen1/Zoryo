import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zoryo/zzokdet_fangfa/payfunc.dart';

import 'core/router/app_router.dart';
import 'core/storage/local_storage.dart';
import 'core/theme/app_theme.dart';
import 'zzokdet_fangfa/app_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // final storage = LocalStorageService();
  final storage = LocalStorageService(
    assetPath: 'assets/jsons/initial_data.encrypted.json',
    useEncryptedAsset: true,
  );
  await storage.ensureInitialized();

  skikawakamHulahkamiwaInit();

  runApp(
    ChangeNotifierProvider(
      create: (_) => AppState(storage)..bootstrap(),
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
  AppRouter? _router;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _router ??= AppRouter(context.read<AppState>());
  }

  @override
  Widget build(BuildContext context) {
    final router = _router?.router;
    if (router == null) {
      return const SizedBox.shrink();
    }
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Zoryo',
      theme: AppTheme.light,
      routerConfig: router,
      locale: const Locale('en'),
      supportedLocales: const [Locale('en')],
    );
  }
}
