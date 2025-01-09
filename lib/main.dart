import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/app.dart';
import 'app/auth/providers/current_user.dart';
import 'dependency_injection/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final container =
      ProviderContainer(overrides: await DependencyInjection.override());

  unawaited(container.read(currentUserNotifierProvider.notifier).load());

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const MainApp(),
    ),
  );
}
