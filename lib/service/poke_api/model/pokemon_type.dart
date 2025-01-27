import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_type.freezed.dart';
part 'pokemon_type.g.dart';

@freezed
class PokemonType with _$PokemonType {
  const factory PokemonType({
    required String name,
    required String url,
  }) = _PokemonType;

  const PokemonType._();

  factory PokemonType.fromJson(Map<String, Object?> json) =>
      _$PokemonTypeFromJson(json);
}
