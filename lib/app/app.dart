import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_core/global_keys/global_keys.dart';
import '../app_core/providers/redirecting_path.dart';
import '../app_core/router/router.dart';
import '../app_core/theme/theme.dart';
import 'auth/providers/current_user.dart';

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routerConfig = ref.watch(routerProvider);

    ref.listen(redirectingPathProvider, (_, cur) {
      if (cur.asData?.value case final url?) {
        if (ref.read(currentUserNotifierProvider) is AuthenticatedUser) {
          (routerConfig).go(url.path);
        }
      }
    });

    return MaterialApp.router(
      scaffoldMessengerKey: globalScaffoldMessengerKey,
      routerConfig: routerConfig,
      theme: MainAppTheme.light,
      darkTheme: MainAppTheme.dark,
    );
  }
}
