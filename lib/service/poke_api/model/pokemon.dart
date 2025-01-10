// ignore_for_file: invalid_annotation_target, non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

@freezed
class Pokemon with _$Pokemon {
  const factory Pokemon({
    @JsonKey(name: 'sprites') required PokemonImage image,
    required String name,
  }) = _Pokemon;

  const Pokemon._();

  factory Pokemon.fromJson(Map<String, Object?> json) =>
      _$PokemonFromJson(json);
}

@freezed
class PokemonImage with _$PokemonImage {
  const factory PokemonImage({
    required String front_default,
    required String back_default,
  }) = _PokemonImage;

  const PokemonImage._();

  factory PokemonImage.fromJson(Map<String, Object?> json) => _$PokemonImageFromJson(json);
}
