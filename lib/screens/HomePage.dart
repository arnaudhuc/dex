import 'package:dex/actions/PokeApi.dart';
import 'package:dex/components/PokemonCard.dart';
import 'package:dex/model/PokemonRootModel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pokeApi = new PokeApi();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future<PokeAPIRootTypes> getAll = pokeApi.getAll();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder<PokeAPIRootTypes>(
        future: getAll,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SingleChildScrollView(
              child: Center(
                child: Wrap(
                  children: snapshot.data!.results
                      .map((pokemon) => PokemonCard(pokemon: pokemon))
                      .toList(),
                ),
              ),
            );
          } else if (snapshot.hasError) {
            print(snapshot.stackTrace);
            print(snapshot.error);
            return Text("ERROR : ${snapshot.error}");
          }

          // By default, show a loading spinner.
          return CircularProgressIndicator();
        },
      ),
    );
  }
}