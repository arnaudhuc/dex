import 'dart:convert';

import 'package:dex/model/NamedApiResource.dart';

class GameIndice {
  final int gameIndex;
  final NamedApiResource version;
  GameIndice({
    required this.gameIndex,
    required this.version,
  });

  GameIndice copyWith({
    int? gameIndex,
    NamedApiResource? version,
  }) {
    return GameIndice(
      gameIndex: gameIndex ?? this.gameIndex,
      version: version ?? this.version,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'game_index': gameIndex,
      'version': version,
    };
  }

  factory GameIndice.fromMap(Map<String, dynamic> map) {
    return GameIndice(
      gameIndex: map['game_index'],
      version: NamedApiResource.fromMap(map['version']),
    );
  }

  String toJson() => json.encode(toMap());

  factory GameIndice.fromJson(String source) =>
      GameIndice.fromMap(json.decode(source));

  @override
  String toString() => 'Game_indice(game_index: $gameIndex, version: $version)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GameIndice &&
        other.gameIndex == gameIndex &&
        other.version == version;
  }

  @override
  int get hashCode => gameIndex.hashCode ^ version.hashCode;
}
