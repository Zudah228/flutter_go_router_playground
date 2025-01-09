import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'providers/current_user.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ログイン'),
      ),
      body: Center(
        child: FilledButton(
          onPressed: () {
            ref.read(currentUserNotifierProvider.notifier).login();
          },
          child: const Text('ログイン'),
        ),
      ),
    );
  }
}
