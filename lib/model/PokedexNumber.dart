import 'dart:convert';

import 'package:dex/model/NamedApiResource.dart';

class PokedexNumber {
  final int entryNumber;
  final NamedApiResource pokedex;
  PokedexNumber({
    required this.entryNumber,
    required this.pokedex,
  });

  PokedexNumber copyWith({
    int? entryNumber,
    NamedApiResource? pokedex,
  }) {
    return PokedexNumber(
      entryNumber: entryNumber ?? this.entryNumber,
      pokedex: pokedex ?? this.pokedex,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'entry_number': entryNumber,
      'pokedex': pokedex.toMap(),
    };
  }

  factory PokedexNumber.fromMap(Map<String, dynamic> map) {
    return PokedexNumber(
      entryNumber: map['entry_number'],
      pokedex: NamedApiResource.fromMap(map['pokedex']),
    );
  }

  String toJson() => json.encode(toMap());

  factory PokedexNumber.fromJson(String source) =>
      PokedexNumber.fromMap(json.decode(source));

  @override
  String toString() =>
      'Pokedex_number(entry_number: $entryNumber, pokedex: $pokedex)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PokedexNumber &&
        other.entryNumber == entryNumber &&
        other.pokedex == pokedex;
  }

  @override
  int get hashCode => entryNumber.hashCode ^ pokedex.hashCode;
}
