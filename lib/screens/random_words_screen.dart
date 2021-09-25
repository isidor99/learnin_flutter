import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

import 'package:startup_namer/screens/favorites_screen.dart';

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  static const routeName = "/random";

  @override
  _RandomScreenState createState() => _RandomScreenState();
}

class _RandomScreenState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _saved = <WordPair>{};
  final _myFont = const TextStyle(fontSize: 18.0);

  //
  void _pushSaved() {
    Navigator.pushNamed(context, FavoriteList.routeName, arguments: _saved);
  }

  //
  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) {
            return const Divider();
          }

          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }

          return _buildRow(_suggestions[index]);
        });
  }

  //
  Widget _buildRow(WordPair wordPair) {
    final _alreadySaved = _saved.contains(wordPair);

    return ListTile(
      title: Text(wordPair.asPascalCase, style: _myFont),
      trailing: IconButton(
        icon: Icon(
          _alreadySaved ? Icons.favorite : Icons.favorite_border,
          color: _alreadySaved ? Colors.red : null,
        ),
        onPressed: () {
          setState(() {
            if (_alreadySaved) {
              _saved.remove(wordPair);
            } else {
              _saved.add(wordPair);
            }
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Words Generator"),
        actions: [
          IconButton(
            icon: const Icon(Icons.list),
            onPressed: _pushSaved,
          ),
        ],
      ),
      body: _buildSuggestions(),
    );
  }
}
