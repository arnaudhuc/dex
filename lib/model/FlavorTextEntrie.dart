import 'dart:convert';

import 'package:dex/model/NamedApiResource.dart';

class FlavorTextEntrie {
  final String flavorText;
  final NamedApiResource language;
  final NamedApiResource version;
  FlavorTextEntrie({
    required this.flavorText,
    required this.language,
    required this.version,
  });

  FlavorTextEntrie copyWith({
    String? flavorText,
    NamedApiResource? language,
    NamedApiResource? version,
  }) {
    return FlavorTextEntrie(
      flavorText: flavorText ?? this.flavorText,
      language: language ?? this.language,
      version: version ?? this.version,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'flavor_text': flavorText,
      'language': language.toMap(),
      'version': version.toMap(),
    };
  }

  factory FlavorTextEntrie.fromMap(Map<String, dynamic> map) {
    return FlavorTextEntrie(
      flavorText: map['flavor_text'],
      language: NamedApiResource.fromMap(map['language']),
      version: NamedApiResource.fromMap(map['version']),
    );
  }

  String toJson() => json.encode(toMap());

  factory FlavorTextEntrie.fromJson(String source) =>
      FlavorTextEntrie.fromMap(json.decode(source));

  @override
  String toString() =>
      'Flavor_text_entrie(flavor_text: $flavorText, language: $language, version: $version)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FlavorTextEntrie &&
        other.flavorText == flavorText &&
        other.language == language &&
        other.version == version;
  }

  @override
  int get hashCode =>
      flavorText.hashCode ^ language.hashCode ^ version.hashCode;
}
