import 'package:dex/model/Generations/GenerationIIModel.dart';

class GenerationIii {
  Emerald emerald;
  Crystal fireredLeafgreen;
  Crystal rubySapphire;

  GenerationIii({
    required this.emerald,
    required this.fireredLeafgreen,
    required this.rubySapphire,
  });

  factory GenerationIii.fromJson(Map<String, dynamic> json) {
    return GenerationIii(
        emerald: getEmerald(json),
        fireredLeafgreen: getCrystal(json, 'firered-leafgreen'),
        rubySapphire: getCrystal(json, 'ruby-sapphire'));
  }

  static getEmerald(Map<String, dynamic> json) {
    return json['emerald'].map((version) => new Emerald.fromJson(version));
  }

  static getCrystal(Map<String, dynamic> json, String value) {
    return json[value].map((version) => new Crystal.fromJson(version));
  }
}

class Emerald {
  String frontDefault;
  String frontShiny;

  Emerald({
    required this.frontDefault,
    required this.frontShiny,
  });

  factory Emerald.fromJson(Map<String, dynamic> json) {
    return Emerald(
      frontDefault: json['front_default'],
      frontShiny: json['front_shiny'],
    );
  }
}
