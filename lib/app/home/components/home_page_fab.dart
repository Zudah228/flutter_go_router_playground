import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app_core/router/routes.dart';
import '../home_shell.dart';
import '../providers/current_home_shell_provider.dart';

class HomePageFab extends ConsumerWidget {
  const HomePageFab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    switch (ref.watch(currentHomeShellProvider)) {
      case HomeTab.home:
      case HomeTab.pokemon:
        return const SizedBox.shrink();
      case HomeTab.note:
        return FloatingActionButton(
          onPressed: () {
            const NoteCreateRoute().push(context);
          },
          child: const Icon(Icons.add),
        );
    }
  }
}
