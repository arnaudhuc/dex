import 'package:dex/actions/PokeApi.dart';
import 'package:dex/components/FilterGeneration.dart';
import 'package:dex/components/FilterPokemonName.dart';
import 'package:dex/components/PokemonCard.dart';
import 'package:dex/model/NamedApiResource.dart';
import 'package:dex/model/PokemonRootModel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _pokemonName = [];
  List<NamedApiResource> _pokemons = [];
  List<NamedApiResource> _results = [];
  String _defaultGeneration = 'Kanto (1-151)';

  @override
  Widget build(BuildContext context) {
    Future<PokeAPIRootTypes> getAll = new PokeApi().getAll(_defaultGeneration);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder<PokeAPIRootTypes>(
        future: getAll,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            _results = snapshot.data!.results;
            _pokemons = _results;
            _results.forEach((pokemon) => _pokemonName.add(pokemon.name));
            return SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    FilterGeneration(
                      defaultGeneration: _defaultGeneration,
                      onSelectGeneration: (generation) => {
                        setState(() {
                          _defaultGeneration = generation;
                        }),
                      },
                    ),
                    FilterPokemonName(
                      pokemonName: _pokemonName,
                      onPokemonSelected: (selectedPokemon) => {
                        if (selectedPokemon != '')
                          {
                            setState(
                              () => _pokemons = _results
                                  .where(
                                    (element) =>
                                        element.name == selectedPokemon,
                                  )
                                  .toList(),
                            )
                          }
                      },
                    ),
                    Wrap(children: [
                      ..._pokemons
                          .map((pokemon) => PokemonCard(pokemon: pokemon))
                          .toList(),
                    ]),
                  ],
                ),
              ),
            );
          } else if (snapshot.hasError) {
            print(snapshot.stackTrace);
            print(snapshot.error);
            return Text("ERROR : ${snapshot.error}");
          }

          // By default, show a loading spinner.
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
