import 'package:dex/model/Types.dart';
import 'package:dex/utils/GetColor.dart';
import 'package:flutter/material.dart';

class PokemonTypes extends StatelessWidget {
  final List<Types> types;
  const PokemonTypes({Key? key, required this.types}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text('Types', style: TextStyle(fontWeight: FontWeight.bold)),
          Wrap(
            spacing: 10,
            direction: Axis.horizontal,
            children: [
              ...this.types.map((type) => _displayType(type)),
            ],
          ),
        ],
      ),
    );
  }

  _displayType(Types type) {
    final bool isWhite = type.type.name == 'dark' ||
        type.type.name == 'steel' ||
        type.type.name == 'fighting';
    return Chip(
      backgroundColor: getColorfromTypes(type.type.name),
      label: Text(
        type.type.name,
        style: TextStyle(color: isWhite ? Colors.white : Colors.black),
      ),
    );
    // return Text('• ${type.type.name}');
  }
}
