import 'package:api_example/shared/repository/pokemon_repository.dart';
import 'package:riverpod/riverpod.dart';
import '../api/pokemon_enpoint_provider.dart';

final pokemonRepositoryProvider = Provider((ref) {
  return PokemonRepository(pokemonEndpoint: ref.read(pokemonEndpointProvider));
});
