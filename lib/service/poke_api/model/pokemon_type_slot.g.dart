// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_type_slot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonTypeSlotImpl _$$PokemonTypeSlotImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonTypeSlotImpl(
      slot: (json['slot'] as num).toInt(),
      type: PokemonType.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonTypeSlotImplToJson(
        _$PokemonTypeSlotImpl instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };
