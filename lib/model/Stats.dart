import 'package:dex/model/NamedApiResource.dart';

class Stats {
  int baseStat;
  int effort;
  NamedApiResource stat;

  Stats({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });

  factory Stats.fromJson(Map<String, dynamic> json) {
    return Stats(
      baseStat: json['base_stat'],
      effort: json['effort'],
      stat: getStat(json),
    );
  }

  static getStat(Map<String, dynamic> json) {
    return json['stat'].map((s) => new NamedApiResource.fromJson(s));
  }
}
