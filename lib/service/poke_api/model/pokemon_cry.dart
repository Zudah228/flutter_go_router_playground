import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_cry.freezed.dart';
part 'pokemon_cry.g.dart';

@freezed
class PokemonCry with _$PokemonCry {
  const factory PokemonCry({
    required String legacy,
    required String latest,
  }) = _PokemonCry;

  const PokemonCry._();

  factory PokemonCry.fromJson(Map<String, Object?> json) =>
      _$PokemonCryFromJson(json);
}
