import 'package:dex/actions/PokeApi.dart';
import 'package:dex/components/PokemonBaseInfo.dart';
import 'package:dex/model/Pokemon.dart';
import 'package:dex/model/Species.dart';
import 'package:flutter/material.dart';

class PokemonPage extends StatefulWidget {
  const PokemonPage({Key? key, required this.pokemon}) : super(key: key);

  final Pokemon pokemon;

  @override
  _PokemonPageState createState() => _PokemonPageState();
}

class _PokemonPageState extends State<PokemonPage> {
  final pokeApi = new PokeApi();
  @override
  Widget build(BuildContext context) {
    Future<Species> getAll = pokeApi.getSpecies(widget.pokemon.species.url);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pokemon.name),
      ),
      body: FutureBuilder<Species>(
          future: getAll,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return SingleChildScrollView(
                child: Center(
                  child: Text(snapshot.data!.flavorTextEntries[0].flavor_text),
                ),
              );
            } else if (snapshot.hasError) {
              print(snapshot.stackTrace);
              print(snapshot.error);
              return Text("ERROR : ${snapshot.error}");
            }

            // By default, show a loading spinner.
            return CircularProgressIndicator();
          }),
    );
  }
}
