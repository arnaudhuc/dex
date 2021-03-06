import 'dart:convert';

class GenerationV {
  final BlackWhite blackWhite;
  GenerationV({
    required this.blackWhite,
  });

  GenerationV copyWith({
    BlackWhite? blackWhite,
  }) {
    return GenerationV(
      blackWhite: blackWhite ?? this.blackWhite,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'black-white': blackWhite.toMap(),
    };
  }

  factory GenerationV.fromMap(Map<String, dynamic> map) {
    return GenerationV(
      blackWhite: BlackWhite.fromMap(map['black-white']),
    );
  }

  String toJson() => json.encode(toMap());

  factory GenerationV.fromJson(String source) =>
      GenerationV.fromMap(json.decode(source));

  @override
  String toString() => 'Generation_v(blackWhite: $blackWhite)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GenerationV && other.blackWhite == blackWhite;
  }

  @override
  int get hashCode => blackWhite.hashCode;
}

class BlackWhite {
  final Animated animated;
  final String backDefault;
  final String? backFemale;
  final String backShiny;
  final String? backShinyFemale;
  final String frontDefault;
  final String? frontFemale;
  final String frontShiny;
  final String? frontShinyFemale;
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

  BlackWhite copyWith({
    Animated? animated,
    String? backDefault,
    String? backFemale,
    String? backShiny,
    String? backShinyFemale,
    String? frontDefault,
    String? frontFemale,
    String? frontShiny,
    String? frontShinyFemale,
  }) {
    return BlackWhite(
      animated: animated ?? this.animated,
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
      'animated': animated.toMap(),
      'back_default': backDefault,
      'backFemale': backFemale,
      'back_shiny': backShiny,
      'backShinyFemale': backShinyFemale,
      'front_default': frontDefault,
      'frontFemale': frontFemale,
      'front_shiny': frontShiny,
      'frontShinyFemale': frontShinyFemale,
    };
  }

  factory BlackWhite.fromMap(Map<String, dynamic> map) {
    return BlackWhite(
      animated: Animated.fromMap(map['animated']),
      backDefault: map['back_default'] != null ? map['back_default'] : "",
      backFemale: map['backFemale'] != null ? map['backFemale'] : "",
      backShiny: map['back_shiny'] != null ? map['back_shiny'] : "",
      backShinyFemale:
          map['backShinyFemale'] != null ? map['backShinyFemale'] : "",
      frontDefault: map['front_default'] != null ? map['front_default'] : "",
      frontFemale: map['frontFemale'] != null ? map['frontFemale'] : "",
      frontShiny: map['front_shiny'] != null ? map['front_shiny'] : "",
      frontShinyFemale:
          map['frontShinyFemale'] != null ? map['frontShinyFemale'] : "",
    );
  }

  String toJson() => json.encode(toMap());

  factory BlackWhite.fromJson(String source) =>
      BlackWhite.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Black_white(animated: $animated, backDefault: $backDefault, backFemale: $backFemale, backShiny: $backShiny, backShinyFemale: $backShinyFemale, frontDefault: $frontDefault, frontFemale: $frontFemale, frontShiny: $frontShiny, frontShinyFemale: $frontShinyFemale)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BlackWhite &&
        other.animated == animated &&
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
    return animated.hashCode ^
        backDefault.hashCode ^
        backFemale.hashCode ^
        backShiny.hashCode ^
        backShinyFemale.hashCode ^
        frontDefault.hashCode ^
        frontFemale.hashCode ^
        frontShiny.hashCode ^
        frontShinyFemale.hashCode;
  }
}

class Animated {
  final String backDefault;
  final String? backFemale;
  final String backShiny;
  final String? backShinyFemale;
  final String frontDefault;
  final String? frontFemale;
  final String frontShiny;
  final String? frontShinyFemale;
  Animated({
    required this.backDefault,
    this.backFemale,
    required this.backShiny,
    this.backShinyFemale,
    required this.frontDefault,
    this.frontFemale,
    required this.frontShiny,
    this.frontShinyFemale,
  });

  Animated copyWith({
    String? backDefault,
    String? backFemale,
    String? backShiny,
    String? backShinyFemale,
    String? frontDefault,
    String? frontFemale,
    String? frontShiny,
    String? frontShinyFemale,
  }) {
    return Animated(
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
      'back_default': backDefault,
      'backFemale': backFemale,
      'back_shiny': backShiny,
      'backShinyFemale': backShinyFemale,
      'front_default': frontDefault,
      'frontFemale': frontFemale,
      'front_shiny': frontShiny,
      'frontShinyFemale': frontShinyFemale,
    };
  }

  factory Animated.fromMap(Map<String, dynamic> map) {
    return Animated(
      backDefault: map['back_default'] != null ? map['back_default'] : "",
      backFemale: map['backFemale'] != null ? map['backFemale'] : "",
      backShiny: map['back_shiny'] != null ? map['back_shiny'] : "",
      backShinyFemale:
          map['backShinyFemale'] != null ? map['backShinyFemale'] : "",
      frontDefault: map['front_default'] != null ? map['front_default'] : "",
      frontFemale: map['frontFemale'] != null ? map['frontFemale'] : "",
      frontShiny: map['front_shiny'] != null ? map['front_shiny'] : "",
      frontShinyFemale:
          map['frontShinyFemale'] != null ? map['frontShinyFemale'] : "",
    );
  }

  String toJson() => json.encode(toMap());

  factory Animated.fromJson(String source) =>
      Animated.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Animated(backDefault: $backDefault, backFemale: $backFemale, backShiny: $backShiny, backShinyFemale: $backShinyFemale, frontDefault: $frontDefault, frontFemale: $frontFemale, frontShiny: $frontShiny, frontShinyFemale: $frontShinyFemale)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Animated &&
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
