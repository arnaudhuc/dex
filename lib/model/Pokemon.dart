import 'package:dex/model/NamedApiResource.dart';
import 'package:dex/model/HeldItem.dart';
import 'package:dex/model/Abilities.dart';
import 'package:dex/model/GameIndices.dart';
import 'package:dex/model/Sprites.dart';
import 'package:dex/model/Stats.dart';
import 'package:dex/model/Types.dart';
import 'package:dex/model/Moves.dart';

class Pokemon {
  final Iterable<Abilities>? abilities;
  final int baseExperience;
  final Iterable<NamedApiResource> forms;
  final Iterable<GameIndices> gameIndices;
  final int height;
  final Iterable<HeldItem> heldItems;
  final int id;
  final bool isDefault;
  final String locationAreaEncounters;
  final Iterable<Moves> moves;
  final String name;
  final int order;
  final Iterable<Null> pastTypes;
  final NamedApiResource species;
  final Sprites sprites;
  final Iterable<Stats> stats;
  final Iterable<Types> types;
  final int weight;

  Pokemon({
    required this.abilities,
    required this.baseExperience,
    required this.forms,
    required this.gameIndices,
    required this.height,
    required this.heldItems,
    required this.id,
    required this.isDefault,
    required this.locationAreaEncounters,
    required this.moves,
    required this.name,
    required this.order,
    required this.pastTypes,
    required this.species,
    required this.sprites,
    required this.stats,
    required this.types,
    required this.weight,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      abilities: getAbilities(json),
      baseExperience: json['base_experience'],
      forms: getForms(json),
      gameIndices: getGameIndices(json),
      height: json['height'],
      heldItems: getHeldItems(json),
      id: json['id'],
      isDefault: json['is_default'],
      locationAreaEncounters: json['location_area_encounters'],
      moves: getMoves(json),
      name: json['name'],
      order: json['order'],
      pastTypes: json['past_types'],
      species: NamedApiResource.fromJson(json['species']),
      sprites: Sprites.fromJson(json['sprites']),
      stats: getStats(json),
      types: getTypes(json),
      weight: json['weight'],
    );
  }

  static Iterable<Abilities> getAbilities(Map<String, dynamic> json) {
    final Iterable<dynamic> abilities = json['abilities'];
    final Iterable<Abilities> pokeApiResults =
        abilities.map<Abilities>((ability) => Abilities.fromJson(ability));

    return pokeApiResults;
  }

  //TODO - to fix
  static Iterable<NamedApiResource> getForms(Map<String, dynamic> json) {
    final Iterable<dynamic> forms = json['forms'];
    final Iterable<NamedApiResource> formsList =
        forms.map<NamedApiResource>((form) => NamedApiResource.fromJson(form));

    return formsList;
  }

  static Iterable<GameIndices> getGameIndices(Map<String, dynamic> json) {
    final Iterable<dynamic> gameIndices = json['game_indices'];
    final Iterable<GameIndices> gameIndicesList = gameIndices
        .map<GameIndices>((gameIndice) => GameIndices.fromJson(gameIndice));

    return gameIndicesList;
  }

  static Iterable<HeldItem> getHeldItems(Map<String, dynamic> json) {
    final Iterable<dynamic> heldItems = json['held_items'];
    final Iterable<HeldItem> heldItemsList =
        heldItems.map<HeldItem>((items) => HeldItem.fromJson(items));

    return heldItemsList;
  }

  static Iterable<Moves> getMoves(Map<String, dynamic> json) {
    final Iterable<dynamic> moves = json['moves'];
    final Iterable<Moves> movesList =
        moves.map<Moves>((move) => Moves.fromJson(move));

    return movesList;
  }

  static Iterable<HeldItem> getSpecies(Map<String, dynamic> json) {
    final Iterable<dynamic> species = json['species'];
    final Iterable<HeldItem> speciesList =
        species.map<HeldItem>((type) => HeldItem.fromJson(type));

    return speciesList;
  }

  static Iterable<Stats> getStats(Map<String, dynamic> json) {
    final Iterable<dynamic> stats = json['stats'];
    final Iterable<Stats> statsList =
        stats.map<Stats>((stat) => Stats.fromJson(stat));

    return statsList;
  }

  static Iterable<Types> getTypes(Map<String, dynamic> json) {
    final Iterable<dynamic> types = json['types'];
    final Iterable<Types> typesList =
        types.map<Types>((type) => Types.fromJson(type));

    return typesList;
  }
}
