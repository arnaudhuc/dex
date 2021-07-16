class Other {
  DreamWorld dreamWorld;
  OfficialArtwork officialArtwork;

  Other({
    required this.dreamWorld,
    required this.officialArtwork,
  });

  factory Other.fromJson(Map<String, dynamic> json) {
    // dreamWorld = json['dream_world'] != null
    //     ? new DreamWorld.fromJson(json['dream_world'])
    //     : null;
    // officialArtwork = json['official-artwork'] != null
    //     ? new OfficialArtwork.fromJson(json['official-artwork'])
    //     : null;

    return Other(
      dreamWorld: getDreamWorld(json),
      officialArtwork: getOfficialArtwork(json),
    );
  }

  static getDreamWorld(Map<String, dynamic> json) {
    return json['dream_world']
        .map((dreamworld) => DreamWorld.fromJson(dreamworld));
  }

  static getOfficialArtwork(Map<String, dynamic> json) {
    return json['official-artwork']
        .map((officialArtwork) => OfficialArtwork.fromJson(officialArtwork));
  }
}

class DreamWorld {
  String frontDefault;
  String? frontFemale;

  DreamWorld({
    required this.frontDefault,
    this.frontFemale,
  });

  factory DreamWorld.fromJson(Map<String, dynamic> json) {
    return DreamWorld(
      frontDefault: json['front_default'],
      frontFemale: json['front_female'],
    );
  }
}

class OfficialArtwork {
  String frontDefault;

  OfficialArtwork({
    required this.frontDefault,
  });

  factory OfficialArtwork.fromJson(Map<String, dynamic> json) {
    return OfficialArtwork(
      frontDefault: json['front_default'],
    );
  }
}
