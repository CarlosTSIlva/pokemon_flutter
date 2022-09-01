// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_by_pokemon_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetByPokemonResponse _$GetByPokemonResponseFromJson(
        Map<String, dynamic> json) =>
    GetByPokemonResponse(
      weight: json['weight'] as int,
      height: json['height'] as int,
      sprites: PokemonSprites.fromJson(json['sprites'] as Map<String, dynamic>),
      types: (json['types'] as List<dynamic>)
          .map((e) => PokemonType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetByPokemonResponseToJson(
        GetByPokemonResponse instance) =>
    <String, dynamic>{
      'weight': instance.weight,
      'height': instance.height,
      'sprites': instance.sprites,
      'types': instance.types,
    };
