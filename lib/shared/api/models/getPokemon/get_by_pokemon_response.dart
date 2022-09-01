// ignore_for_file: non_constant_identifier_names
import 'package:api_example/shared/api/models/getPokemon/pokemon_strites.dart';
import 'package:api_example/shared/api/models/getPokemon/pokemon_type.dart';
import 'package:json_annotation/json_annotation.dart';
part 'get_by_pokemon_response.g.dart';

@JsonSerializable()
class GetByPokemonResponse {
  final int weight;
  final int height;
  final PokemonSprites sprites;
  final List<PokemonType> types;

  GetByPokemonResponse({
    required this.weight,
    required this.height,
    required this.sprites,
    required this.types,
  });

  factory GetByPokemonResponse.fromJson(Map<String, dynamic> json) =>
      _$GetByPokemonResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetByPokemonResponseToJson(this);
}
