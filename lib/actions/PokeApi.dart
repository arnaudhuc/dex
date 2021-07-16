import 'package:dex/model/PokemonRootModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PokeApi {
  Future<PokeAPIRootTypes> getAll() async {
    var url = Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=151');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return PokeAPIRootTypes.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
