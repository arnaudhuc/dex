import 'dart:convert';

import 'package:collection/collection.dart';

import 'package:dex/model/NamedApiResource.dart';

class PokeAPIRootTypes {
  final int count;
  final String? next;
  final String? previous;
  final List<NamedApiResource> results;
  PokeAPIRootTypes({
    required this.count,
    this.next,
    this.previous,
    required this.results,
  });

  PokeAPIRootTypes copyWith({
    int? count,
    String? next,
    String? previous,
    List<NamedApiResource>? results,
  }) {
    return PokeAPIRootTypes(
      count: count ?? this.count,
      next: next ?? this.next,
      previous: previous ?? this.previous,
      results: results ?? this.results,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'count': count,
      'next': next,
      'previous': previous,
      'results': results.map((x) => x.toMap()).toList(),
    };
  }

  factory PokeAPIRootTypes.fromMap(Map<String, dynamic> map) {
    return PokeAPIRootTypes(
      count: map['count'],
      next: map['next'],
      previous: map['previous'],
      results: List<NamedApiResource>.from(
          map['results']?.map((x) => NamedApiResource.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory PokeAPIRootTypes.fromJson(String source) =>
      PokeAPIRootTypes.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PokeAPIRootTypes(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is PokeAPIRootTypes &&
        other.count == count &&
        other.next == next &&
        other.previous == previous &&
        listEquals(other.results, results);
  }

  @override
  int get hashCode {
    return count.hashCode ^
        next.hashCode ^
        previous.hashCode ^
        results.hashCode;
  }
}
