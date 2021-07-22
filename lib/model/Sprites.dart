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
      'backDefault': backDefault,
      'backFemale': backFemale,
      'backShiny': backShiny,
      'backShinyFemale': backShinyFemale,
      'frontDefault': frontDefault,
      'frontFemale': frontFemale,
      'frontShiny': frontShiny,
      'frontShinyFemale': frontShinyFemale,
      'other': other.toMap(),
      'versions': versions.toMap(),
    };
  }

  factory Sprites.fromMap(Map<String, dynamic> map) {
    return Sprites(
      backDefault: map['backDefault'],
      backFemale: map['backFemale'],
      backShiny: map['backShiny'],
      backShinyFemale: map['backShinyFemale'],
      frontDefault: map['frontDefault'],
      frontFemale: map['frontFemale'],
      frontShiny: map['frontShiny'],
      frontShinyFemale: map['frontShinyFemale'],
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
  final DreamWorld dreamWorld;
  final OfficialArtwork officialArtwork;
  Other({
    required this.dreamWorld,
    required this.officialArtwork,
  });

  Other copyWith({
    DreamWorld? dreamWorld,
    OfficialArtwork? officialArtwork,
  }) {
    return Other(
      dreamWorld: dreamWorld ?? this.dreamWorld,
      officialArtwork: officialArtwork ?? this.officialArtwork,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'dream_world': dreamWorld.toMap(),
      'officialArtwork': officialArtwork.toMap(),
    };
  }

  factory Other.fromMap(Map<String, dynamic> map) {
    return Other(
      dreamWorld: DreamWorld.fromMap(map['dream_world']),
      officialArtwork: OfficialArtwork.fromMap(map['officialArtwork']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Other.fromJson(String source) => Other.fromMap(json.decode(source));

  @override
  String toString() =>
      'Other(dream_world: $dreamWorld, officialArtwork: $officialArtwork)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Other &&
        other.dreamWorld == dreamWorld &&
        other.officialArtwork == officialArtwork;
  }

  @override
  int get hashCode => dreamWorld.hashCode ^ officialArtwork.hashCode;
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
      'frontDefault': frontDefault,
      'frontFemale': frontFemale,
    };
  }

  factory DreamWorld.fromMap(Map<String, dynamic> map) {
    return DreamWorld(
      frontDefault: map['frontDefault'],
      frontFemale: map['frontFemale'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DreamWorld.fromJson(String source) =>
      DreamWorld.fromMap(json.decode(source));

  @override
  String toString() =>
      'Dream_world(frontDefault: $frontDefault, frontFemale: $frontFemale)';

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
      'frontDefault': frontDefault,
    };
  }

  factory OfficialArtwork.fromMap(Map<String, dynamic> map) {
    return OfficialArtwork(
      frontDefault: map['frontDefault'],
    );
  }

  String toJson() => json.encode(toMap());

  factory OfficialArtwork.fromJson(String source) =>
      OfficialArtwork.fromMap(json.decode(source));

  @override
  String toString() => 'Official_artwork(frontDefault: $frontDefault)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OfficialArtwork && other.frontDefault == frontDefault;
  }

  @override
  int get hashCode => frontDefault.hashCode;
}
