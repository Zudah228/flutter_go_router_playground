import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_core/global_keys/global_keys.dart';
import '../app_core/router/router.dart';
import '../app_core/theme/theme.dart';

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routerConfig = ref.watch(routerProvider);

    return MaterialApp.router(
      scaffoldMessengerKey: globalScaffoldMessengerKey,
      routerConfig: routerConfig,
      theme: MainAppTheme.light,
      darkTheme: MainAppTheme.dark,
    );
  }
}
