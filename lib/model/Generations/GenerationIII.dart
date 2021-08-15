import 'dart:convert';

class GenerationIII {
  final Emerald emerald;
  final FireredLeafgreen fireredLeafgreen;
  final RubySapphire rubySapphire;
  GenerationIII({
    required this.emerald,
    required this.fireredLeafgreen,
    required this.rubySapphire,
  });

  GenerationIII copyWith({
    Emerald? emerald,
    FireredLeafgreen? fireredLeafgreen,
    RubySapphire? rubySapphire,
  }) {
    return GenerationIII(
      emerald: emerald ?? this.emerald,
      fireredLeafgreen: fireredLeafgreen ?? this.fireredLeafgreen,
      rubySapphire: rubySapphire ?? this.rubySapphire,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'emerald': emerald.toMap(),
      'firered-leafgreen': fireredLeafgreen.toMap(),
      'ruby-sapphire': rubySapphire.toMap(),
    };
  }

  factory GenerationIII.fromMap(Map<String, dynamic> map) {
    return GenerationIII(
      emerald: Emerald.fromMap(map['emerald']),
      fireredLeafgreen: FireredLeafgreen.fromMap(map['firered-leafgreen']),
      rubySapphire: RubySapphire.fromMap(map['ruby-sapphire']),
    );
  }

  String toJson() => json.encode(toMap());

  factory GenerationIII.fromJson(String source) =>
      GenerationIII.fromMap(json.decode(source));

  @override
  String toString() =>
      'Generation_iii(emerald: $emerald, fireredLeafgreen: $fireredLeafgreen, rubySapphire: $rubySapphire)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GenerationIII &&
        other.emerald == emerald &&
        other.fireredLeafgreen == fireredLeafgreen &&
        other.rubySapphire == rubySapphire;
  }

  @override
  int get hashCode =>
      emerald.hashCode ^ fireredLeafgreen.hashCode ^ rubySapphire.hashCode;
}

class Emerald {
  final String frontDefault;
  final String frontShiny;
  Emerald({
    required this.frontDefault,
    required this.frontShiny,
  });

  Emerald copyWith({
    String? frontDefault,
    String? frontShiny,
  }) {
    return Emerald(
      frontDefault: frontDefault ?? this.frontDefault,
      frontShiny: frontShiny ?? this.frontShiny,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'front_default': frontDefault,
      'front_shiny': frontShiny,
    };
  }

  factory Emerald.fromMap(Map<String, dynamic> map) {
    return Emerald(
      frontDefault: map['front_default'],
      frontShiny: map['front_shiny'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Emerald.fromJson(String source) =>
      Emerald.fromMap(json.decode(source));

  @override
  String toString() =>
      'Emerald(frontDefault: $frontDefault, frontShiny: $frontShiny)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Emerald &&
        other.frontDefault == frontDefault &&
        other.frontShiny == frontShiny;
  }

  @override
  int get hashCode => frontDefault.hashCode ^ frontShiny.hashCode;
}

class FireredLeafgreen {
  final String backDefault;
  final String backShiny;
  final String frontDefault;
  final String frontShiny;
  FireredLeafgreen({
    required this.backDefault,
    required this.backShiny,
    required this.frontDefault,
    required this.frontShiny,
  });

  FireredLeafgreen copyWith({
    String? backDefault,
    String? backShiny,
    String? frontDefault,
    String? frontShiny,
  }) {
    return FireredLeafgreen(
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

  factory FireredLeafgreen.fromMap(Map<String, dynamic> map) {
    return FireredLeafgreen(
      backDefault: map['back_default'] != null ? map['back_default'] : '',
      backShiny: map['back_shiny'] != null ? map['back_shiny'] : '',
      frontDefault: map['front_default'] != null ? map['front_default'] : '',
      frontShiny: map['front_shiny'] != null ? map['front_shiny'] : '',
    );
  }

  String toJson() => json.encode(toMap());

  factory FireredLeafgreen.fromJson(String source) =>
      FireredLeafgreen.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Firered_leafgreen(backDefault: $backDefault, backShiny: $backShiny, frontDefault: $frontDefault, frontShiny: $frontShiny)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FireredLeafgreen &&
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

class RubySapphire {
  final String backDefault;
  final String backShiny;
  final String frontDefault;
  final String frontShiny;
  RubySapphire({
    required this.backDefault,
    required this.backShiny,
    required this.frontDefault,
    required this.frontShiny,
  });

  RubySapphire copyWith({
    String? backDefault,
    String? backShiny,
    String? frontDefault,
    String? frontShiny,
  }) {
    return RubySapphire(
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

  factory RubySapphire.fromMap(Map<String, dynamic> map) {
    return RubySapphire(
      backDefault: map['back_default'] != null ? map['back_default'] : '',
      backShiny: map['back_shiny'] != null ? map['back_shiny'] : '',
      frontDefault: map['front_default'] != null ? map['front_default'] : '',
      frontShiny: map['front_shiny'] != null ? map['front_shiny'] : '',
    );
  }

  String toJson() => json.encode(toMap());

  factory RubySapphire.fromJson(String source) =>
      RubySapphire.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Ruby_sapphire(backDefault: $backDefault, backShiny: $backShiny, frontDefault: $frontDefault, frontShiny: $frontShiny)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RubySapphire &&
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
