class GenerationI {
  RedBlue redBlue;
  RedBlue yellow;

  GenerationI({
    required this.redBlue,
    required this.yellow,
  });

  factory GenerationI.fromJson(Map<String, dynamic> json) {
    return GenerationI(
      redBlue: getRedBlue(json, 'red-blue'),
      yellow: getRedBlue(json, 'yellow'),
    );
  }

  static getRedBlue(Map<String, dynamic> json, String value) {
    return json[value].map((version) => new RedBlue.fromJson(version));
  }
}

class RedBlue {
  String backDefault;
  String backGray;
  String frontDefault;
  String frontGray;

  RedBlue({
    required this.backDefault,
    required this.backGray,
    required this.frontDefault,
    required this.frontGray,
  });

  factory RedBlue.fromJson(Map<String, dynamic> json) {
    return RedBlue(
      backDefault: json['back_default'],
      backGray: json['back_gray'],
      frontDefault: json['front_default'],
      frontGray: json['front_gray'],
    );
  }
}
