import 'package:dex/model/Generations/GenerationVIModel.dart';
import 'package:dex/model/Other.dart';

class GenerationVii {
  DreamWorld icons;
  OmegarubyAlphasapphire ultraSunUltraMoon;

  GenerationVii({
    required this.icons,
    required this.ultraSunUltraMoon,
  });

  factory GenerationVii.fromJson(Map<String, dynamic> json) {
    return GenerationVii(
      icons: getIcons(json),
      ultraSunUltraMoon: getUltraSunUltraMoon(json),
    );
  }

  static getIcons(Map<String, dynamic> json) {
    return json['icons'].map((json) => new DreamWorld.fromJson(json));
  }

  static getUltraSunUltraMoon(Map<String, dynamic> json) {
    return json['ultra-sun-ultra-moon']
        .map((json) => new OmegarubyAlphasapphire.fromJson(json));
  }
}
