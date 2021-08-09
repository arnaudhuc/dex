import 'dart:convert';

import 'package:collection/collection.dart';

import 'package:dex/model/NamedApiResource.dart';

import 'VersionGroupDetail.dart';

class Move {
  final NamedApiResource move;
  final List<VersionGroupDetail> versionGroupDetails;
  Move({
    required this.move,
    required this.versionGroupDetails,
  });

  Move copyWith({
    NamedApiResource? move,
    List<VersionGroupDetail>? versionGroupDetails,
  }) {
    return Move(
      move: move ?? this.move,
      versionGroupDetails: versionGroupDetails ?? this.versionGroupDetails,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'move': move,
      'version_group_details':
          versionGroupDetails.map((x) => x.toMap()).toList(),
    };
  }

  factory Move.fromMap(Map<String, dynamic> map) {
    return Move(
      move: NamedApiResource.fromMap(map['move']),
      versionGroupDetails: List<VersionGroupDetail>.from(
          map['version_group_details']
              ?.map((x) => VersionGroupDetail.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Move.fromJson(String source) => Move.fromMap(json.decode(source));

  @override
  String toString() =>
      'Move(move: $move, version_group_details: $versionGroupDetails)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is Move &&
        other.move == move &&
        listEquals(other.versionGroupDetails, versionGroupDetails);
  }

  @override
  int get hashCode => move.hashCode ^ versionGroupDetails.hashCode;
}
