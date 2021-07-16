import 'package:dex/model/NamedApiResource.dart';

class PokemonHeldItem {
  final NamedApiResource item;
  final List<PokemonHeldItemVersion> versionDetails;

  PokemonHeldItem({
    required this.item,
    required this.versionDetails,
  });

  factory PokemonHeldItem.fromJson(Map<String, dynamic> json) {
    return PokemonHeldItem(
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
