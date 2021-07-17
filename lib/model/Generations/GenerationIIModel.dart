class GenerationIi {
  Crystal crystal;
  Crystal gold;
  Crystal silver;

  GenerationIi({
    required this.crystal,
    required this.gold,
    required this.silver,
  });

  factory GenerationIi.fromJson(Map<String, dynamic> json) {
    return GenerationIi(
      crystal: getCrystal(json, "crystal"),
      gold: getCrystal(json, "gold"),
      silver: getCrystal(json, "silver"),
    );
  }

  static getCrystal(Map<String, dynamic> json, String value) {
    return json[value].map((version) => Crystal.fromJson(version));
  }
}

class Crystal {
  String backDefault;
  String backShiny;
  String frontDefault;
  String frontShiny;

  Crystal({
    required this.backDefault,
    required this.backShiny,
    required this.frontDefault,
    required this.frontShiny,
  });

  factory Crystal.fromJson(Map<String, dynamic> json) {
    return Crystal(
      backDefault: json['back_default'],
      backShiny: json['back_shiny'],
      frontDefault: json['front_default'],
      frontShiny: json['front_shiny'],
    );
  }
}
