import 'package:dex/actions/PokeApi.dart';
import 'package:dex/components/PokemonAbilities.dart';
import 'package:dex/components/PokemonBaseInfo.dart';
import 'package:dex/components/PokemonOtherInfo.dart';
import 'package:dex/components/PokemonTypes.dart';
import 'package:dex/model/Pokemon.dart';
import 'package:dex/model/Species.dart';
import 'package:dex/utils/GetColor.dart';
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
        title: Text("#${widget.pokemon.id} - ${widget.pokemon.name}"),
      ),
      body: FutureBuilder<Species>(
          future: getAll,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final genera = snapshot.data!.genera.firstWhere((gen) {
                return gen.language.name.startsWith('en');
              });
              return SingleChildScrollView(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Image(
                            image: NetworkImage(
                                widget.pokemon.sprites.frontDefault),
                          ),
                          Flexible(
                            child: Text(
                              snapshot.data!.flavorTextEntries[0].flavorText
                                  .replaceAll("\n", " ")
                                  .replaceAll("\f", ""),
                            ),
                          ),
                        ],
                      ),
                      PokemonBaseInfo(stats: widget.pokemon.stats),
                      PokemonAbilities(abilities: widget.pokemon.abilities),
                      PokemonOtherInfo(
                        genus: genera.genus,
                        height: widget.pokemon.height,
                        weight: widget.pokemon.weight,
                      ),
                      PokemonTypes(types: widget.pokemon.types),
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
          }),
    );
  }
}
