import 'package:dex/model/Stat.dart';
import 'package:flutter/material.dart';

class PokemonBaseInfo extends StatefulWidget {
  const PokemonBaseInfo({Key? key, required this.stats}) : super(key: key);

  final List<Stat> stats;

  @override
  _PokemonBaseInfoState createState() => _PokemonBaseInfoState();
}

class _PokemonBaseInfoState extends State<PokemonBaseInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.stats
          .map(
            (stat) => Card(
              child: Row(
                children: [
                  Text(stat.stat.name),
                  Text(stat.baseStat.toString()),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
