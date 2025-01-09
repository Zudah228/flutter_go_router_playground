import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'providers/on_exit_handler.dart';

class OnExitPage extends ConsumerWidget {
  const OnExitPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final handleType = ref.watch(onExitHandlerNotifierProvider);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FilledButton(
          onPressed: () {
            ref.read(onExitHandlerNotifierProvider.notifier).toggle();
          },
          child: Text('Pop ガード：$handleType'),
        ),
      ),
    );
  }
}
