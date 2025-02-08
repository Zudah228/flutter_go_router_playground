import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_core/ui_parts/snack_bar.dart';
import '../../service/poke_api/exception/poke_api_exception.dart';
import '../utils/audio_player.dart';
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
                Image.network(
                  data.image.front_default,
                  height: 150,
                ),
                const SizedBox(height: 16),
                Text(
                  data.name,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'タイプ: ${data.types.map((type) => type.type.name).join(', ')}',
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'サウンド: ',
                      style: TextStyle(fontSize: 16),
                    ),
                    IconButton(
                      icon: const Icon(Icons.play_circle),
                      onPressed: () async {
                        try {
                          final url = data.cry.latest;
                          await AudioPlayer().playUrl(url);
                        } catch (e) {
                          print('音声の再生に失敗しました: $e');
                          showSnackBar('音声の再生に失敗しました: $e');
                        }
                      },
                    ),
                  ],
                ),
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
