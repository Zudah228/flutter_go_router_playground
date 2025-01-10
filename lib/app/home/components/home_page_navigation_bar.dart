import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../home_shell.dart';
import '../providers/current_home_shell_provider.dart';

class HomePageNavigationBar extends ConsumerStatefulWidget {
  const HomePageNavigationBar({super.key});

  @override
  ConsumerState<HomePageNavigationBar> createState() =>
      _HomePageNavigationBarState();
}

class _HomePageNavigationBarState extends ConsumerState<HomePageNavigationBar> {
  @override
  Widget build(BuildContext context) {
    final shellType = ref.watch(currentHomeShellProvider);

    return NavigationBar(
      destinations: HomeTab.values.map((type) {
        switch (type) {
          case HomeTab.home:
            return const NavigationDestination(
              icon: Icon(Icons.home),
              label: 'home',
            );

          case HomeTab.note:
            return const NavigationDestination(
              icon: Icon(Icons.note),
              label: 'note',
            );
          case HomeTab.pokemon:
            return const NavigationDestination(
              icon: Icon(Icons.catching_pokemon),
              label: 'poke',
            );
        }
      }).toList(),
      selectedIndex: HomeTab.values.indexOf(shellType),
      onDestinationSelected: (index) {
        ref.read(currentHomeShellProvider.notifier).state =
            HomeTab.values[index];
      },
    );
  }
}
