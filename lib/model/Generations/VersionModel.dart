import 'package:dex/model/Generations/GenerationIIIModel.dart';
import 'package:dex/model/Generations/GenerationIIModel.dart';
import 'package:dex/model/Generations/GenerationIModel.dart';
import 'package:dex/model/Generations/GenerationIVModel.dart';
import 'package:dex/model/Generations/GenerationVIII.dart';
import 'package:dex/model/Generations/GenerationVIIModel.dart';
import 'package:dex/model/Generations/GenerationVIModel.dart';
import 'package:dex/model/Generations/GenerationVModel.dart';

class Versions {
  GenerationI generationI;
  GenerationIi generationIi;
  GenerationIii generationIii;
  GenerationIv generationIv;
  GenerationV generationV;
  GenerationVi generationVi;
  GenerationVii generationVii;
  GenerationViii generationViii;

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

  factory Versions.fromJson(Map<String, dynamic> json) {
    return Versions(
      generationI: GenerationI.fromJson(json['generationI']),
      generationIi: GenerationIi.fromJson(json['generationIi']),
      generationIii: GenerationIii.fromJson(json['generationIii']),
      generationIv: GenerationIv.fromJson(json['generationIv']),
      generationV: GenerationV.fromJson(json['generationV']),
      generationVi: GenerationVi.fromJson(json['generationVi']),
      generationVii: GenerationVii.fromJson(json['generationVii']),
      generationViii: GenerationViii.fromJson(json['generationViii']),
    );
  }
}
