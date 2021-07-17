import 'package:dex/model/NamedApiResource.dart';

class HeldItem {
  final NamedApiResource item;
  final List<PokemonHeldItemVersion> versionDetails;

  HeldItem({
    required this.item,
    required this.versionDetails,
  });

  factory HeldItem.fromJson(Map<String, dynamic> json) {
    return HeldItem(
      item: json['item'],
      versionDetails: getVersionDetails(json),
    );
  }

  static getVersionDetails(Map<String, dynamic> json) {
    return json['version_details']
        .map((version) => PokemonHeldItemVersion.fromJson(version));
  }
}

class PokemonHeldItemVersion {
  final NamedApiResource version;
  final int rarity;

  PokemonHeldItemVersion({
    required this.version,
    required this.rarity,
  });

  factory PokemonHeldItemVersion.fromJson(Map<String, dynamic> json) {
    return PokemonHeldItemVersion(
      version: json['version'],
      rarity: json['rarity'],
    );
  }
}
