import 'package:flutter/material.dart';

class _LikeState extends State<Like> with AutomaticKeepAliveClientMixin<Like> {
  @override 
  void initState() {
    super.initState();
    print('init Like');
  }
  @override 
  Widget build(BuildContext context) {
    print('build Like');
    return Scaffold(
      appBar: AppBar(
        title: Text('Like'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text('Content of Like',
        style: TextStyle(fontSize: 30)
        ),
      ),
    );
  }
  @override 
  bool get wantKeepAlive => true;
}

class Like extends StatefulWidget {
  @override
  _LikeState createState() => _LikeState();
}

