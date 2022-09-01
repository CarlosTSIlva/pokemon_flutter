import 'package:api_example/features/get_pokemon/model/get_pokemon_view_data.dart';
import 'package:api_example/shared/api/models/getPokemon/get_by_pokemon_response.dart';

extension GetPokemonMapper on GetByPokemonResponse {
  GetPokemonViewData toViewData() {
    return GetPokemonViewData(
      height: height,
      weight: weight,
      sprites: sprites.back_default,
      types: types[0].type.name,
    );
  }
}
