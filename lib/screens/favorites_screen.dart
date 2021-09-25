import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class FavoriteList extends StatelessWidget {

  final Set<WordPair> saved;

  const FavoriteList(this.saved, {Key? key}) : super(key: key);

  static const routeName = "/favorites";

  @override
  Widget build(BuildContext context) {

    // final args = ModalRoute.of(context)!.settings.arguments as FavoriteArguments;

    final tiles = saved.map((WordPair wordPair) {
      return ListTile(
          title: Text(
            wordPair.asPascalCase,
          ));
    });

    final divided = tiles.isNotEmpty
        ? ListTile.divideTiles(context: context, tiles: tiles).toList()
        : <Widget>[];

    return Scaffold(
        appBar: AppBar(
          title: const Text("Saved Suggestions"),
        ),
        body: ListView(children: divided));
  }
}

