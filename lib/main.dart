import 'package:api_example/routes/pokemon_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Api Example',
      initialRoute: '/',
      onGenerateRoute: (settings) => PokemonRoutes.generateRoute(settings),
    );
  }
}
