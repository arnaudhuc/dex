import 'package:dex/model/Other.dart';

class GenerationViii {
  DreamWorld icons;

  GenerationViii({
    required this.icons,
  });

  factory GenerationViii.fromJson(Map<String, dynamic> json) =>
      GenerationViii(icons: getIcons(json));

  static getIcons(Map<String, dynamic> json) {
    return json['icons'].map((icon) => DreamWorld.fromJson(icon));
  }
}
