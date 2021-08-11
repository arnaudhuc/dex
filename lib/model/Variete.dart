import 'dart:convert';

import 'package:dex/model/NamedApiResource.dart';

class Varietie {
  final bool isDefault;
  final NamedApiResource pokemon;
  Varietie({
    required this.isDefault,
    required this.pokemon,
  });

  Varietie copyWith({
    bool? isDefault,
    NamedApiResource? pokemon,
  }) {
    return Varietie(
      isDefault: isDefault ?? this.isDefault,
      pokemon: pokemon ?? this.pokemon,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'is_default': isDefault,
      'pokemon': pokemon.toMap(),
    };
  }

  factory Varietie.fromMap(Map<String, dynamic> map) {
    return Varietie(
      isDefault: map['is_default'],
      pokemon: NamedApiResource.fromMap(map['pokemon']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Varietie.fromJson(String source) =>
      Varietie.fromMap(json.decode(source));

  @override
  String toString() => 'Varietie(is_default: $isDefault, pokemon: $pokemon)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Varietie &&
        other.isDefault == isDefault &&
        other.pokemon == pokemon;
  }

  @override
  int get hashCode => isDefault.hashCode ^ pokemon.hashCode;
}
