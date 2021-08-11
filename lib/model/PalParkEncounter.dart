import 'dart:convert';

import 'package:dex/model/NamedApiResource.dart';

class PalParkEncounter {
  final NamedApiResource area;
  final int base_score;
  final int rate;
  PalParkEncounter({
    required this.area,
    required this.base_score,
    required this.rate,
  });

  PalParkEncounter copyWith({
    NamedApiResource? area,
    int? base_score,
    int? rate,
  }) {
    return PalParkEncounter(
      area: area ?? this.area,
      base_score: base_score ?? this.base_score,
      rate: rate ?? this.rate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'area': area.toMap(),
      'base_score': base_score,
      'rate': rate,
    };
  }

  factory PalParkEncounter.fromMap(Map<String, dynamic> map) {
    return PalParkEncounter(
      area: NamedApiResource.fromMap(map['area']),
      base_score: map['base_score'],
      rate: map['rate'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PalParkEncounter.fromJson(String source) =>
      PalParkEncounter.fromMap(json.decode(source));

  @override
  String toString() =>
      'Pal_park_encounter(area: $area, base_score: $base_score, rate: $rate)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PalParkEncounter &&
        other.area == area &&
        other.base_score == base_score &&
        other.rate == rate;
  }

  @override
  int get hashCode => area.hashCode ^ base_score.hashCode ^ rate.hashCode;
}
