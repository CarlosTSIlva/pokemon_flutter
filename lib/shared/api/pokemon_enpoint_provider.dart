import 'package:api_example/shared/api/pokemon_endpoint.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pokemonEndpointProvider = Provider((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: 'https://pokeapi.co/api/v2/pokemon',
  ));
  return PokemonEndpoint(dio);
});
