import 'package:dex/model/Generations/GenerationIVModel.dart';

class GenerationV {
  BlackWhite blackWhite;

  GenerationV({
    required this.blackWhite,
  });

  factory GenerationV.fromJson(Map<String, dynamic> json) {
    return GenerationV(
      blackWhite: getBlackWhite(json),
    );
  }

  static getBlackWhite(Map<String, dynamic> json) {
    return json['black-white'].map((code) => BlackWhite.fromJson(code));
  }
}

class BlackWhite {
  DiamondPearl animated;
  String backDefault;
  String? backFemale;
  String backShiny;
  String? backShinyFemale;
  String frontDefault;
  String? frontFemale;
  String frontShiny;
  String? frontShinyFemale;

  BlackWhite({
    required this.animated,
    required this.backDefault,
    this.backFemale,
    required this.backShiny,
    this.backShinyFemale,
    required this.frontDefault,
    this.frontFemale,
    required this.frontShiny,
    this.frontShinyFemale,
  });

  factory BlackWhite.fromJson(Map<String, dynamic> json) {
    return BlackWhite(
      animated: getAnimated(json),
      backDefault: json['back_default'],
      backFemale: json['back_female'],
      backShiny: json['back_shiny'],
      backShinyFemale: json['back_shiny_female'],
      frontDefault: json['front_default'],
      frontFemale: json['front_female'],
      frontShiny: json['front_shiny'],
      frontShinyFemale: json['front_shiny_female'],
    );
  }

  static getAnimated(Map<String, dynamic> json) {
    return json['animated'].map((anim) => DiamondPearl.fromJson(anim));
  }
}
