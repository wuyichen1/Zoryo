import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zoryo/features/diamond/payfunc.dart';

import 'core/router/app_router.dart';
import 'core/storage/local_storage.dart';
import 'core/theme/app_theme.dart';
import 'providers/app_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final storage = LocalStorageService();
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
    // Create router only once to preserve route state during hot reload
    _router ??= AppRouter(context.read<AppState>());
  }

  @override
  Widget build(BuildContext context) {
    // Use cached router to avoid recreating GoRouter on every rebuild
    final router = _router?.router;
    if (router == null) {
      // Fallback during initial build
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
