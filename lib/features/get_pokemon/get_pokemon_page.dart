// ignore_for_file: avoid_print

import 'package:api_example/features/get_pokemon/get_pokemon_args.dart';
import 'package:api_example/features/get_pokemon/get_pokemon_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GetPokemonPage extends ConsumerWidget {
  final DadosAgs args;
  const GetPokemonPage({Key? key, required this.args}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getPokemons = ref.watch(getPokemonsProvider(args.id));
    getPokemons.whenOrNull(
      data: (data) {
        print(data);
      },
    );

    return Scaffold(
      body: Center(
        child: getPokemons.when(
            data: (data) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("o nome do pokemon é ${args.name}"),
                    Text("Tipo poder ${data.types}"),
                    Text("Altura dele é ${data.height}"),
                    Text("Peso dele é ${data.weight}"),
                    Image.network(data.sprites),
                  ],
                ),
            error: (error, stackTrace) => const Text('Ooops, erro!'),
            loading: () => const CircularProgressIndicator()),
      ),
    );
  }
}
