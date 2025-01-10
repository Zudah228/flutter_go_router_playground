import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../note/note_list_page.dart';
import '../pokemon/pokemon_page.dart';
import 'components/home_page_app_bar.dart';
import 'components/home_page_drawer.dart';
import 'components/home_page_navigation_bar.dart';
import 'home_page.dart';
import 'providers/current_home_shell_provider.dart';

enum HomeTab {
  home,
  note,
  pokemon,
  ;
}

class HomeShell extends StatelessWidget {
  const HomeShell({this.initialTab, super.key});

  final HomeTab? initialTab;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        currentHomeShellProvider.overrideWith((_) => initialTab ?? HomeTab.home)
      ],
      child: Consumer(
        builder: (context, ref, _) {
          return Scaffold(
            appBar: HomePageAppBar(),
            drawer: const HomePageDrawer(),
            bottomNavigationBar: const HomePageNavigationBar(),
            body: IndexedStack(
              index:
                  HomeTab.values.indexOf(ref.watch(currentHomeShellProvider)),
              children: HomeTab.values.map((shellType) {
                return switch (shellType) {
                  HomeTab.home => const HomePage(),
                  HomeTab.note => const NoteListPage(),
                  HomeTab.pokemon => const PokemonPage(),
                };
              }).toList(),
            ),
          );
        },
      ),
    );
  }
}
