import 'package:dex/actions/PokeApi.dart';
import 'package:dex/model/NamedApiResource.dart';
import 'package:dex/model/Pokemon.dart';
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
    return Card(
      child: Padding(
        child: Column(
          children: [
            // Add GestureDetector
            Text('Numero : '),
            Text('Ici mon image'),
            Text(widget.pokemon.name),
            Text("ici les types"),
          ],
        ),
        padding: const EdgeInsets.all(8),
      ),
      elevation: 2,
    );
  }
}
