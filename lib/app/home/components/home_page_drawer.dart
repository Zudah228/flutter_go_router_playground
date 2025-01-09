import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app_core/router/routes.dart';
import '../../auth/components/logout_list_tile.dart';

class HomePageDrawer extends ConsumerWidget {
  const HomePageDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      child: Column(
        children: [
          const SizedBox(
            width: double.infinity,
            child: DrawerHeader(
              child: Text('Go Router'),
            ),
          ),
          ListTile(
            title: const Text('Settings'),
            leading: const Icon(Icons.settings),
            onTap: () {
              const SettingsRoute().push(context);
              Scaffold.of(context).openEndDrawer();
            },
          ),
          const LogoutListTile()
        ],
      ),
    );
  }
}
