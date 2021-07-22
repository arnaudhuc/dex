import 'dart:convert';

class GenerationIV {
  final DiamondPearl diamondPearl;
  final HeartgoldSoulsilver heartgoldSoulsilver;
  final Platinum platinum;
  GenerationIV({
    required this.diamondPearl,
    required this.heartgoldSoulsilver,
    required this.platinum,
  });

  GenerationIV copyWith({
    DiamondPearl? diamondPearl,
    HeartgoldSoulsilver? heartgoldSoulsilver,
    Platinum? platinum,
  }) {
    return GenerationIV(
      diamondPearl: diamondPearl ?? this.diamondPearl,
      heartgoldSoulsilver: heartgoldSoulsilver ?? this.heartgoldSoulsilver,
      platinum: platinum ?? this.platinum,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'diamondPearl': diamondPearl.toMap(),
      'heartgoldSoulsilver': heartgoldSoulsilver.toMap(),
      'platinum': platinum.toMap(),
    };
  }

  factory GenerationIV.fromMap(Map<String, dynamic> map) {
    return GenerationIV(
      diamondPearl: DiamondPearl.fromMap(map['diamondPearl']),
      heartgoldSoulsilver:
          HeartgoldSoulsilver.fromMap(map['heartgoldSoulsilver']),
      platinum: Platinum.fromMap(map['platinum']),
    );
  }

  String toJson() => json.encode(toMap());

  factory GenerationIV.fromJson(String source) =>
      GenerationIV.fromMap(json.decode(source));

  @override
  String toString() =>
      'Generation_iv(diamondPearl: $diamondPearl, heartgoldSoulsilver: $heartgoldSoulsilver, platinum: $platinum)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GenerationIV &&
        other.diamondPearl == diamondPearl &&
        other.heartgoldSoulsilver == heartgoldSoulsilver &&
        other.platinum == platinum;
  }

  @override
  int get hashCode =>
      diamondPearl.hashCode ^ heartgoldSoulsilver.hashCode ^ platinum.hashCode;
}

class DiamondPearl {
  final String backDefault;
  final String? backFemale;
  final String backShiny;
  final String? backShinyFemale;
  final String frontDefault;
  final String? frontFemale;
  final String frontShiny;
  final String? frontShinyFemale;
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

  DiamondPearl copyWith({
    String? backDefault,
    String? backFemale,
    String? backShiny,
    String? backShinyFemale,
    String? frontDefault,
    String? frontFemale,
    String? frontShiny,
    String? frontShinyFemale,
  }) {
    return DiamondPearl(
      backDefault: backDefault ?? this.backDefault,
      backFemale: backFemale ?? this.backFemale,
      backShiny: backShiny ?? this.backShiny,
      backShinyFemale: backShinyFemale ?? this.backShinyFemale,
      frontDefault: frontDefault ?? this.frontDefault,
      frontFemale: frontFemale ?? this.frontFemale,
      frontShiny: frontShiny ?? this.frontShiny,
      frontShinyFemale: frontShinyFemale ?? this.frontShinyFemale,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'backDefault': backDefault,
      'backFemale': backFemale,
      'backShiny': backShiny,
      'backShinyFemale': backShinyFemale,
      'frontDefault': frontDefault,
      'frontFemale': frontFemale,
      'frontShiny': frontShiny,
      'frontShinyFemale': frontShinyFemale,
    };
  }

  factory DiamondPearl.fromMap(Map<String, dynamic> map) {
    return DiamondPearl(
      backDefault: map['backDefault'],
      backFemale: map['backFemale'],
      backShiny: map['backShiny'],
      backShinyFemale: map['backShinyFemale'],
      frontDefault: map['frontDefault'],
      frontFemale: map['frontFemale'],
      frontShiny: map['frontShiny'],
      frontShinyFemale: map['frontShinyFemale'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DiamondPearl.fromJson(String source) =>
      DiamondPearl.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Diamond_pearl(backDefault: $backDefault, backFemale: $backFemale, backShiny: $backShiny, backShinyFemale: $backShinyFemale, frontDefault: $frontDefault, frontFemale: $frontFemale, frontShiny: $frontShiny, frontShinyFemale: $frontShinyFemale)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DiamondPearl &&
        other.backDefault == backDefault &&
        other.backFemale == backFemale &&
        other.backShiny == backShiny &&
        other.backShinyFemale == backShinyFemale &&
        other.frontDefault == frontDefault &&
        other.frontFemale == frontFemale &&
        other.frontShiny == frontShiny &&
        other.frontShinyFemale == frontShinyFemale;
  }

  @override
  int get hashCode {
    return backDefault.hashCode ^
        backFemale.hashCode ^
        backShiny.hashCode ^
        backShinyFemale.hashCode ^
        frontDefault.hashCode ^
        frontFemale.hashCode ^
        frontShiny.hashCode ^
        frontShinyFemale.hashCode;
  }
}

class HeartgoldSoulsilver {
  final String backDefault;
  final String? backFemale;
  final String backShiny;
  final String? backShinyFemale;
  final String frontDefault;
  final String? frontFemale;
  final String frontShiny;
  final String? frontShinyFemale;
  HeartgoldSoulsilver({
    required this.backDefault,
    this.backFemale,
    required this.backShiny,
    this.backShinyFemale,
    required this.frontDefault,
    this.frontFemale,
    required this.frontShiny,
    this.frontShinyFemale,
  });

  HeartgoldSoulsilver copyWith({
    String? backDefault,
    String? backFemale,
    String? backShiny,
    String? backShinyFemale,
    String? frontDefault,
    String? frontFemale,
    String? frontShiny,
    String? frontShinyFemale,
  }) {
    return HeartgoldSoulsilver(
      backDefault: backDefault ?? this.backDefault,
      backFemale: backFemale ?? this.backFemale,
      backShiny: backShiny ?? this.backShiny,
      backShinyFemale: backShinyFemale ?? this.backShinyFemale,
      frontDefault: frontDefault ?? this.frontDefault,
      frontFemale: frontFemale ?? this.frontFemale,
      frontShiny: frontShiny ?? this.frontShiny,
      frontShinyFemale: frontShinyFemale ?? this.frontShinyFemale,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'backDefault': backDefault,
      'backFemale': backFemale,
      'backShiny': backShiny,
      'backShinyFemale': backShinyFemale,
      'frontDefault': frontDefault,
      'frontFemale': frontFemale,
      'frontShiny': frontShiny,
      'frontShinyFemale': frontShinyFemale,
    };
  }

  factory HeartgoldSoulsilver.fromMap(Map<String, dynamic> map) {
    return HeartgoldSoulsilver(
      backDefault: map['backDefault'],
      backFemale: map['backFemale'],
      backShiny: map['backShiny'],
      backShinyFemale: map['backShinyFemale'],
      frontDefault: map['frontDefault'],
      frontFemale: map['frontFemale'],
      frontShiny: map['frontShiny'],
      frontShinyFemale: map['frontShinyFemale'],
    );
  }

  String toJson() => json.encode(toMap());

  factory HeartgoldSoulsilver.fromJson(String source) =>
      HeartgoldSoulsilver.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Heartgold_soulsilver(backDefault: $backDefault, backFemale: $backFemale, backShiny: $backShiny, backShinyFemale: $backShinyFemale, frontDefault: $frontDefault, frontFemale: $frontFemale, frontShiny: $frontShiny, frontShinyFemale: $frontShinyFemale)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HeartgoldSoulsilver &&
        other.backDefault == backDefault &&
        other.backFemale == backFemale &&
        other.backShiny == backShiny &&
        other.backShinyFemale == backShinyFemale &&
        other.frontDefault == frontDefault &&
        other.frontFemale == frontFemale &&
        other.frontShiny == frontShiny &&
        other.frontShinyFemale == frontShinyFemale;
  }

  @override
  int get hashCode {
    return backDefault.hashCode ^
        backFemale.hashCode ^
        backShiny.hashCode ^
        backShinyFemale.hashCode ^
        frontDefault.hashCode ^
        frontFemale.hashCode ^
        frontShiny.hashCode ^
        frontShinyFemale.hashCode;
  }
}

class Platinum {
  final String backDefault;
  final String? backFemale;
  final String backShiny;
  final String? backShinyFemale;
  final String frontDefault;
  final String? frontFemale;
  final String frontShiny;
  final String? frontShinyFemale;
  Platinum({
    required this.backDefault,
    this.backFemale,
    required this.backShiny,
    this.backShinyFemale,
    required this.frontDefault,
    this.frontFemale,
    required this.frontShiny,
    this.frontShinyFemale,
  });

  Platinum copyWith({
    String? backDefault,
    String? backFemale,
    String? backShiny,
    String? backShinyFemale,
    String? frontDefault,
    String? frontFemale,
    String? frontShiny,
    String? frontShinyFemale,
  }) {
    return Platinum(
      backDefault: backDefault ?? this.backDefault,
      backFemale: backFemale ?? this.backFemale,
      backShiny: backShiny ?? this.backShiny,
      backShinyFemale: backShinyFemale ?? this.backShinyFemale,
      frontDefault: frontDefault ?? this.frontDefault,
      frontFemale: frontFemale ?? this.frontFemale,
      frontShiny: frontShiny ?? this.frontShiny,
      frontShinyFemale: frontShinyFemale ?? this.frontShinyFemale,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'backDefault': backDefault,
      'backFemale': backFemale,
      'backShiny': backShiny,
      'backShinyFemale': backShinyFemale,
      'frontDefault': frontDefault,
      'frontFemale': frontFemale,
      'frontShiny': frontShiny,
      'frontShinyFemale': frontShinyFemale,
    };
  }

  factory Platinum.fromMap(Map<String, dynamic> map) {
    return Platinum(
      backDefault: map['backDefault'],
      backFemale: map['backFemale'],
      backShiny: map['backShiny'],
      backShinyFemale: map['backShinyFemale'],
      frontDefault: map['frontDefault'],
      frontFemale: map['frontFemale'],
      frontShiny: map['frontShiny'],
      frontShinyFemale: map['frontShinyFemale'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Platinum.fromJson(String source) =>
      Platinum.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Platinum(backDefault: $backDefault, backFemale: $backFemale, backShiny: $backShiny, backShinyFemale: $backShinyFemale, frontDefault: $frontDefault, frontFemale: $frontFemale, frontShiny: $frontShiny, frontShinyFemale: $frontShinyFemale)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Platinum &&
        other.backDefault == backDefault &&
        other.backFemale == backFemale &&
        other.backShiny == backShiny &&
        other.backShinyFemale == backShinyFemale &&
        other.frontDefault == frontDefault &&
        other.frontFemale == frontFemale &&
        other.frontShiny == frontShiny &&
        other.frontShinyFemale == frontShinyFemale;
  }

  @override
  int get hashCode {
    return backDefault.hashCode ^
        backFemale.hashCode ^
        backShiny.hashCode ^
        backShinyFemale.hashCode ^
        frontDefault.hashCode ^
        frontFemale.hashCode ^
        frontShiny.hashCode ^
        frontShinyFemale.hashCode;
  }
}
