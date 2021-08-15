import 'dart:convert';

class GenerationI {
  final RedBlue redBlue;
  final Yellow yellow;
  GenerationI({
    required this.redBlue,
    required this.yellow,
  });

  GenerationI copyWith({
    RedBlue? redBlue,
    Yellow? yellow,
  }) {
    return GenerationI(
      redBlue: redBlue ?? this.redBlue,
      yellow: yellow ?? this.yellow,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'red-blue': redBlue.toMap(),
      'yellow': yellow.toMap(),
    };
  }

  factory GenerationI.fromMap(Map<String, dynamic> map) {
    return GenerationI(
      redBlue: RedBlue.fromMap(map['red-blue']),
      yellow: Yellow.fromMap(map['yellow']),
    );
  }

  String toJson() => json.encode(toMap());

  factory GenerationI.fromJson(String source) =>
      GenerationI.fromMap(json.decode(source));

  @override
  String toString() => 'Generation_i(redBlue: $redBlue, yellow: $yellow)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GenerationI &&
        other.redBlue == redBlue &&
        other.yellow == yellow;
  }

  @override
  int get hashCode => redBlue.hashCode ^ yellow.hashCode;
}

class RedBlue {
  final String backDefault;
  final String backGray;
  final String frontDefault;
  final String frontGray;
  RedBlue({
    required this.backDefault,
    required this.backGray,
    required this.frontDefault,
    required this.frontGray,
  });

  RedBlue copyWith({
    String? backDefault,
    String? backGray,
    String? frontDefault,
    String? frontGray,
  }) {
    return RedBlue(
      backDefault: backDefault ?? this.backDefault,
      backGray: backGray ?? this.backGray,
      frontDefault: frontDefault ?? this.frontDefault,
      frontGray: frontGray ?? this.frontGray,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'back_default': backDefault,
      'back_gray': backGray,
      'front_default': frontDefault,
      'front_gray': frontGray,
    };
  }

  factory RedBlue.fromMap(Map<String, dynamic> map) {
    return RedBlue(
      backDefault: map['back_default'] != null ? map['back_default'] : '',
      backGray: map['back_default'] != null ? map['back_default'] : '',
      frontDefault: map['back_default'] != null ? map['back_default'] : '',
      frontGray: map['back_default'] != null ? map['back_default'] : '',
    );
  }

  String toJson() => json.encode(toMap());

  factory RedBlue.fromJson(String source) =>
      RedBlue.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Red_blue(backDefault: $backDefault, back_gray: $backGray, frontDefault: $frontDefault, front_gray: $frontGray)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RedBlue &&
        other.backDefault == backDefault &&
        other.backGray == backGray &&
        other.frontDefault == frontDefault &&
        other.frontGray == frontGray;
  }

  @override
  int get hashCode {
    return backDefault.hashCode ^
        backGray.hashCode ^
        frontDefault.hashCode ^
        frontGray.hashCode;
  }
}

class Yellow {
  final String backDefault;
  final String backGray;
  final String frontDefault;
  final String frontGray;
  Yellow({
    required this.backDefault,
    required this.backGray,
    required this.frontDefault,
    required this.frontGray,
  });

  Yellow copyWith({
    String? backDefault,
    String? backGray,
    String? frontDefault,
    String? frontGray,
  }) {
    return Yellow(
      backDefault: backDefault ?? this.backDefault,
      backGray: backGray ?? this.backGray,
      frontDefault: frontDefault ?? this.frontDefault,
      frontGray: frontGray ?? this.frontGray,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'back_default': backDefault,
      'back_gray': backGray,
      'front_default': frontDefault,
      'front_gray': frontGray,
    };
  }

  factory Yellow.fromMap(Map<String, dynamic> map) {
    return Yellow(
      backDefault: map['back_default'] != null ? map['back_default'] : '',
      backGray: map['back_default'] != null ? map['back_default'] : '',
      frontDefault: map['back_default'] != null ? map['back_default'] : '',
      frontGray: map['back_default'] != null ? map['back_default'] : '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Yellow.fromJson(String source) => Yellow.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Yellow(backDefault: $backDefault, back_gray: $backGray, frontDefault: $frontDefault, front_gray: $frontGray)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Yellow &&
        other.backDefault == backDefault &&
        other.backGray == backGray &&
        other.frontDefault == frontDefault &&
        other.frontGray == frontGray;
  }

  @override
  int get hashCode {
    return backDefault.hashCode ^
        backGray.hashCode ^
        frontDefault.hashCode ^
        frontGray.hashCode;
  }
}
