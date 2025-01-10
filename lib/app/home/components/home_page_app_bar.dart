import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../home_shell.dart';
import '../providers/current_home_shell_provider.dart';

class HomePageAppBar extends AppBar {
  HomePageAppBar({super.key})
      : super(
          title: const _Title(),
        );
}

class _Title extends ConsumerWidget {
  const _Title();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String title;

    switch (ref.watch(currentHomeShellProvider)) {
      case HomeTab.home:
        title = 'Home';
      case HomeTab.note:
        title = 'Note';
      case HomeTab.pokemon:
        title = 'Poke';
    }

    return Text(title);
  }
}
