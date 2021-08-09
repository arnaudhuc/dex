import 'dart:convert';

import 'package:collection/collection.dart';

import 'Abilities.dart';
import 'GameIndice.dart';
import 'Generations/GenerationVIII.dart';
import 'Move.dart';
import 'NamedApiResource.dart';
import 'Sprites.dart';

class Pokemon {
  final List<Abilities> abilities;
  final int baseExperience;
  final List<NamedApiResource> forms;
  final List<GameIndice> gameIndices;
  final int height;
  final List<dynamic> heldItems;
  final int id;
  final bool isDefault;
  final String locationAreaEncounters;
  final List<Move> moves;
  final String name;
  final int order;
  final List<dynamic> pastTypes;
  final NamedApiResource species;
  final Sprites sprites;
  final List<Stat> stats;
  final List<Types> types;
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

  Pokemon copyWith({
    List<Abilities>? abilities,
    int? baseExperience,
    Iterable<NamedApiResource>? forms,
    List<GameIndice>? gameIndices,
    int? height,
    List<dynamic>? heldItems,
    int? id,
    bool? isDefault,
    String? locationAreaEncounters,
    List<Move>? moves,
    String? name,
    int? order,
    List<dynamic>? pastTypes,
    NamedApiResource? species,
    Sprites? sprites,
    List<Stat>? stats,
    List<Types>? types,
    int? weight,
  }) {
    return Pokemon(
      abilities: abilities ?? this.abilities,
      baseExperience: baseExperience ?? this.baseExperience,
      forms: this.forms,
      gameIndices: gameIndices ?? this.gameIndices,
      height: height ?? this.height,
      heldItems: heldItems ?? this.heldItems,
      id: id ?? this.id,
      isDefault: isDefault ?? this.isDefault,
      locationAreaEncounters:
          locationAreaEncounters ?? this.locationAreaEncounters,
      moves: moves ?? this.moves,
      name: name ?? this.name,
      order: order ?? this.order,
      pastTypes: pastTypes ?? this.pastTypes,
      species: species ?? this.species,
      sprites: sprites ?? this.sprites,
      stats: stats ?? this.stats,
      types: types ?? this.types,
      weight: weight ?? this.weight,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'abilities': abilities.map((x) => x.toMap()).toList(),
      'base_experience': baseExperience,
      'forms': forms,
      'game_indices': gameIndices.map((x) => x.toMap()).toList(),
      'height': height,
      'held_items': heldItems,
      'id': id,
      'is_default': isDefault,
      'location_area_encounters': locationAreaEncounters,
      'moves': moves.map((x) => x.toMap()).toList(),
      'name': name,
      'order': order,
      'past_types': pastTypes,
      'species': species,
      'sprites': sprites.toMap(),
      'stats': stats.map((x) => x.toMap()).toList(),
      'types': types.map((x) => x.toMap()).toList(),
      'weight': weight,
    };
  }

  // repomnse[]

  factory Pokemon.fromMap(Map<String, dynamic> map) {
    return Pokemon(
      abilities: List<Abilities>.from(
          map['abilities']?.map((x) => Abilities.fromMap(x))),
      baseExperience: map['base_experience'],
      forms: map['forms'].map<NamedApiResource>((form) {
        return NamedApiResource.fromMap(form);
      }).toList(),
      gameIndices: List<GameIndice>.from(
          map['game_indices']?.map((x) => GameIndice.fromMap(x))),
      height: map['height'],
      heldItems: List<dynamic>.from(map['held_items']),
      id: map['id'],
      isDefault: map['is_default'],
      locationAreaEncounters: map['location_area_encounters'],
      moves: List<Move>.from(map['moves']?.map((x) => Move.fromMap(x))),
      name: map['name'],
      order: map['order'],
      pastTypes: List<dynamic>.from(map['past_types']),
      species: NamedApiResource.fromMap(map['species']),
      sprites: Sprites.fromMap(map['sprites']),
      stats: List<Stat>.from(map['stats']?.map((x) => Stat.fromMap(x))),
      types: List<Types>.from(map['types']?.map((x) => Types.fromMap(x))),
      weight: map['weight'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Pokemon.fromJson(String source) =>
      Pokemon.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Pokemon(abilities: $abilities, base_experience: $baseExperience, forms: $forms, game_indices: $gameIndices, height: $height, held_items: $heldItems, id: $id, is_default: $isDefault, location_area_encounters: $locationAreaEncounters, moves: $moves, name: $name, order: $order, past_types: $pastTypes, species: $species, sprites: $sprites, stats: $stats, types: $types, weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is Pokemon &&
        listEquals(other.abilities, abilities) &&
        other.baseExperience == baseExperience &&
        listEquals(other.forms, forms) &&
        listEquals(other.gameIndices, gameIndices) &&
        other.height == height &&
        listEquals(other.heldItems, heldItems) &&
        other.id == id &&
        other.isDefault == isDefault &&
        other.locationAreaEncounters == locationAreaEncounters &&
        listEquals(other.moves, moves) &&
        other.name == name &&
        other.order == order &&
        listEquals(other.pastTypes, pastTypes) &&
        other.species == species &&
        other.sprites == sprites &&
        listEquals(other.stats, stats) &&
        listEquals(other.types, types) &&
        other.weight == weight;
  }

  @override
  int get hashCode {
    return abilities.hashCode ^
        baseExperience.hashCode ^
        forms.hashCode ^
        gameIndices.hashCode ^
        height.hashCode ^
        heldItems.hashCode ^
        id.hashCode ^
        isDefault.hashCode ^
        locationAreaEncounters.hashCode ^
        moves.hashCode ^
        name.hashCode ^
        order.hashCode ^
        pastTypes.hashCode ^
        species.hashCode ^
        sprites.hashCode ^
        stats.hashCode ^
        types.hashCode ^
        weight.hashCode;
  }
}
