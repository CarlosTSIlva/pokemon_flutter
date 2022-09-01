import 'package:api_example/shared/api/models/getPokemon/get_by_pokemon_response.dart';
import 'package:api_example/shared/api/models/pokemon/get_all_pokemons_response.dart';
import 'package:api_example/shared/api/pokemon_endpoint.dart';

class PokemonRepository {
  final PokemonEndpoint pokemonEndpoint;

  PokemonRepository({required this.pokemonEndpoint});

  Future<GetPokemonsResponse> getAllPokemons() async {
    final result = await pokemonEndpoint.getAllPokemons();
    return GetPokemonsResponse.fromJson(result.data);
  }

  Future<GetByPokemonResponse> getByPokemon(String id) async {
    final result = await pokemonEndpoint.getByPokemons(id);
    return GetByPokemonResponse.fromJson(result.data);
  }
}
