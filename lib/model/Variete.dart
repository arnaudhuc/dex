import 'dart:convert';

import 'package:dex/model/NamedApiResource.dart';

class Varietie {
  final bool is_default;
  final NamedApiResource pokemon;
  Varietie({
    required this.is_default,
    required this.pokemon,
  });

  Varietie copyWith({
    bool? is_default,
    NamedApiResource? pokemon,
  }) {
    return Varietie(
      is_default: is_default ?? this.is_default,
      pokemon: pokemon ?? this.pokemon,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'is_default': is_default,
      'pokemon': pokemon.toMap(),
    };
  }

  factory Varietie.fromMap(Map<String, dynamic> map) {
    return Varietie(
      is_default: map['is_default'],
      pokemon: NamedApiResource.fromMap(map['pokemon']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Varietie.fromJson(String source) =>
      Varietie.fromMap(json.decode(source));

  @override
  String toString() => 'Varietie(is_default: $is_default, pokemon: $pokemon)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Varietie &&
        other.is_default == is_default &&
        other.pokemon == pokemon;
  }

  @override
  int get hashCode => is_default.hashCode ^ pokemon.hashCode;
}
