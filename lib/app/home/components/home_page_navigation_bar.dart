import 'package:flutter/material.dart';

import '../home_shell.dart';

class HomePageNavigationBar extends StatelessWidget {
  const HomePageNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: HomeShellType.values.map((type) {
        switch (type) {
          case HomeShellType.home:
            return const NavigationDestination(
              icon: Icon(Icons.home),
              label: 'home',
            );

          case HomeShellType.note:
            return const NavigationDestination(
              icon: Icon(Icons.note),
              label: 'note',
            );
          case HomeShellType.pokemon:
            return const NavigationDestination(
              icon: Icon(Icons.catching_pokemon),
              label: 'poke',
            );
        }
      }).toList(),
      selectedIndex: HomeShell.currentIndex(context),
      onDestinationSelected: (value) {
        HomeShell.go(value);
      },
    );
  }
}
