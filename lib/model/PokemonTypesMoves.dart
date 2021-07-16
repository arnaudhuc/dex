import 'package:dex/model/NamedApiResource.dart';

class Moves {
  NamedApiResource move;
  List<VersionGroupDetails> versionGroupDetails;

  Moves({
    required this.move,
    required this.versionGroupDetails,
  });

  factory Moves.fromJson(Map<String, dynamic> json) {
    return Moves(
      move: getMove(json),
      versionGroupDetails: getVersionGroupDetails(json),
    );
  }

  static getMove(Map<String, dynamic> json) {
    return json['version'].map((version) => NamedApiResource.fromJson(version));
  }

  static getVersionGroupDetails(Map<String, dynamic> json) {
    return json['version_group_details'].map(
      (versionGroupDetail) => VersionGroupDetails.fromJson(versionGroupDetail),
    );
  }
}

class VersionGroupDetails {
  int levelLearnedAt;
  NamedApiResource moveLearnMethod;
  NamedApiResource versionGroup;

  VersionGroupDetails({
    required this.levelLearnedAt,
    required this.moveLearnMethod,
    required this.versionGroup,
  });

  factory VersionGroupDetails.fromJson(Map<String, dynamic> json) {
    return VersionGroupDetails(
      levelLearnedAt: json['level_learned_at'],
      moveLearnMethod: getMoveLearnMethod(json),
      versionGroup: getVersionGroup(json),
    );
  }

  static getMoveLearnMethod(Map<String, dynamic> json) {
    return json['move_learn_method'].map(
      (move) => NamedApiResource.fromJson(move),
    );
  }

  static getVersionGroup(Map<String, dynamic> json) {
    return json['version_group'].map(
      (versionGroup) => NamedApiResource.fromJson(versionGroup),
    );
  }
}
