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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text('Base stats', style: TextStyle(fontWeight: FontWeight.bold)),
          Wrap(
            spacing: 10,
            direction: Axis.horizontal,
            children: [
              ...widget.stats
                  .map((stat) => Column(
                        children: [
                          Text(stat.stat.name,
                              style: TextStyle(color: Colors.red)),
                          Text(stat.baseStat.toString()),
                        ],
                      ))
                  .toList()
            ],
          )
        ],
      ),
    );
  }
}
