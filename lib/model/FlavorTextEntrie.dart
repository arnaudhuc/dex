import 'dart:convert';

import 'package:dex/model/NamedApiResource.dart';

class FlavorTextEntrie {
  final String flavor_text;
  final NamedApiResource language;
  final NamedApiResource version;
  FlavorTextEntrie({
    required this.flavor_text,
    required this.language,
    required this.version,
  });

  FlavorTextEntrie copyWith({
    String? flavor_text,
    NamedApiResource? language,
    NamedApiResource? version,
  }) {
    return FlavorTextEntrie(
      flavor_text: flavor_text ?? this.flavor_text,
      language: language ?? this.language,
      version: version ?? this.version,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'flavor_text': flavor_text,
      'language': language.toMap(),
      'version': version.toMap(),
    };
  }

  factory FlavorTextEntrie.fromMap(Map<String, dynamic> map) {
    return FlavorTextEntrie(
      flavor_text: map['flavor_text'],
      language: NamedApiResource.fromMap(map['language']),
      version: NamedApiResource.fromMap(map['version']),
    );
  }

  String toJson() => json.encode(toMap());

  factory FlavorTextEntrie.fromJson(String source) =>
      FlavorTextEntrie.fromMap(json.decode(source));

  @override
  String toString() =>
      'Flavor_text_entrie(flavor_text: $flavor_text, language: $language, version: $version)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FlavorTextEntrie &&
        other.flavor_text == flavor_text &&
        other.language == language &&
        other.version == version;
  }

  @override
  int get hashCode =>
      flavor_text.hashCode ^ language.hashCode ^ version.hashCode;
}
