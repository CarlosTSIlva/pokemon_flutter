// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_pokemons_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPokemonsResponse _$GetPokemonsResponseFromJson(Map<String, dynamic> json) =>
    GetPokemonsResponse(
      (json['results'] as List<dynamic>)
          .map((e) => PokemonsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetPokemonsResponseToJson(
        GetPokemonsResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
