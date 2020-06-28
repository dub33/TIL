import 'package:flutter/material.dart';

class _SearchState extends State<Search> with AutomaticKeepAliveClientMixin<Search> {
  @override 
  void initState() {
    super.initState();
    print('init Search');
  }
  @override 
  Widget build(BuildContext context) {
    print('build Search');
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text('Content of Search',
        style: TextStyle(fontSize: 30)
        ),
      ),
    );
  }
  @override 
  bool get wantKeepAlive => true;
}

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

