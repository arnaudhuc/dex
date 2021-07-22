import 'dart:convert';

class NamedApiResource {
  String name;
  String url;
  NamedApiResource({
    required this.name,
    required this.url,
  });

  NamedApiResource copyWith({
    String? name,
    String? url,
  }) {
    return NamedApiResource(
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'url': url,
    };
  }

  factory NamedApiResource.fromMap(Map<String, dynamic> map) {
    return NamedApiResource(
      name: map['name'],
      url: map['url'],
    );
  }

  String toJson() => json.encode(toMap());

  factory NamedApiResource.fromJson(String source) =>
      NamedApiResource.fromMap(json.decode(source));

  @override
  String toString() => 'NamedApiResource(name: $name, url: $url)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NamedApiResource && other.name == name && other.url == url;
  }

  @override
  int get hashCode => name.hashCode ^ url.hashCode;
}
