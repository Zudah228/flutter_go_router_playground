import 'package:freezed_annotation/freezed_annotation.dart';

import 'pokemon_type.dart';

part 'pokemon_type_slot.freezed.dart';
part 'pokemon_type_slot.g.dart';
@freezed
class PokemonTypeSlot with _$PokemonTypeSlot {
  const factory PokemonTypeSlot({
    required int slot,
    required PokemonType type,
  }) = _PokemonTypeSlot;

  const PokemonTypeSlot._();

  factory PokemonTypeSlot.fromJson(Map<String, Object?> json) =>
      _$PokemonTypeSlotFromJson(json);
}
