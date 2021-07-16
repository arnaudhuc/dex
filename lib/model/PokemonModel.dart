import 'package:dex/model/NamedApiResource.dart';
import 'package:dex/model/PokemonModelHeldItem.dart';
import 'package:dex/model/PokemonTypeAbilities.dart';
import 'package:dex/model/PokemonTypeForms.dart';
import 'package:dex/model/PokemonTypeGameIndices.dart';
import 'package:dex/model/PokemonTypeSprite.dart';
import 'package:dex/model/PokemonTypeStat.dart';
import 'package:dex/model/PokemonTypeTypes.dart';
import 'package:dex/model/PokemonTypesMoves.dart';

class Pokemon {
  final Iterable<Abilities>? abilities;
  final int baseExperience;
  final Iterable<Forms> forms;
  final Iterable<GameIndices> gameIndices;
  final int height;
  final Iterable<Null> heldItems;
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
      baseExperience: json['base_experience'];,
      forms: getForms(json),
      gameIndices: getGameIndices(json),
      height:  json['height'],
      heldItems: PokemonHeldItem.fromJson(json['held_items']),
      id: json['id'],
      isDefault: json['is_default'],
      locationAreaEncounters: json['location_area_encounters'],
      moves: PokemonMoves.fromJson(json['moves']),
      name: json['name'],
      order: json['order'],
      pastTypes: json['past_types'],
      species: NamedApiResources.json(json['species']),
      sprites: PokemonSprites.fromJson(json['sprites']),
      stats: PokemonStats.fromJson(json['stats']),
      types: PokemonTypes.fromJson(json['types']),
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
  static Iterable<Abilities> getForms(Map<String, dynamic> json) {
    final Iterable<dynamic> abilities = json['forms'];
    final Iterable<Abilities> abilitiesList =
        abilities.map<Abilities>((ability) => Abilities.fromJson(ability));

    return abilitiesList;
  }
  static Iterable<GameIndices> getGameIndices(Map<String, dynamic> json) {
    final Iterable<dynamic> gameIndices = json['gameIndices'];
    final Iterable<GameIndices> gameIndicesList =
        gameIndices.map<GameIndices>((gameIndice) => GameIndices.fromJson(gameIndice));

    return gameIndicesList;
  }

  static Iterable<PokemonHeldItem> getHeldItems(Map<String, dynamic> json) {
    final Iterable<dynamic> gameIndices = json['gameIndices'];
    final Iterable<PokemonHeldItem> gameIndicesList =
        gameIndices.map<PokemonHeldItem>((gameIndice) => PokemonHeldItem.fromJson(gameIndice));

    return gameIndicesList;
  }

  // PokemonHeldItem


}
