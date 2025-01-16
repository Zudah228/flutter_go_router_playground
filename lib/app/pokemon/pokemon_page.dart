import 'package:flutter/material.dart';

import '../../app_core/router/routes.dart';

class PokemonPage extends StatelessWidget {
  const PokemonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: false,
      body: Center(
        child: TextButton(
          onPressed: () {
            const PokemonDetailsRoute('399').push(context);
          },
          child: const Text('ビッパ'),
        ),
      ),
    );
  }
}
