import 'dart:convert';

import 'Versions.dart';

class Sprites {
  final String backDefault;
  final String? backFemale;
  final String backShiny;
  final String? backShinyFemale;
  final String frontDefault;
  final String? frontFemale;
  final String frontShiny;
  final String? frontShinyFemale;
  final Other other;
  final Versions versions;
  Sprites({
    required this.backDefault,
    this.backFemale,
    required this.backShiny,
    this.backShinyFemale,
    required this.frontDefault,
    this.frontFemale,
    required this.frontShiny,
    this.frontShinyFemale,
    required this.other,
    required this.versions,
  });

  Sprites copyWith({
    String? backDefault,
    String? backFemale,
    String? backShiny,
    String? backShinyFemale,
    String? frontDefault,
    String? frontFemale,
    String? frontShiny,
    String? frontShinyFemale,
    Other? other,
    Versions? versions,
  }) {
    return Sprites(
      backDefault: backDefault ?? this.backDefault,
      backFemale: backFemale ?? this.backFemale,
      backShiny: backShiny ?? this.backShiny,
      backShinyFemale: backShinyFemale ?? this.backShinyFemale,
      frontDefault: frontDefault ?? this.frontDefault,
      frontFemale: frontFemale ?? this.frontFemale,
      frontShiny: frontShiny ?? this.frontShiny,
      frontShinyFemale: frontShinyFemale ?? this.frontShinyFemale,
      other: other ?? this.other,
      versions: versions ?? this.versions,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'back_default': backDefault,
      'back_female': backFemale,
      'back_shiny': backShiny,
      'back_shiny_female': backShinyFemale,
      'front_default': frontDefault,
      'front_female': frontFemale,
      'front_shiny': frontShiny,
      'front_shiny_female': frontShinyFemale,
      'other': other.toMap(),
      'versions': versions.toMap(),
    };
  }

  factory Sprites.fromMap(Map<String, dynamic> map) {
    return Sprites(
      backDefault: map['back_default'] != null ? map['back_default'] : '',
      backFemale: map['back_female'] != null ? map['back_female'] : '',
      backShiny: map['back_shiny'] != null ? map['back_shiny'] : '',
      backShinyFemale:
          map['back_shiny_female'] != null ? map['back_shiny_female'] : '',
      frontDefault: map['front_default'] != null ? map['front_default'] : '',
      frontFemale: map['front_female'] != null ? map['front_female'] : '',
      frontShiny: map['front_shiny'] != null ? map['front_shiny'] : '',
      frontShinyFemale:
          map['front_shiny_female'] != null ? map['front_shiny_female'] : '',
      other: Other.fromMap(map['other']),
      versions: Versions.fromMap(map['versions']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Sprites.fromJson(String source) =>
      Sprites.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Sprites(backDefault: $backDefault, backFemale: $backFemale, backShiny: $backShiny, backShinyFemale: $backShinyFemale, frontDefault: $frontDefault, frontFemale: $frontFemale, frontShiny: $frontShiny, frontShinyFemale: $frontShinyFemale, other: $other, versions: $versions)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Sprites &&
        other.backDefault == backDefault &&
        other.backFemale == backFemale &&
        other.backShiny == backShiny &&
        other.backShinyFemale == backShinyFemale &&
        other.frontDefault == frontDefault &&
        other.frontFemale == frontFemale &&
        other.frontShiny == frontShiny &&
        other.frontShinyFemale == frontShinyFemale &&
        // ignore: unrelated_type_equality_checks
        other.other == other &&
        other.versions == versions;
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
        frontShinyFemale.hashCode ^
        other.hashCode ^
        versions.hashCode;
  }
}

class Other {
  final DreamWorld? dreamWorld;
  Other({
    this.dreamWorld,
  });
  // final OfficialArtwork? officialArtwork;

  Other copyWith({
    DreamWorld? dreamWorld,
  }) {
    return Other(
      dreamWorld: dreamWorld ?? this.dreamWorld,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'dream_world': dreamWorld?.toMap(),
    };
  }

  factory Other.fromMap(Map<String, dynamic> map) {
    return Other(
      dreamWorld: DreamWorld.fromMap(map['dream_world']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Other.fromJson(String source) => Other.fromMap(json.decode(source));

  @override
  String toString() => 'Other(dreamWorld: $dreamWorld)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Other && other.dreamWorld == dreamWorld;
  }

  @override
  int get hashCode => dreamWorld.hashCode;
}

class DreamWorld {
  final String frontDefault;
  final String? frontFemale;
  DreamWorld({
    required this.frontDefault,
    this.frontFemale,
  });

  DreamWorld copyWith({
    String? frontDefault,
    String? frontFemale,
  }) {
    return DreamWorld(
      frontDefault: frontDefault ?? this.frontDefault,
      frontFemale: frontFemale ?? this.frontFemale,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'front_default': frontDefault,
      'front_female': frontFemale,
    };
  }

  factory DreamWorld.fromMap(Map<String, dynamic> map) {
    return DreamWorld(
      frontDefault: map['front_default'] != null ? map['front_default'] : '',
      frontFemale: map['front_female'] != null ? map['front_female'] : '',
    );
  }

  String toJson() => json.encode(toMap());

  factory DreamWorld.fromJson(String source) =>
      DreamWorld.fromMap(json.decode(source));

  @override
  String toString() =>
      'Dream_world(front_default: $frontDefault, front_female: $frontFemale)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DreamWorld &&
        other.frontDefault == frontDefault &&
        other.frontFemale == frontFemale;
  }

  @override
  int get hashCode => frontDefault.hashCode ^ frontFemale.hashCode;
}

class OfficialArtwork {
  final String frontDefault;
  OfficialArtwork({
    required this.frontDefault,
  });

  OfficialArtwork copyWith({
    String? frontDefault,
  }) {
    return OfficialArtwork(
      frontDefault: frontDefault ?? this.frontDefault,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'front_default': frontDefault,
    };
  }

  factory OfficialArtwork.fromMap(Map<String, dynamic> map) {
    return OfficialArtwork(
      frontDefault: map['front_default'] != null ? map['front_default'] : '',
    );
  }

  String toJson() => json.encode(toMap());

  factory OfficialArtwork.fromJson(String source) =>
      OfficialArtwork.fromMap(json.decode(source));

  @override
  String toString() => 'Official_artwork(front_default: $frontDefault)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OfficialArtwork && other.frontDefault == frontDefault;
  }

  @override
  int get hashCode => frontDefault.hashCode;
}
