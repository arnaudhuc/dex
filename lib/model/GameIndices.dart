import 'package:dex/model/NamedApiResource.dart';

class GameIndices {
  int gameIndex;
  NamedApiResource version;

  GameIndices({
    required this.gameIndex,
    required this.version,
  });

  factory GameIndices.fromJson(Map<String, dynamic> json) {
    return GameIndices(
      gameIndex: json['game_index'],
      version: getVersion(json),
    );
  }

  static getVersion(Map<String, dynamic> json) {
    return json['version'].map((version) => NamedApiResource.fromJson(version));
  }
}
