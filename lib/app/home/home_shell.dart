import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../app_core/router/routes.dart';
import 'components/home_page_app_bar.dart';
import 'components/home_page_drawer.dart';
import 'components/home_page_navigation_bar.dart';

enum HomeShellType {
  home,
  note,
  ;
}

class HomeShell extends StatelessWidget {
  const HomeShell({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomePageAppBar(),
      drawer: const HomePageDrawer(),
      bottomNavigationBar: const HomePageNavigationBar(),
      body: child,
    );
  }

  static final navigatorKey = GlobalKey<NavigatorState>();

  static void pop() {
    HomeShell.navigatorKey.currentState!.pop();
  }

  static void go(int index) {
    final context = navigatorKey.currentContext!;
    switch (index) {
      case 0:
        const HomeRoute().go(context);
      case 1:
        const NoteListRoute().go(context);
    }
  }

  static int currentIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.path;

    if (location.startsWith(const HomeRoute().location)) {
      return 0;
    }
    return 1;
  }

  static HomeShellType currentType(BuildContext context) {
    return HomeShellType.values[currentIndex(context)];
  }
}
