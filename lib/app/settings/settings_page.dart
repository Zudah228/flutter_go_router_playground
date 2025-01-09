import 'package:flutter/material.dart';

import '../../app_core/router/routes.dart';
import '../auth/components/logout_list_tile.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.location_on),
            title: const Text('パスの設定'),
            onTap: () {
              const SettingsPathRoute().push(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.local_activity),
            title: const Text('SharedPreferences'),
            onTap: () {
              const SettingsSharedPreferencesRoute().push(context);
            },
          ),
          const LogoutListTile(),
        ],
      ),
    );
  }
}
