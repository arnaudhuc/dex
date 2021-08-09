import 'dart:convert';

import 'Generations/GenerationI.dart';
import 'Generations/GenerationII.dart';
import 'Generations/GenerationIII.dart';
import 'Generations/GenerationIV.dart';
import 'Generations/GenerationV.dart';
import 'Generations/GenerationVI.dart';
import 'Generations/GenerationVII.dart';
import 'Generations/GenerationVIII.dart';

class Versions {
  final GenerationI generationI;
  final GenerationII generationIi;
  final GenerationIII generationIii;
  final GenerationIV generationIv;
  final GenerationV generationV;
  final GenerationVI generationVi;
  final GenerationVII generationVii;
  final GenerationVIII generationViii;
  Versions({
    required this.generationI,
    required this.generationIi,
    required this.generationIii,
    required this.generationIv,
    required this.generationV,
    required this.generationVi,
    required this.generationVii,
    required this.generationViii,
  });

  Versions copyWith({
    GenerationI? generationI,
    GenerationII? generationIi,
    GenerationIII? generationIii,
    GenerationIV? generationIv,
    GenerationV? generationV,
    GenerationVI? generationVi,
    GenerationVII? generationVii,
    GenerationVIII? generationViii,
  }) {
    return Versions(
      generationI: generationI ?? this.generationI,
      generationIi: generationIi ?? this.generationIi,
      generationIii: generationIii ?? this.generationIii,
      generationIv: generationIv ?? this.generationIv,
      generationV: generationV ?? this.generationV,
      generationVi: generationVi ?? this.generationVi,
      generationVii: generationVii ?? this.generationVii,
      generationViii: generationViii ?? this.generationViii,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'generation-i': generationI.toMap(),
      'generation-ii': generationIi.toMap(),
      'generation-iii': generationIii.toMap(),
      'generation-iv': generationIv.toMap(),
      'generation-v': generationV.toMap(),
      'generation-vi': generationVi.toMap(),
      'generation-vii': generationVii.toMap(),
      'generation-viii': generationViii.toMap(),
    };
  }

  factory Versions.fromMap(Map<String, dynamic> map) {
    return Versions(
      generationI: GenerationI.fromMap(map['generation-i']),
      generationIi: GenerationII.fromMap(map['generation-ii']),
      generationIii: GenerationIII.fromMap(map['generation-iii']),
      generationIv: GenerationIV.fromMap(map['generation-iv']),
      generationV: GenerationV.fromMap(map['generation-v']),
      generationVi: GenerationVI.fromMap(map['generation-vi']),
      generationVii: GenerationVII.fromMap(map['generation-vii']),
      generationViii: GenerationVIII.fromMap(map['generation-viii']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Versions.fromJson(String source) =>
      Versions.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Versions(generationI: $generationI, generationIi: $generationIi, generationIii: $generationIii, generationIv: $generationIv, generationV: $generationV, generationVi: $generationVi, generationVii: $generationVii, generationViii: $generationViii)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Versions &&
        other.generationI == generationI &&
        other.generationIi == generationIi &&
        other.generationIii == generationIii &&
        other.generationIv == generationIv &&
        other.generationV == generationV &&
        other.generationVi == generationVi &&
        other.generationVii == generationVii &&
        other.generationViii == generationViii;
  }

  @override
  int get hashCode {
    return generationI.hashCode ^
        generationIi.hashCode ^
        generationIii.hashCode ^
        generationIv.hashCode ^
        generationV.hashCode ^
        generationVi.hashCode ^
        generationVii.hashCode ^
        generationViii.hashCode;
  }
}
