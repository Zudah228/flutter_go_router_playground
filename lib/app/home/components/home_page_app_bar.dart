import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../home_shell.dart';

class HomePageAppBar extends AppBar {
  HomePageAppBar({super.key})
      : super(
          title: const _Title(),
          leading: const _Leading(),
        );
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    final String title;

    switch (HomeShell.currentType(context)) {
      case HomeShellType.home:
        title = 'Home';
      case HomeShellType.note:
        title = 'Note';
      case HomeShellType.pokemon:
        title = 'Poke';
    }

    return Text(title);
  }
}

class _Leading extends StatelessWidget {
  const _Leading();

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.path;

    if (location.split('/').length > 2) {
      return BackButton(
        onPressed: () {
          HomeShell.pop();
        },
      );
    }

    if (Scaffold.hasDrawer(context)) return const DrawerButton();

    return const SizedBox.shrink();
  }
}
