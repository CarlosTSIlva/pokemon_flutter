import 'package:json_annotation/json_annotation.dart';

part 'pokemon_type_name.g.dart';

@JsonSerializable()
class PokemonTypeName {
  final String name;
  PokemonTypeName({
    required this.name,
  });

  factory PokemonTypeName.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeNameFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonTypeNameToJson(this);
}
