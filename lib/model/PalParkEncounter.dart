import 'dart:convert';

import 'package:dex/model/NamedApiResource.dart';

class PalParkEncounter {
  final NamedApiResource area;
  final int baseScore;
  final int rate;
  PalParkEncounter({
    required this.area,
    required this.baseScore,
    required this.rate,
  });

  PalParkEncounter copyWith({
    NamedApiResource? area,
    int? baseScore,
    int? rate,
  }) {
    return PalParkEncounter(
      area: area ?? this.area,
      baseScore: baseScore ?? this.baseScore,
      rate: rate ?? this.rate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'area': area.toMap(),
      'base_score': baseScore,
      'rate': rate,
    };
  }

  factory PalParkEncounter.fromMap(Map<String, dynamic> map) {
    return PalParkEncounter(
      area: NamedApiResource.fromMap(map['area']),
      baseScore: map['base_score'],
      rate: map['rate'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PalParkEncounter.fromJson(String source) =>
      PalParkEncounter.fromMap(json.decode(source));

  @override
  String toString() =>
      'Pal_park_encounter(area: $area, base_score: $baseScore, rate: $rate)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PalParkEncounter &&
        other.area == area &&
        other.baseScore == baseScore &&
        other.rate == rate;
  }

  @override
  int get hashCode => area.hashCode ^ baseScore.hashCode ^ rate.hashCode;
}
