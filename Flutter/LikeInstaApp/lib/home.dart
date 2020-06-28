import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class _HomeState extends State<Home> with AutomaticKeepAliveClientMixin<Home> {
  @override 
  void initState() {
    super.initState();
    print('init home');
  }
  @override 
  Widget build(BuildContext context) {
    print('build home');
    return Scaffold(
      appBar: AppBar(
        title: Text('Like Insta'),
        backgroundColor: Colors.black,
        leading: Icon(Icons.photo_camera),
        actions: <Widget>[
          IconButton(
            alignment: Alignment.centerRight,
            icon: Icon(Icons.send),
            onPressed: () => {},
            )
        ],
      ),
      body: RandomWords(),
    );
  }
  @override 
  bool get wantKeepAlive => true;
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _saved = Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0);

  Widget _buildSuggestions() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();

        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      }
    );
  }

  Widget _buildRow(WordPair pair) {
    final alreadySaved = _saved.contains(pair);
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildSuggestions(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}
