import 'package:dex/model/NamedApiResource.dart';

class Abilities {
  NamedApiResource ability;
  bool isHidden;
  int slot;

  Abilities({
    required this.ability,
    required this.isHidden,
    required this.slot,
  });

  // Abilities.fromJson(Map<String, dynamic> json) {
  //   ability =
  //       json['ability'] != null ? new Ability.fromJson(json['ability']) : null;
  //   isHidden = json['is_hidden'];
  //   slot = json['slot'];
  // }

  factory Abilities.fromJson(Map<String, dynamic> json) {
    return Abilities(
      ability: getAbility(json),
      isHidden: json['isHidden'],
      slot: json['slot'],
    );
  }

  static getAbility(Map<String, dynamic> json) {
    return json['ability'].map((version) => NamedApiResource.fromJson(version));
  }
}

// TODO - Rename this to something more sensible

