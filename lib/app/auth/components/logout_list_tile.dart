import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/current_user.dart';

class LogoutListTile extends ConsumerWidget {
  const LogoutListTile({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeData = Theme.of(context);

    return ListTile(
      title: const Text('Logout'),
      textColor: themeData.colorScheme.error,
      iconColor: themeData.colorScheme.error,
      leading: const Icon(Icons.logout),
      onTap: () {
        ref.read(currentUserNotifierProvider.notifier).logout();
      },
    );
  }
}
