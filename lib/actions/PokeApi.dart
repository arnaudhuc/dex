import 'package:dex/model/Pokemon.dart';
import 'package:dex/model/PokemonRootModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PokeApi {
  Future<PokeAPIRootTypes> getAll() async {
    var url = Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=151');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return PokeAPIRootTypes.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load pokemon');
    }
  }

  Future<Pokemon> getOne(int number) async {
    var url = Uri.parse('https://pokeapi.co/api/v2/pokemon/$number');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return Pokemon.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load pokemon');
    }
  }
}
