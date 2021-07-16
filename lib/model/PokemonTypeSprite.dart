import 'package:dex/model/Generations/PokemonTypeGenerations.dart';
import 'package:dex/model/PokemonTypeSpriteOther.dart';

class Sprites {
  String backDefault;
  String? backFemale;
  String backShiny;
  String? backShinyFemale;
  String frontDefault;
  String? frontFemale;
  String frontShiny;
  String? frontShinyFemale;
  Other other;
  Versions versions;

  Sprites({
    required this.backDefault,
    required this.backFemale,
    required this.backShiny,
    required this.backShinyFemale,
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
    required this.other,
    required this.versions,
  });

  factory Sprites.fromJson(Map<String, dynamic> json) {
    return Sprites(
      backDefault: json['back_default'],
      backFemale: json['back_female'],
      backShiny: json['back_shiny'],
      backShinyFemale: json['back_shiny_female'],
      frontDefault: json['front_default'],
      frontFemale: json['front_female'],
      frontShiny: json['front_shiny'],
      frontShinyFemale: json['front_shiny_female'],
      other: getOther(json),
      versions: getVersions(json),
    );
  }

  static getOther(Map<String, dynamic> json) {
    return json['other'].map(
      (move) => Other.fromJson(move),
    );
  }

  static getVersions(Map<String, dynamic> json) {
    return json['versions'].map(
      (version) => Other.fromJson(version),
    );
  }
}
