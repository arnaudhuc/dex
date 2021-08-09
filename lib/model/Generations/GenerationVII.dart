import 'dart:convert';

class GenerationVII {
  final Icons icons;
  final UltraSunUltraMoon ultraSunUltraMoon;
  GenerationVII({
    required this.icons,
    required this.ultraSunUltraMoon,
  });

  GenerationVII copyWith({
    Icons? icons,
    UltraSunUltraMoon? ultraSunUltraMoon,
  }) {
    return GenerationVII(
      icons: icons ?? this.icons,
      ultraSunUltraMoon: ultraSunUltraMoon ?? this.ultraSunUltraMoon,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'icons': icons.toMap(),
      'ultra-sun-ultra-moon': ultraSunUltraMoon.toMap(),
    };
  }

  factory GenerationVII.fromMap(Map<String, dynamic> map) {
    return GenerationVII(
      icons: Icons.fromMap(map['icons']),
      ultraSunUltraMoon: UltraSunUltraMoon.fromMap(map['ultra-sun-ultra-moon']),
    );
  }

  String toJson() => json.encode(toMap());

  factory GenerationVII.fromJson(String source) =>
      GenerationVII.fromMap(json.decode(source));

  @override
  String toString() =>
      'Generation_vii(icons: $icons, ultraSunUltraMoon: $ultraSunUltraMoon)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GenerationVII &&
        other.icons == icons &&
        other.ultraSunUltraMoon == ultraSunUltraMoon;
  }

  @override
  int get hashCode => icons.hashCode ^ ultraSunUltraMoon.hashCode;
}

class Icons {
  final String frontDefault;
  final String? frontFemale;
  Icons({
    required this.frontDefault,
    this.frontFemale,
  });

  Icons copyWith({
    String? frontDefault,
    String? frontFemale,
  }) {
    return Icons(
      frontDefault: frontDefault ?? this.frontDefault,
      frontFemale: frontFemale ?? this.frontFemale,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'front_default': frontDefault,
      'frontFemale': frontFemale,
    };
  }

  factory Icons.fromMap(Map<String, dynamic> map) {
    return Icons(
      frontDefault: map['front_default'],
      frontFemale: map['frontFemale'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Icons.fromJson(String source) => Icons.fromMap(json.decode(source));

  @override
  String toString() =>
      'Icons(frontDefault: $frontDefault, frontFemale: $frontFemale)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Icons &&
        other.frontDefault == frontDefault &&
        other.frontFemale == frontFemale;
  }

  @override
  int get hashCode => frontDefault.hashCode ^ frontFemale.hashCode;
}

class UltraSunUltraMoon {
  final String frontDefault;
  final String? frontFemale;
  final String frontShiny;
  final String? frontShinyFemale;
  UltraSunUltraMoon({
    required this.frontDefault,
    this.frontFemale,
    required this.frontShiny,
    this.frontShinyFemale,
  });

  UltraSunUltraMoon copyWith({
    String? frontDefault,
    String? frontFemale,
    String? frontShiny,
    String? frontShinyFemale,
  }) {
    return UltraSunUltraMoon(
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

  factory UltraSunUltraMoon.fromMap(Map<String, dynamic> map) {
    return UltraSunUltraMoon(
      frontDefault: map['front_default'],
      frontFemale: map['frontFemale'],
      frontShiny: map['front_shiny'],
      frontShinyFemale: map['frontShinyFemale'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UltraSunUltraMoon.fromJson(String source) =>
      UltraSunUltraMoon.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Ultra_sun_ultra_moon(frontDefault: $frontDefault, frontFemale: $frontFemale, frontShiny: $frontShiny, frontShinyFemale: $frontShinyFemale)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UltraSunUltraMoon &&
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
