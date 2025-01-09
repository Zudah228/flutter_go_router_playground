import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthLoadingPage extends ConsumerWidget {
  const AuthLoadingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('認証状態をチェック中です'),
            SizedBox(height: 16),
            CircularProgressIndicator(),
            SizedBox(height: 64)
          ],
        ),
      ),
    );
  }
}
