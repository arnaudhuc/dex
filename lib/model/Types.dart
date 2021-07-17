import 'package:dex/model/NamedApiResource.dart';

class Types {
  int slot;
  NamedApiResource type;

  Types({
    required this.slot,
    required this.type,
  });

  factory Types.fromJson(Map<String, dynamic> json) {
    return Types(
      slot: json['slot'],
      type: NamedApiResource.fromJson(json['type']),
    );
  }
}
