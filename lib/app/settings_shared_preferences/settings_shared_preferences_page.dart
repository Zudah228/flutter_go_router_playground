import 'package:flutter/material.dart';
import 'package:shared_preferences_explorer/shared_preferences_explorer.dart';

class SettingsSharedPreferencesPage extends StatelessWidget {
  const SettingsSharedPreferencesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SharedPreferencesExplorer(
      child: SharedPreferencesExplorerScreen(),
    );
  }
}
