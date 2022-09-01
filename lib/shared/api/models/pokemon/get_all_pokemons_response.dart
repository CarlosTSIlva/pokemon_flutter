import 'package:api_example/shared/api/models/pokemon/pokemons_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_all_pokemons_response.g.dart';

@JsonSerializable()
class GetPokemonsResponse {
  final List<PokemonsResponse> results;

  GetPokemonsResponse(this.results);

  factory GetPokemonsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetPokemonsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetPokemonsResponseToJson(this);
}
