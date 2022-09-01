import 'package:api_example/features/get_pokemon/mapper/get_pokemon_mapper.dart';
import 'package:api_example/features/get_pokemon/model/get_pokemon_view_data.dart';
import 'package:api_example/shared/repository/pokemon_repository.dart';

class GetByPokemonUseCase {
  final PokemonRepository repository;
  GetByPokemonUseCase({required this.repository});

  Future<GetPokemonViewData> execute(String id) async {
    final response = await repository.getByPokemon(id);

    return response.toViewData();
  }
}
