import 'package:api_example/features/get_pokemon/get_pokemon_args.dart';
import 'package:api_example/routes/pokemon_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'pokemon_provider.dart';

class PokemonsPage extends ConsumerWidget {
  const PokemonsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getPokemonsProvider = ref.watch(pokemonsProvider);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: getPokemonsProvider.when(
            data: (data) => SingleChildScrollView(
              child: Column(
                  children: data.pokemons
                      .map((pokemon) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  PokemonRoutes.pokemonDetail,
                                  arguments: DadosAgs(
                                      id: pokemon.id, name: pokemon.name),
                                );
                              },
                              child: Container(
                                color: Colors.green,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(children: [
                                    Expanded(child: Text(pokemon.name)),
                                    Expanded(child: Text(pokemon.id)),
                                    Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: const Text("Add"),
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                            ),
                          ))
                      .toList()),
            ),
            error: (error, stackTrace) => const Text('Ooops, erro!'),
            loading: () => const CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
