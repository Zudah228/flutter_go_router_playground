import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'providers/pokemon_provider.dart';

class PokemonDetailsPage extends ConsumerWidget {
  const PokemonDetailsPage(this.id, {super.key});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeData = Theme.of(context);
    final textTheme = themeData.textTheme;

    final asyncValue = ref.watch(pokemonProviderProvider(id));

    return asyncValue.when(
      data: (data) {
        return Column(
          children: [
            Text(
              data.name,
              style: textTheme.displaySmall,
            ),
            Image.network(data.image.front_default),
            Image.network(data.image.back_default),
          ],
        );
      },
      error: (error, __) => Center(child: Text(error.toString())),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
