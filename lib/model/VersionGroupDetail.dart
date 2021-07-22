import 'dart:convert';

import 'package:dex/model/NamedApiResource.dart';

class VersionGroupDetail {
  final int levelLearnedAt;
  final NamedApiResource moveLearnMethod;
  final NamedApiResource versionGroup;
  VersionGroupDetail({
    required this.levelLearnedAt,
    required this.moveLearnMethod,
    required this.versionGroup,
  });

  VersionGroupDetail copyWith({
    int? levelLearnedAt,
    NamedApiResource? moveLearnMethod,
    NamedApiResource? versionGroup,
  }) {
    return VersionGroupDetail(
      levelLearnedAt: levelLearnedAt ?? this.levelLearnedAt,
      moveLearnMethod: moveLearnMethod ?? this.moveLearnMethod,
      versionGroup: versionGroup ?? this.versionGroup,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'level_learned_at': levelLearnedAt,
      'move_learn_method': moveLearnMethod,
      'version_group': versionGroup,
    };
  }

  factory VersionGroupDetail.fromMap(Map<String, dynamic> map) {
    return VersionGroupDetail(
      levelLearnedAt: map['level_learned_at'],
      moveLearnMethod: map['move_learn_method'] as NamedApiResource,
      versionGroup: map['version_group'] as NamedApiResource,
    );
  }

  String toJson() => json.encode(toMap());

  factory VersionGroupDetail.fromJson(String source) =>
      VersionGroupDetail.fromMap(json.decode(source));

  @override
  String toString() =>
      'Version_group_detail(level_learned_at: $levelLearnedAt, move_learn_method: $moveLearnMethod, version_group: $versionGroup)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is VersionGroupDetail &&
        other.levelLearnedAt == levelLearnedAt &&
        other.moveLearnMethod == moveLearnMethod &&
        other.versionGroup == versionGroup;
  }

  @override
  int get hashCode =>
      levelLearnedAt.hashCode ^
      moveLearnMethod.hashCode ^
      versionGroup.hashCode;
}
