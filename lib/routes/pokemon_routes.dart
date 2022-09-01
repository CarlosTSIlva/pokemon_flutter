import 'package:api_example/features/get_pokemon/get_pokemon_args.dart';
import 'package:api_example/features/get_pokemon/get_pokemon_page.dart';
import 'package:api_example/features/pokemons/pokemon_page.dart';
import 'package:flutter/material.dart';

class PokemonRoutes {
  static const String pokemonList = '/';
  static const String pokemonDetail = '/pokemonDetail';

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case pokemonList:
        return MaterialPageRoute(builder: (_) => const PokemonsPage());
      case pokemonDetail:
        return MaterialPageRoute(
            builder: (ars) => GetPokemonPage(
                  args: settings.arguments as DadosAgs,
                ));
      default:
    }
    return null;
  }
}
