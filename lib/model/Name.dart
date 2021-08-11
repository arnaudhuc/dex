import 'dart:convert';

import 'package:dex/model/NamedApiResource.dart';

class Name {
  final NamedApiResource language;
  final String name;
  Name({
    required this.language,
    required this.name,
  });

  Name copyWith({
    NamedApiResource? language,
    String? name,
  }) {
    return Name(
      language: language ?? this.language,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'language': language.toMap(),
      'name': name,
    };
  }

  factory Name.fromMap(Map<String, dynamic> map) {
    return Name(
      language: NamedApiResource.fromMap(map['language']),
      name: map['name'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Name.fromJson(String source) => Name.fromMap(json.decode(source));

  @override
  String toString() => 'Name(language: $language, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Name && other.language == language && other.name == name;
  }

  @override
  int get hashCode => language.hashCode ^ name.hashCode;
}
