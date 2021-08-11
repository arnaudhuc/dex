import 'dart:convert';

import 'package:dex/model/Generations/GenerationVII.dart';

class GenerationVIII {
  final Icons icons;
  GenerationVIII({
    required this.icons,
  });

  GenerationVIII copyWith({
    Icons? icons,
  }) {
    return GenerationVIII(
      icons: icons ?? this.icons,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'icons': icons.toMap(),
    };
  }

  factory GenerationVIII.fromMap(Map<String, dynamic> map) {
    return GenerationVIII(
      icons: Icons.fromMap(map['icons']),
    );
  }

  String toJson() => json.encode(toMap());

  factory GenerationVIII.fromJson(String source) =>
      GenerationVIII.fromMap(json.decode(source));

  @override
  String toString() => 'Generation_viii(icons: $icons)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GenerationVIII && other.icons == icons;
  }

  @override
  int get hashCode => icons.hashCode;
}
