class PokeApiResults {
  final String name;
  final String url;

  PokeApiResults({
    required this.name,
    required this.url,
  });

  factory PokeApiResults.fromJson(Map<String, dynamic> json) {
    return PokeApiResults(
      name: json['name'],
      url: json['url'],
    );
  }
}

class PokeAPIRootTypes {
  final int count;
  final String? next;
  final String? previous;
  final List<dynamic> results;

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
      results: json['results'],
    );
  }
}
