import 'dart:convert';

import '../NamedApiResource.dart';
import 'GenerationVII.dart';

class GenerationVIII {
  final Icons icons;
  GenerationVIII({
    required this.icons,
  });

  GenerationVIII copyWith({
    Icons? icons,
  }) {
    return GenerationVIII(
      icons: icons ?? this.icons,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'icons': icons.toMap(),
    };
  }

  factory GenerationVIII.fromMap(Map<String, dynamic> map) {
    return GenerationVIII(
      icons: Icons.fromMap(map['icons']),
    );
  }

  String toJson() => json.encode(toMap());

  factory GenerationVIII.fromJson(String source) =>
      GenerationVIII.fromMap(json.decode(source));

  @override
  String toString() => 'Generation_viii(icons: $icons)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GenerationVIII && other.icons == icons;
  }

  @override
  int get hashCode => icons.hashCode;
}

class Stat {
  final int baseStat;
  final int effort;
  final NamedApiResource stat;
  Stat({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });

  Stat copyWith({
    int? baseStat,
    int? effort,
    NamedApiResource? stat,
  }) {
    return Stat(
      baseStat: baseStat ?? this.baseStat,
      effort: effort ?? this.effort,
      stat: stat ?? this.stat,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'base_stat': baseStat,
      'effort': effort,
      'stat': stat,
    };
  }

  factory Stat.fromMap(Map<String, dynamic> map) {
    return Stat(
      baseStat: map['base_stat'],
      effort: map['effort'],
      stat: map['stat'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Stat.fromJson(String source) => Stat.fromMap(json.decode(source));

  @override
  String toString() =>
      'Stat(base_stat: $baseStat, effort: $effort, stat: $stat)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Stat &&
        other.baseStat == baseStat &&
        other.effort == effort &&
        other.stat == stat;
  }

  @override
  int get hashCode => baseStat.hashCode ^ effort.hashCode ^ stat.hashCode;
}

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
      type: map['type'],
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
