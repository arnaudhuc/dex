import 'package:dex/actions/PokeApi.dart';
import 'package:dex/model/NamedApiResource.dart';
import 'package:dex/model/Pokemon.dart';
import 'package:dex/screens/PokemonPage.dart';
import 'package:dex/utils/GetColor.dart';
import 'package:flutter/material.dart';

class PokemonCard extends StatefulWidget {
  final NamedApiResource pokemon;

  const PokemonCard({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  @override
  _PokemonCardState createState() => _PokemonCardState();
}

class _PokemonCardState extends State<PokemonCard> {
  final pokeApi = new PokeApi();
  @override
  Widget build(BuildContext context) {
    Future<Pokemon> getAll = pokeApi.getOne(widget.pokemon.url);
    return FutureBuilder<Pokemon>(
      future: getAll,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: Container(
                child: Padding(
                  child: Column(
                    children: [
                      // Add GestureDetector
                      Text('#${snapshot.data!.id}'),
                      // Text('Ici mon image 2'),
                      Image(
                        image:
                            NetworkImage(snapshot.data!.sprites.frontDefault),
                        width: 96,
                        height: 96,
                      ),
                      Text(snapshot.data!.name),
                      // Text(widget.pokemon.name),
                      // Text("ici les types"),
                    ],
                  ),
                  padding: const EdgeInsets.all(8),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: getColor(snapshot.data!.types),
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                  ),
                ),
                width: 112,
                height: 160,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          PokemonPage(pokemon: snapshot.data!)),
                );
              },
            ),
          );
        } else if (snapshot.hasError) {
          print(snapshot.stackTrace);
          print(snapshot.error);
          return Text("ERROR : ${snapshot.error}");
        }
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: SizedBox(
              width: 112,
              height: 160,
            ),
            color: Colors.grey.shade300,
          ),
        );
      },
    );
  }
}
