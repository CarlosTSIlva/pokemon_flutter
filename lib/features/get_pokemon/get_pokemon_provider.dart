import 'package:api_example/features/get_pokemon/model/get_pokemon_view_data.dart';
import 'package:api_example/features/get_pokemon/usecase/get_pokemon_use_case.dart';
import 'package:api_example/shared/repository/pokemom_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getPokemonsUseCase = Provider((ref) {
  return GetByPokemonUseCase(repository: ref.read(pokemonRepositoryProvider));
});

final getPokemonsProvider =
    FutureProvider.family<GetPokemonViewData, String>((ref, id) async {
  return ref.read(getPokemonsUseCase).execute(id);
});
