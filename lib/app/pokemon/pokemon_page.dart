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
            const PokemonDetailsRoute('500').push(context);
          },
          child: const Text('PokemonPage'),
        ),
      ),
    );
  }
}
