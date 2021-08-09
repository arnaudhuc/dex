import 'dart:convert';

class GenerationVI {
  final OmegaRubyAlphaSapphire omegarubyAlphasapphire;
  final XY xY;
  GenerationVI({
    required this.omegarubyAlphasapphire,
    required this.xY,
  });

  GenerationVI copyWith({
    OmegaRubyAlphaSapphire? omegarubyAlphasapphire,
    XY? xY,
  }) {
    return GenerationVI(
      omegarubyAlphasapphire:
          omegarubyAlphasapphire ?? this.omegarubyAlphasapphire,
      xY: xY ?? this.xY,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'omegaruby-alphasapphire': omegarubyAlphasapphire.toMap(),
      'x-y': xY.toMap(),
    };
  }

  factory GenerationVI.fromMap(Map<String, dynamic> map) {
    return GenerationVI(
      omegarubyAlphasapphire:
          OmegaRubyAlphaSapphire.fromMap(map['omegaruby-alphasapphire']),
      xY: XY.fromMap(map['x-y']),
    );
  }

  String toJson() => json.encode(toMap());

  factory GenerationVI.fromJson(String source) =>
      GenerationVI.fromMap(json.decode(source));

  @override
  String toString() =>
      'Generation_vi(omegarubyAlphasapphire: $omegarubyAlphasapphire, xY: $xY)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GenerationVI &&
        other.omegarubyAlphasapphire == omegarubyAlphasapphire &&
        other.xY == xY;
  }

  @override
  int get hashCode => omegarubyAlphasapphire.hashCode ^ xY.hashCode;
}

class OmegaRubyAlphaSapphire {
  final String frontDefault;
  final String? frontFemale;
  final String frontShiny;
  final String? frontShinyFemale;
  OmegaRubyAlphaSapphire({
    required this.frontDefault,
    this.frontFemale,
    required this.frontShiny,
    this.frontShinyFemale,
  });

  OmegaRubyAlphaSapphire copyWith({
    String? frontDefault,
    String? frontFemale,
    String? frontShiny,
    String? frontShinyFemale,
  }) {
    return OmegaRubyAlphaSapphire(
      frontDefault: frontDefault ?? this.frontDefault,
      frontFemale: frontFemale ?? this.frontFemale,
      frontShiny: frontShiny ?? this.frontShiny,
      frontShinyFemale: frontShinyFemale ?? this.frontShinyFemale,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'front_default': frontDefault,
      'frontFemale': frontFemale,
      'front_shiny': frontShiny,
      'frontShinyFemale': frontShinyFemale,
    };
  }

  factory OmegaRubyAlphaSapphire.fromMap(Map<String, dynamic> map) {
    return OmegaRubyAlphaSapphire(
      frontDefault: map['front_default'],
      frontFemale: map['frontFemale'],
      frontShiny: map['front_shiny'],
      frontShinyFemale: map['frontShinyFemale'],
    );
  }

  String toJson() => json.encode(toMap());

  factory OmegaRubyAlphaSapphire.fromJson(String source) =>
      OmegaRubyAlphaSapphire.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Omegaruby_alphasapphire(frontDefault: $frontDefault, frontFemale: $frontFemale, frontShiny: $frontShiny, frontShinyFemale: $frontShinyFemale)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OmegaRubyAlphaSapphire &&
        other.frontDefault == frontDefault &&
        other.frontFemale == frontFemale &&
        other.frontShiny == frontShiny &&
        other.frontShinyFemale == frontShinyFemale;
  }

  @override
  int get hashCode {
    return frontDefault.hashCode ^
        frontFemale.hashCode ^
        frontShiny.hashCode ^
        frontShinyFemale.hashCode;
  }
}

class XY {
  final String frontDefault;
  final String? frontFemale;
  final String frontShiny;
  final String? frontShinyFemale;
  XY({
    required this.frontDefault,
    this.frontFemale,
    required this.frontShiny,
    this.frontShinyFemale,
  });

  XY copyWith({
    String? frontDefault,
    String? frontFemale,
    String? frontShiny,
    String? frontShinyFemale,
  }) {
    return XY(
      frontDefault: frontDefault ?? this.frontDefault,
      frontFemale: frontFemale ?? this.frontFemale,
      frontShiny: frontShiny ?? this.frontShiny,
      frontShinyFemale: frontShinyFemale ?? this.frontShinyFemale,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'front_default': frontDefault,
      'frontFemale': frontFemale,
      'front_shiny': frontShiny,
      'frontShinyFemale': frontShinyFemale,
    };
  }

  factory XY.fromMap(Map<String, dynamic> map) {
    return XY(
      frontDefault: map['front_default'],
      frontFemale: map['frontFemale'],
      frontShiny: map['front_shiny'],
      frontShinyFemale: map['frontShinyFemale'],
    );
  }

  String toJson() => json.encode(toMap());

  factory XY.fromJson(String source) => XY.fromMap(json.decode(source));

  @override
  String toString() {
    return 'X_y(frontDefault: $frontDefault, frontFemale: $frontFemale, frontShiny: $frontShiny, frontShinyFemale: $frontShinyFemale)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is XY &&
        other.frontDefault == frontDefault &&
        other.frontFemale == frontFemale &&
        other.frontShiny == frontShiny &&
        other.frontShinyFemale == frontShinyFemale;
  }

  @override
  int get hashCode {
    return frontDefault.hashCode ^
        frontFemale.hashCode ^
        frontShiny.hashCode ^
        frontShinyFemale.hashCode;
  }
}
