import 'dart:convert';

import 'package:dex/model/NamedApiResource.dart';

class Genera {
  final String genus;
  final NamedApiResource language;
  Genera({
    required this.genus,
    required this.language,
  });

  Genera copyWith({
    String? genus,
    NamedApiResource? language,
  }) {
    return Genera(
      genus: genus ?? this.genus,
      language: language ?? this.language,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'genus': genus,
      'language': language.toMap(),
    };
  }

  factory Genera.fromMap(Map<String, dynamic> map) {
    return Genera(
      genus: map['genus'],
      language: NamedApiResource.fromMap(map['language']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Genera.fromJson(String source) => Genera.fromMap(json.decode(source));

  @override
  String toString() => 'Genera(genus: $genus, language: $language)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Genera &&
        other.genus == genus &&
        other.language == language;
  }

  @override
  int get hashCode => genus.hashCode ^ language.hashCode;
}
