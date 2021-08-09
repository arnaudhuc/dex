import 'dart:convert';

import 'NamedApiResource.dart';

class Abilities {
  final NamedApiResource ability;
  final bool isHidden;
  final int slot;
  Abilities({
    required this.ability,
    required this.isHidden,
    required this.slot,
  });

  Abilities copyWith({
    NamedApiResource? ability,
    bool? isHidden,
    int? slot,
  }) {
    return Abilities(
      ability: ability ?? this.ability,
      isHidden: isHidden ?? this.isHidden,
      slot: slot ?? this.slot,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'ability': ability,
      'is_hidden': isHidden,
      'slot': slot,
    };
  }

  factory Abilities.fromMap(Map<String, dynamic> map) {
    return Abilities(
      ability: NamedApiResource.fromMap(map['ability']),
      isHidden: map['is_hidden'],
      slot: map['slot'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Abilities.fromJson(String source) =>
      Abilities.fromMap(json.decode(source));

  @override
  String toString() =>
      'Abilities(ability: $ability, is_hidden: $isHidden, slot: $slot)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Abilities &&
        other.ability == ability &&
        other.isHidden == isHidden &&
        other.slot == slot;
  }

  @override
  int get hashCode => ability.hashCode ^ isHidden.hashCode ^ slot.hashCode;
}
