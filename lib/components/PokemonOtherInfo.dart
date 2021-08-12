import 'package:flutter/material.dart';

class PokemonOtherInfo extends StatefulWidget {
  const PokemonOtherInfo({
    Key? key,
    required this.genus,
    required this.height,
    required this.weight,
  }) : super(key: key);

  final int height;
  final int weight;
  final String genus;

  @override
  _PokemonOtherInfoState createState() => _PokemonOtherInfoState();
}

class _PokemonOtherInfoState extends State<PokemonOtherInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text('Other Infos', style: TextStyle(fontWeight: FontWeight.bold)),
          Wrap(
            spacing: 10,
            direction: Axis.horizontal,
            children: [
              Text('Genus: ${widget.genus}'),
              Text('Height: ${(widget.height / 10).toString()} m'),
              Text('Weight: ${(widget.weight / 10).toString()} kg}'),
            ],
          )
        ],
      ),
    );
  }
}
