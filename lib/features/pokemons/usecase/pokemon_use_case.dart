import 'package:api_example/features/pokemons/model/pokemon_view_data.dart';
import 'package:api_example/shared/repository/pokemon_repository.dart';
import '../mapper/pokemon_mapper.dart';

class GetPokemonUseCase {
  final PokemonRepository repository;
  GetPokemonUseCase({required this.repository});

  Future<PokemonViewData> execute() async {
    final response = await repository.getAllPokemons();

    return response.toViewData();
  }
}
