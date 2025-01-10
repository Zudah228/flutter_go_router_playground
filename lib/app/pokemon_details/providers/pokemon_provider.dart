import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../service/poke_api/model/pokemon.dart';
import '../../../service/poke_api/poke_api_service.dart';

part 'pokemon_provider.g.dart';

@riverpod
Future<Pokemon> pokemonProvider(Ref ref, String id) async {
  return ref.watch(pokeApiServiceProvider).pokemon(id);
}
