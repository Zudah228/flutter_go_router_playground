import 'package:flutter/material.dart';

import '../../app_core/router/routes.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Page がありませんでした'),
            const SizedBox(height: 24),
            TextButton(
              onPressed: () {
                const HomeRoute().go(context);
              },
              child: const Text('Home'),
            )
          ],
        ),
      ),
    );
  }
}
