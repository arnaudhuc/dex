class GenerationVi {
  OmegarubyAlphasapphire omegarubyAlphasapphire;
  OmegarubyAlphasapphire xY;

  GenerationVi({
    required this.omegarubyAlphasapphire,
    required this.xY,
  });

  factory GenerationVi.fromJson(Map<String, dynamic> json) {
    //   omegarubyAlphasapphire = json['omegaruby-alphasapphire'] != null
    //       ? new OmegarubyAlphasapphire.fromJson(json['omegaruby-alphasapphire'])
    //       : null;
    //   xY = json['x-y'] != null
    //       ? new OmegarubyAlphasapphire.fromJson(json['x-y'])
    //       : null;

    return GenerationVi(
      omegarubyAlphasapphire: getOmega(json, 'omegaruby-alphasapphire'),
      xY: getOmega(json, 'x-y'),
    );
  }

  static getOmega(Map<String, dynamic> json, String value) {
    return json[value]
        .map((version) => OmegarubyAlphasapphire.fromJson(version));
  }
}

class OmegarubyAlphasapphire {
  String frontDefault;
  String? frontFemale;
  String frontShiny;
  String? frontShinyFemale;

  OmegarubyAlphasapphire({
    required this.frontDefault,
    this.frontFemale,
    required this.frontShiny,
    this.frontShinyFemale,
  });

  factory OmegarubyAlphasapphire.fromJson(Map<String, dynamic> json) {
    return OmegarubyAlphasapphire(
      frontDefault: json['front_default'],
      frontFemale: json['front_female'],
      frontShiny: json['front_shiny'],
      frontShinyFemale: json['front_shiny_female'],
    );
  }
}
