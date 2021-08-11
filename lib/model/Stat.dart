import 'dart:convert';

import 'NamedApiResource.dart';

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
      stat: NamedApiResource.fromMap(map['stat']),
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
