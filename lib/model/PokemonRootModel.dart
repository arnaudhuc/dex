import 'package:dex/model/NamedApiResource.dart';

class PokeAPIRootTypes {
  final int count;
  final String? next;
  final String? previous;
  final Iterable<NamedApiResource> results;

  PokeAPIRootTypes({
    required this.count,
    this.next,
    this.previous,
    required this.results,
  });

  factory PokeAPIRootTypes.fromJson(Map<String, dynamic> json) {
    return PokeAPIRootTypes(
      count: json['count'],
      next: json['next'],
      previous: json['previous'],
      results: getResults(json),
    );
  }

  static Iterable<NamedApiResource> getResults(Map<String, dynamic> json) {
    final List<dynamic> results = json['results'];
    final Iterable<NamedApiResource> pokeApiResults =
        results.map<NamedApiResource>(getResult);

    return pokeApiResults;
  }

  static NamedApiResource getResult(dynamic result) =>
      NamedApiResource.fromJson(result);
}
