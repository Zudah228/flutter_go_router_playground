import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../service/poke_api/exception/poke_api_exception.dart';
import 'providers/pokemon_provider.dart';

class PokemonDetailsPage extends ConsumerWidget {
  const PokemonDetailsPage(this.id, {super.key});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(pokemonProviderProvider(id));

    return Scaffold(
      appBar: AppBar(
        title: Text(asyncValue.valueOrNull?.name ?? id),
      ),
      body: asyncValue.when(
        data: (data) {
          return Center(
            child: Column(
              children: [
                Image.network(data.image.front_default),
                Image.network(data.image.back_default),
              ],
            ),
          );
        },
        error: (error, __) {
          if (error is NotFoundPokeException) {
            return Center(child: Text('${error.id}のポケモンはいません'));
          }
          return Center(child: Text(error.toString()));
        },
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
