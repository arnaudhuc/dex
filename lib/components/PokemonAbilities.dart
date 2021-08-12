import 'package:dex/model/Abilities.dart';
import 'package:flutter/material.dart';

class PokemonAbilities extends StatefulWidget {
  const PokemonAbilities({Key? key, required this.abilities}) : super(key: key);

  final List<Abilities> abilities;

  @override
  _PokemonAbilitiesState createState() => _PokemonAbilitiesState();
}

class _PokemonAbilitiesState extends State<PokemonAbilities> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text('Abilities', style: TextStyle(fontWeight: FontWeight.bold)),
          Wrap(
            direction: Axis.horizontal,
            spacing: 20,
            children: [
              ...widget.abilities.map((ability) {
                return Text('• ${ability.ability.name}');
              }),
            ],
          ),
        ],
      ),
    );
  }
}
