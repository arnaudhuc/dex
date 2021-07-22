import 'package:dex/model/NamedApiResource.dart';
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
  @override
  Widget build(BuildContext context) {
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
