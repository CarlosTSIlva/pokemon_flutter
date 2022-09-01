class PokemonViewData {
  final List<Pokemon> pokemons;

  PokemonViewData({required this.pokemons});
}

class Pokemon {
  final String name;
  final String id;

  Pokemon({required this.name, required this.id});
}
