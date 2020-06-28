import 'package:flutter/material.dart';

class _AddPhotoState extends State<AddPhoto> with AutomaticKeepAliveClientMixin<AddPhoto> {
  @override 
  void initState() {
    super.initState();
    print('init AddPhoto');
  }
  @override 
  Widget build(BuildContext context) {
    print('build AddPhoto');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('AddPhoto'),
      ),
      body: Center(
        child: Text('Content of AddPhoto',
        style: TextStyle(fontSize: 30)
        ),
      ),
    );
  }
  @override 
  bool get wantKeepAlive => true;
}

class AddPhoto extends StatefulWidget {
  @override
  _AddPhotoState createState() => _AddPhotoState();
}

