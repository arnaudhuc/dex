import 'dart:convert';

class GenerationII {
  final Crystal crystal;
  final Gold gold;
  final Silver silver;
  GenerationII({
    required this.crystal,
    required this.gold,
    required this.silver,
  });

  GenerationII copyWith({
    Crystal? crystal,
    Gold? gold,
    Silver? silver,
  }) {
    return GenerationII(
      crystal: crystal ?? this.crystal,
      gold: gold ?? this.gold,
      silver: silver ?? this.silver,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'crystal': crystal.toMap(),
      'gold': gold.toMap(),
      'silver': silver.toMap(),
    };
  }

  factory GenerationII.fromMap(Map<String, dynamic> map) {
    return GenerationII(
      crystal: Crystal.fromMap(map['crystal']),
      gold: Gold.fromMap(map['gold']),
      silver: Silver.fromMap(map['silver']),
    );
  }

  String toJson() => json.encode(toMap());

  factory GenerationII.fromJson(String source) =>
      GenerationII.fromMap(json.decode(source));

  @override
  String toString() =>
      'Generation_ii(crystal: $crystal, gold: $gold, silver: $silver)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GenerationII &&
        other.crystal == crystal &&
        other.gold == gold &&
        other.silver == silver;
  }

  @override
  int get hashCode => crystal.hashCode ^ gold.hashCode ^ silver.hashCode;
}

class Crystal {
  final String backDefault;
  final String backShiny;
  final String frontDefault;
  final String frontShiny;
  Crystal({
    required this.backDefault,
    required this.backShiny,
    required this.frontDefault,
    required this.frontShiny,
  });

  Crystal copyWith({
    String? backDefault,
    String? backShiny,
    String? frontDefault,
    String? frontShiny,
  }) {
    return Crystal(
      backDefault: backDefault ?? this.backDefault,
      backShiny: backShiny ?? this.backShiny,
      frontDefault: frontDefault ?? this.frontDefault,
      frontShiny: frontShiny ?? this.frontShiny,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'back_default': backDefault,
      'back_shiny': backShiny,
      'front_default': frontDefault,
      'front_shiny': frontShiny,
    };
  }

  factory Crystal.fromMap(Map<String, dynamic> map) {
    return Crystal(
      backDefault: map['back_default'] != null ? map['back_default'] : '',
      backShiny: map['back_shiny'] != null ? map['back_shiny'] : '',
      frontDefault: map['front_default'] != null ? map['front_default'] : '',
      frontShiny: map['front_shiny'] != null ? map['front_shiny'] : '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Crystal.fromJson(String source) =>
      Crystal.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Crystal(backDefault: $backDefault, backShiny: $backShiny, frontDefault: $frontDefault, frontShiny: $frontShiny)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Crystal &&
        other.backDefault == backDefault &&
        other.backShiny == backShiny &&
        other.frontDefault == frontDefault &&
        other.frontShiny == frontShiny;
  }

  @override
  int get hashCode {
    return backDefault.hashCode ^
        backShiny.hashCode ^
        frontDefault.hashCode ^
        frontShiny.hashCode;
  }
}

class Gold {
  final String backDefault;
  final String backShiny;
  final String frontDefault;
  final String frontShiny;
  Gold({
    required this.backDefault,
    required this.backShiny,
    required this.frontDefault,
    required this.frontShiny,
  });

  Gold copyWith({
    String? backDefault,
    String? backShiny,
    String? frontDefault,
    String? frontShiny,
  }) {
    return Gold(
      backDefault: backDefault ?? this.backDefault,
      backShiny: backShiny ?? this.backShiny,
      frontDefault: frontDefault ?? this.frontDefault,
      frontShiny: frontShiny ?? this.frontShiny,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'back_default': backDefault,
      'back_shiny': backShiny,
      'front_default': frontDefault,
      'front_shiny': frontShiny,
    };
  }

  factory Gold.fromMap(Map<String, dynamic> map) {
    return Gold(
      backDefault: map['back_default'],
      backShiny: map['back_shiny'],
      frontDefault: map['front_default'],
      frontShiny: map['front_shiny'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Gold.fromJson(String source) => Gold.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Gold(backDefault: $backDefault, backShiny: $backShiny, frontDefault: $frontDefault, frontShiny: $frontShiny)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Gold &&
        other.backDefault == backDefault &&
        other.backShiny == backShiny &&
        other.frontDefault == frontDefault &&
        other.frontShiny == frontShiny;
  }

  @override
  int get hashCode {
    return backDefault.hashCode ^
        backShiny.hashCode ^
        frontDefault.hashCode ^
        frontShiny.hashCode;
  }
}

class Silver {
  final String backDefault;
  final String backShiny;
  final String frontDefault;
  final String frontShiny;
  Silver({
    required this.backDefault,
    required this.backShiny,
    required this.frontDefault,
    required this.frontShiny,
  });

  Silver copyWith({
    String? backDefault,
    String? backShiny,
    String? frontDefault,
    String? frontShiny,
  }) {
    return Silver(
      backDefault: backDefault ?? this.backDefault,
      backShiny: backShiny ?? this.backShiny,
      frontDefault: frontDefault ?? this.frontDefault,
      frontShiny: frontShiny ?? this.frontShiny,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'back_default': backDefault,
      'back_shiny': backShiny,
      'front_default': frontDefault,
      'front_shiny': frontShiny,
    };
  }

  factory Silver.fromMap(Map<String, dynamic> map) {
    return Silver(
      backDefault: map['back_default'],
      backShiny: map['back_shiny'],
      frontDefault: map['front_default'],
      frontShiny: map['front_shiny'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Silver.fromJson(String source) => Silver.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Silver(backDefault: $backDefault, backShiny: $backShiny, frontDefault: $frontDefault, frontShiny: $frontShiny)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Silver &&
        other.backDefault == backDefault &&
        other.backShiny == backShiny &&
        other.frontDefault == frontDefault &&
        other.frontShiny == frontShiny;
  }

  @override
  int get hashCode {
    return backDefault.hashCode ^
        backShiny.hashCode ^
        frontDefault.hashCode ^
        frontShiny.hashCode;
  }
}
