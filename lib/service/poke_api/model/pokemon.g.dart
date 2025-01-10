// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonImpl _$$PokemonImplFromJson(Map<String, dynamic> json) =>
    _$PokemonImpl(
      image: PokemonImage.fromJson(json['sprites'] as Map<String, dynamic>),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$PokemonImplToJson(_$PokemonImpl instance) =>
    <String, dynamic>{
      'sprites': instance.image,
      'name': instance.name,
    };

_$PokemonImageImpl _$$PokemonImageImplFromJson(Map<String, dynamic> json) =>
    _$PokemonImageImpl(
      front_default: json['front_default'] as String,
      back_default: json['back_default'] as String,
    );

Map<String, dynamic> _$$PokemonImageImplToJson(_$PokemonImageImpl instance) =>
    <String, dynamic>{
      'front_default': instance.front_default,
      'back_default': instance.back_default,
    };
