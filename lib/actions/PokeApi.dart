import 'package:dex/model/Pokemon.dart';
import 'package:dex/model/PokemonRootModel.dart';
import 'package:dex/model/Species.dart';
import 'package:http/http.dart' as http;

class PokeApi {
  Future<PokeAPIRootTypes> getAll() async {
    var url = Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=151');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return PokeAPIRootTypes.fromJson(response.body);
    } else {
      throw Exception('Failed to load pokemon');
    }
  }

  Future<Pokemon> getOne(String pokemonUrl) async {
    var url = Uri.parse(pokemonUrl);
    final response =
        await http.get(url, headers: {'Accept': 'application/json'});
    if (response.statusCode == 200) {
      return Pokemon.fromJson(response.body);
    } else {
      throw Exception('Failed to load pokemon');
    }
  }

  Future<Species> getSpecies(String speciesUrl) async {
    var url = Uri.parse(speciesUrl);
    final response =
        await http.get(url, headers: {'Accept': 'application/json'});
    if (response.statusCode == 200) {
      return Species.fromJson(response.body);
    } else {
      throw Exception('Failed to load pokemon');
    }
  }
}
