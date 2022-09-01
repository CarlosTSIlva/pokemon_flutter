import 'package:json_annotation/json_annotation.dart';
part 'pokemons_response.g.dart';

@JsonSerializable()
class PokemonsResponse {
  final String name;
  final String url;

  PokemonsResponse({required this.name, required this.url});

  factory PokemonsResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonsResponseToJson(this);
}
