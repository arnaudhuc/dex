import 'dart:convert';

import 'NamedApiResource.dart';

class Types {
  final int slot;
  final NamedApiResource type;
  Types({
    required this.slot,
    required this.type,
  });

  Types copyWith({
    int? slot,
    NamedApiResource? type,
  }) {
    return Types(
      slot: slot ?? this.slot,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'slot': slot,
      'type': type,
    };
  }

  factory Types.fromMap(Map<String, dynamic> map) {
    return Types(
      slot: map['slot'],
      type: NamedApiResource.fromMap(map['type']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Types.fromJson(String source) => Types.fromMap(json.decode(source));

  @override
  String toString() => 'Types(slot: $slot, type: $type)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Types && other.slot == slot && other.type == type;
  }

  @override
  int get hashCode => slot.hashCode ^ type.hashCode;
}
