import 'package:json_annotation/json_annotation.dart';

part 'pokemon_strites.g.dart';

@JsonSerializable()
class PokemonSprites {
  final String back_default;
  PokemonSprites({
    required this.back_default,
  });

  factory PokemonSprites.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpritesFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonSpritesToJson(this);
}
