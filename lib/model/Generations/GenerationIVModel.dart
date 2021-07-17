class GenerationIv {
  DiamondPearl diamondPearl;
  DiamondPearl heartgoldSoulsilver;
  DiamondPearl platinum;

  GenerationIv({
    required this.diamondPearl,
    required this.heartgoldSoulsilver,
    required this.platinum,
  });

  factory GenerationIv.fromJson(Map<String, dynamic> json) {
    return GenerationIv(
      diamondPearl: getDiamondPearl(json, 'diamond-pearl'),
      heartgoldSoulsilver: getDiamondPearl(json, 'heartgold-soulsilver'),
      platinum: getDiamondPearl(json, 'platinum'),
    );
  }

  static getDiamondPearl(Map<String, dynamic> json, String value) {
    return json[value].map((version) => DiamondPearl.fromJson(version));
  }
}

class DiamondPearl {
  String backDefault;
  String? backFemale;
  String backShiny;
  String? backShinyFemale;
  String frontDefault;
  String? frontFemale;
  String frontShiny;
  String? frontShinyFemale;

  DiamondPearl({
    required this.backDefault,
    this.backFemale,
    required this.backShiny,
    this.backShinyFemale,
    required this.frontDefault,
    this.frontFemale,
    required this.frontShiny,
    this.frontShinyFemale,
  });

  factory DiamondPearl.fromJson(Map<String, dynamic> json) {
    return DiamondPearl(
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
}
