import 'package:api_example/features/pokemons/model/pokemon_view_data.dart';
import 'package:api_example/shared/api/models/pokemon/get_all_pokemons_response.dart';

extension PokemonMapper on GetPokemonsResponse {
  PokemonViewData toViewData() {
    return PokemonViewData(
        pokemons: results
            .map((pokemon) => Pokemon(
                name: pokemon.name,
                id: pokemon.url
                    .split('https://pokeapi.co/api/v2/pokemon/')[1]
                    .split("/")[0]))
            .toList());
  }
}
