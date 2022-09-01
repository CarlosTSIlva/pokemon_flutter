import 'package:api_example/features/pokemons/model/pokemon_view_data.dart';
import 'package:api_example/features/pokemons/usecase/pokemon_use_case.dart';
import 'package:api_example/shared/repository/pokemom_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getPokemonsUseCase = Provider((ref) {
  return GetPokemonUseCase(repository: ref.read(pokemonRepositoryProvider));
});

final pokemonsProvider = FutureProvider<PokemonViewData>((ref) async {
  return ref.read(getPokemonsUseCase).execute();
});
