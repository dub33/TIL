import 'package:flutter/material.dart';

class _ProfileState extends State<Profile> with AutomaticKeepAliveClientMixin<Profile> {
  @override 
  void initState() {
    super.initState();
    print('init Profile');
  }
  @override 
  Widget build(BuildContext context) {
    print('build Profile');
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text('Content of Profile',
        style: TextStyle(fontSize: 30)
        ),
      ),
    );
  }
  @override 
  bool get wantKeepAlive => true;
}

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

