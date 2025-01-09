import 'package:flutter/material.dart';

import '../home_shell.dart';

class HomePageNavigationBar extends StatelessWidget {
  const HomePageNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: 'home'),
        NavigationDestination(icon: Icon(Icons.note), label: 'note'),
      ],
      selectedIndex: HomeShell.currentIndex(context),
      onDestinationSelected: (value) {
        HomeShell.go(value);
      },
    );
  }
}
