// import 'package:api_example/shared/api/models/pokemon/pokemons_response.dart';
// import 'package:json_annotation/json_annotation.dart';

// part 'get_all_pokemons_response.g.dart';

// @JsonSerializable()
// class PokemonType {
//   final List<PokemonsResponse> results;

//   PokemonType(this.results);

//   factory GetPokemonsResponse.fromJson(Map<String, dynamic> json) =>
//       _$GetPokemonsResponseFromJson(json);

//   Map<String, dynamic> toJson() => _$GetPokemonsResponseToJson(this);
// }

import 'package:api_example/shared/api/models/getPokemon/pokemon_type_name.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pokemon_type.g.dart';

@JsonSerializable()
class PokemonType {
  final PokemonTypeName type;
  PokemonType({
    required this.type,
  });

  factory PokemonType.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonTypeToJson(this);
}
