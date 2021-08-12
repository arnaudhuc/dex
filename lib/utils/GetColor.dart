import 'package:dex/model/Types.dart';
import 'package:flutter/material.dart';

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
