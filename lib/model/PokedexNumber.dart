import 'dart:convert';

import 'package:dex/model/NamedApiResource.dart';

class PokedexNumber {
  final int entry_number;
  final NamedApiResource pokedex;
  PokedexNumber({
    required this.entry_number,
    required this.pokedex,
  });

  PokedexNumber copyWith({
    int? entry_number,
    NamedApiResource? pokedex,
  }) {
    return PokedexNumber(
      entry_number: entry_number ?? this.entry_number,
      pokedex: pokedex ?? this.pokedex,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'entry_number': entry_number,
      'pokedex': pokedex.toMap(),
    };
  }

  factory PokedexNumber.fromMap(Map<String, dynamic> map) {
    return PokedexNumber(
      entry_number: map['entry_number'],
      pokedex: NamedApiResource.fromMap(map['pokedex']),
    );
  }

  String toJson() => json.encode(toMap());

  factory PokedexNumber.fromJson(String source) =>
      PokedexNumber.fromMap(json.decode(source));

  @override
  String toString() =>
      'Pokedex_number(entry_number: $entry_number, pokedex: $pokedex)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PokedexNumber &&
        other.entry_number == entry_number &&
        other.pokedex == pokedex;
  }

  @override
  int get hashCode => entry_number.hashCode ^ pokedex.hashCode;
}
