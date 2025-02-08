import 'dart:convert';

import 'package:http/http.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'exception/poke_api_exception.dart';
import 'model/pokemon.dart';

part 'poke_api_service.g.dart';

@riverpod
PokeApiService pokeApiService(Ref ref) {
  return const PokeApiService();
}

class PokeApiService {
  const PokeApiService();

  static final _baseUri = Uri.https('pokeapi.co', '/api/v2');

  Future<Pokemon> pokemon(String id) async {
    final client = Client();

    final response = await client.get(
      _baseUri.replace(
        pathSegments: [..._baseUri.pathSegments, 'pokemon', id],
      ),
    );

    if (response.statusCode == 404) {
      throw NotFoundPokeException(id: id);
    }

    if (!(response.statusCode >= 200 && response.statusCode < 300)) {
      throw PokeApiException();
    }

    final data = (jsonDecode(response.body) as Map<String, dynamic>);

    return Pokemon.fromJson(data);
  }
}
