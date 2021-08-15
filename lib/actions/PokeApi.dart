import 'package:dex/model/Pokemon.dart';
import 'package:dex/model/PokemonRootModel.dart';
import 'package:dex/model/Species.dart';
import 'package:http/http.dart' as http;

class PokeApi {
  Future<PokeAPIRootTypes> getAll(String generation) async {
    var url = Uri.parse(getGenerationUrl(generation));
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

String getGenerationUrl(String generation) {
  switch (generation) {
    case 'Kanto (1-151)':
      return 'https://pokeapi.co/api/v2/pokemon?limit=151';
    case 'Johto (152-251)':
      return 'https://pokeapi.co/api/v2/pokemon?limit=100&offset=151';
    case 'Hoenn (252-386)':
      return 'https://pokeapi.co/api/v2/pokemon?limit=135&offset=251';
    case 'Sinnoh (387-494)':
      return 'https://pokeapi.co/api/v2/pokemon?limit=108&offset=386';
    case 'Unova (495-649)':
      return 'https://pokeapi.co/api/v2/pokemon?limit=155&offset=494';
    case 'Kalos (650-721)':
      return 'https://pokeapi.co/api/v2/pokemon?limit=72&offset=649';
    case 'Alola (722-809)':
      return 'https://pokeapi.co/api/v2/pokemon?limit=88&offset=721';
    case 'Galar (810-898)':
      return 'https://pokeapi.co/api/v2/pokemon?limit=89&offset=809';
    default:
      return 'https://pokeapi.co/api/v2/pokemon?limit=151';
  }
}
