import 'package:dex/actions/PokeApi.dart';
import 'package:dex/types/PokeAPITypes.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final pokeApi = new PokeApi();

  @override
  void initState() {
    super.initState();
    final pokeApi = new PokeApi();
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
          print(snapshot);
          if (snapshot.hasData) {
            return Text("${snapshot.data!.results[0]}");
          } else if (snapshot.hasError) {
            print('error');
            return Text("${snapshot.error}");
          }

          // By default, show a loading spinner.
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
