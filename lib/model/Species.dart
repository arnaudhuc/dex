import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:dex/model/EvolutionChain.dart';
import 'package:dex/model/FlavorTextEntrie.dart';
import 'package:dex/model/Genera.dart';
import 'package:dex/model/Name.dart';
import 'package:dex/model/NamedApiResource.dart';
import 'package:dex/model/PalParkEncounter.dart';
import 'package:dex/model/PokedexNumber.dart';
import 'package:dex/model/Variete.dart';

class Species {
  final int baseHappiness;
  final int captureRate;
  final NamedApiResource color;
  final List<NamedApiResource> eggGroups;
  final EvolutionChain evolutionChain;
  final List<FlavorTextEntrie> flavorTextEntries;
  final List<dynamic> formDescriptions;
  final bool formsSwitchable;
  final int genderRate;
  final List<Genera> genera;
  final NamedApiResource generation;
  final NamedApiResource growthRate;
  final NamedApiResource habitat;
  final bool hasGenderDifferences;
  final int hatchCounter;
  final int id;
  final bool isBaby;
  final bool isLegendary;
  final bool isMythical;
  final String name;
  final List<Name> names;
  final int order;
  final List<PalParkEncounter> palParkEncounters;
  final List<PokedexNumber> pokedexNumbers;
  final NamedApiResource shape;
  final List<Varietie> varieties;
  Species({
    required this.baseHappiness,
    required this.captureRate,
    required this.color,
    required this.eggGroups,
    required this.evolutionChain,
    required this.flavorTextEntries,
    required this.formDescriptions,
    required this.formsSwitchable,
    required this.genderRate,
    required this.genera,
    required this.generation,
    required this.growthRate,
    required this.habitat,
    required this.hasGenderDifferences,
    required this.hatchCounter,
    required this.id,
    required this.isBaby,
    required this.isLegendary,
    required this.isMythical,
    required this.name,
    required this.names,
    required this.order,
    required this.palParkEncounters,
    required this.pokedexNumbers,
    required this.shape,
    required this.varieties,
  });

  Species copyWith({
    int? baseHappiness,
    int? captureRate,
    NamedApiResource? color,
    List<NamedApiResource>? eggGroups,
    EvolutionChain? evolutionChain,
    NamedApiResource? evolvesFromSpecies,
    List<FlavorTextEntrie>? flavorTextEntries,
    List<dynamic>? formDescriptions,
    bool? formsSwitchable,
    int? genderRate,
    List<Genera>? genera,
    NamedApiResource? generation,
    NamedApiResource? growthRate,
    NamedApiResource? habitat,
    bool? hasGenderDifferences,
    int? hatchCounter,
    int? id,
    bool? isBaby,
    bool? isLegendary,
    bool? isMythical,
    String? name,
    List<Name>? names,
    int? order,
    List<PalParkEncounter>? palParkEncounters,
    List<PokedexNumber>? pokedexNumbers,
    NamedApiResource? shape,
    List<Varietie>? varieties,
  }) {
    return Species(
      baseHappiness: baseHappiness ?? this.baseHappiness,
      captureRate: captureRate ?? this.captureRate,
      color: color ?? this.color,
      eggGroups: eggGroups ?? this.eggGroups,
      evolutionChain: evolutionChain ?? this.evolutionChain,
      flavorTextEntries: flavorTextEntries ?? this.flavorTextEntries,
      formDescriptions: formDescriptions ?? this.formDescriptions,
      formsSwitchable: formsSwitchable ?? this.formsSwitchable,
      genderRate: genderRate ?? this.genderRate,
      genera: genera ?? this.genera,
      generation: generation ?? this.generation,
      growthRate: growthRate ?? this.growthRate,
      habitat: habitat ?? this.habitat,
      hasGenderDifferences: hasGenderDifferences ?? this.hasGenderDifferences,
      hatchCounter: hatchCounter ?? this.hatchCounter,
      id: id ?? this.id,
      isBaby: isBaby ?? this.isBaby,
      isLegendary: isLegendary ?? this.isLegendary,
      isMythical: isMythical ?? this.isMythical,
      name: name ?? this.name,
      names: names ?? this.names,
      order: order ?? this.order,
      palParkEncounters: palParkEncounters ?? this.palParkEncounters,
      pokedexNumbers: pokedexNumbers ?? this.pokedexNumbers,
      shape: shape ?? this.shape,
      varieties: varieties ?? this.varieties,
    );
  }

  factory Species.fromMap(Map<String, dynamic> map) {
    return Species(
      baseHappiness: map['base_happiness'],
      captureRate: map['capture_rate'],
      color: NamedApiResource.fromMap(map['color']),
      eggGroups: List<NamedApiResource>.from(
          map['egg_groups']?.map((x) => NamedApiResource.fromMap(x))),
      evolutionChain: EvolutionChain.fromMap(map['evolution_chain']),
      flavorTextEntries: List<FlavorTextEntrie>.from(
          map['flavor_text_entries']?.map((x) => FlavorTextEntrie.fromMap(x))),
      formDescriptions: List<dynamic>.from(map['form_descriptions']),
      formsSwitchable: map['forms_switchable'],
      genderRate: map['gender_rate'],
      genera: List<Genera>.from(map['genera']?.map((x) => Genera.fromMap(x))),
      generation: NamedApiResource.fromMap(map['generation']),
      growthRate: NamedApiResource.fromMap(map['growth_rate']),
      habitat: NamedApiResource.fromMap(map['habitat']),
      hasGenderDifferences: map['has_gender_differences'],
      hatchCounter: map['hatch_counter'],
      id: map['id'],
      isBaby: map['is_baby'],
      isLegendary: map['is_legendary'],
      isMythical: map['is_mythical'],
      name: map['name'],
      names: List<Name>.from(map['names']?.map((x) => Name.fromMap(x))),
      order: map['order'],
      palParkEncounters: List<PalParkEncounter>.from(
          map['pal_park_encounters']?.map((x) => PalParkEncounter.fromMap(x))),
      pokedexNumbers: List<PokedexNumber>.from(
          map['pokedex_numbers']?.map((x) => PokedexNumber.fromMap(x))),
      shape: NamedApiResource.fromMap(map['shape']),
      varieties: List<Varietie>.from(
          map['varieties']?.map((x) => Varietie.fromMap(x))),
    );
  }

  factory Species.fromJson(String source) =>
      Species.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Species(baseHappiness: $baseHappiness, captureRate: $captureRate, color: $color, eggGroups: $eggGroups, evolutionChain: $evolutionChain, flavorTextEntries: $flavorTextEntries, formDescriptions: $formDescriptions, formsSwitchable: $formsSwitchable, genderRate: $genderRate, genera: $genera, generation: $generation, growthRate: $growthRate, habitat: $habitat, hasGenderDifferences: $hasGenderDifferences, hatchCounter: $hatchCounter, id: $id, isBaby: $isBaby, isLegendary: $isLegendary, isMythical: $isMythical, name: $name, names: $names, order: $order, palParkEncounters: $palParkEncounters, pokedexNumbers: $pokedexNumbers, shape: $shape, varieties: $varieties)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Species &&
        other.baseHappiness == baseHappiness &&
        other.captureRate == captureRate &&
        other.color == color &&
        listEquals(other.eggGroups, eggGroups) &&
        other.evolutionChain == evolutionChain &&
        listEquals(other.flavorTextEntries, flavorTextEntries) &&
        listEquals(other.formDescriptions, formDescriptions) &&
        other.formsSwitchable == formsSwitchable &&
        other.genderRate == genderRate &&
        listEquals(other.genera, genera) &&
        other.generation == generation &&
        other.growthRate == growthRate &&
        other.habitat == habitat &&
        other.hasGenderDifferences == hasGenderDifferences &&
        other.hatchCounter == hatchCounter &&
        other.id == id &&
        other.isBaby == isBaby &&
        other.isLegendary == isLegendary &&
        other.isMythical == isMythical &&
        other.name == name &&
        listEquals(other.names, names) &&
        other.order == order &&
        listEquals(other.palParkEncounters, palParkEncounters) &&
        listEquals(other.pokedexNumbers, pokedexNumbers) &&
        other.shape == shape &&
        listEquals(other.varieties, varieties);
  }

  @override
  int get hashCode {
    return baseHappiness.hashCode ^
        captureRate.hashCode ^
        color.hashCode ^
        eggGroups.hashCode ^
        evolutionChain.hashCode ^
        flavorTextEntries.hashCode ^
        formDescriptions.hashCode ^
        formsSwitchable.hashCode ^
        genderRate.hashCode ^
        genera.hashCode ^
        generation.hashCode ^
        growthRate.hashCode ^
        habitat.hashCode ^
        hasGenderDifferences.hashCode ^
        hatchCounter.hashCode ^
        id.hashCode ^
        isBaby.hashCode ^
        isLegendary.hashCode ^
        isMythical.hashCode ^
        name.hashCode ^
        names.hashCode ^
        order.hashCode ^
        palParkEncounters.hashCode ^
        pokedexNumbers.hashCode ^
        shape.hashCode ^
        varieties.hashCode;
  }
}
