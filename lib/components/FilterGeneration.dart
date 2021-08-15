import 'package:dex/model/NamedApiResource.dart';
import 'package:flutter/material.dart';

class FilterGeneration extends StatefulWidget {
  final Function(String) onSelectGeneration;
  final String defaultGeneration;

  const FilterGeneration({
    Key? key,
    required this.onSelectGeneration,
    required this.defaultGeneration,
  }) : super(key: key);

  @override
  State<FilterGeneration> createState() => _FilterGenerationState();
}

class _FilterGenerationState extends State<FilterGeneration> {
  String dropdownValue = '';

  @override
  Widget build(BuildContext context) {
    setState(() {
      dropdownValue = widget.defaultGeneration;
    });
    print('dropdownOnInit : ${dropdownValue}');
    List<String> generationUrl = [
      'Kanto (1-151)',
      'Johto (152-251)',
      'Hoenn (252-386)',
      'Sinnoh (387-494)',
      'Unova (495-649)',
      'Kalos (650-721)',
      'Alola (722-809)',
      'Galar (810-898)',
    ];
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.black,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue ?? generationUrl[0];
        });
        widget.onSelectGeneration(dropdownValue);
      },
      items: generationUrl.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
