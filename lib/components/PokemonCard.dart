import 'package:dex/actions/PokeApi.dart';
import 'package:dex/model/NamedApiResource.dart';
import 'package:dex/model/Pokemon.dart';
import 'package:dex/model/Types.dart';
import 'package:dex/screens/PokemonPage.dart';
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

  List<Color> getColor(List<Types> types) {
    List<Color> colors = [];
    Color color1;
    Color color2;
    color1 = getColorfromTypes(types[0].type.name);

    types.length == 2
        ? color2 = getColorfromTypes(types[1].type.name)
        : color2 = color1;
    colors.add(color1);
    colors.add(color2);
    return colors;
  }

  Color getColorfromTypes(String type) {
    switch (type) {
      case 'grass':
        return Colors.green.shade300;
      case 'fire':
        return Colors.orange.shade300;
      case 'water':
        return Colors.blue.shade300;
      case 'bug':
        return Colors.lightGreen.shade300;
      case 'normal':
        return Colors.grey.shade400;
      case 'poison':
        return Colors.purple.shade300;
      case 'flying':
        return Colors.indigo.shade100;
      case 'psychic':
        return Colors.pinkAccent.shade100;
      case 'fighting':
        return Colors.pink.shade700;
      case 'rock':
        return Colors.brown.shade200;
      case 'ghost':
        return Colors.indigo.shade300;
      case 'ice':
        return Colors.cyan.shade100;
      case 'dragon':
        return Colors.blue.shade400;
      case 'dark':
        return Colors.blueGrey.shade800;
      case 'steel':
        return Colors.blueGrey;
      case 'fairy':
        return Colors.pink.shade100;
      case 'ground':
        return Colors.deepOrange.shade300;
      case 'electric':
        return Colors.amber.shade300;
      default:
        return Colors.limeAccent.shade400;
    }
  }
}
