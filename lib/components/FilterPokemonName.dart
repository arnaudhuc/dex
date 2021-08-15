import 'package:flutter/material.dart';

class FilterPokemonName extends StatelessWidget {
  final List<String> pokemonName;
  final Function(String) onPokemonSelected;

  const FilterPokemonName(
      {Key? key, required this.pokemonName, required this.onPokemonSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return pokemonName.where((String option) {
          return option.contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: (String pokemon) => onPokemonSelected(pokemon),
    );
  }
}
