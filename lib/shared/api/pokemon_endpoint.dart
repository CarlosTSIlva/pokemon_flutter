import 'package:dio/dio.dart';

class PokemonEndpoint {
  final Dio _dio;

  PokemonEndpoint(this._dio);

  Future<Response> getAllPokemons() {
    return _dio.get("/");
  }

  Future<Response> getByPokemons(String id) {
    return _dio.get("/$id");
  }
}
