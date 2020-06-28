import 'package:flutter/material.dart';
import './home.dart';
import './search.dart';
import './like.dart';
import './profile.dart';
import './addPhoto.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LikeInsta',
      home: 
        TabContainerBottom(),
    );
  }
}

class TabContainerBottomState extends State<TabContainerBottom> {
  int tabIndex = 0;
  List<Widget> listScreens;
  @override 
  void initState() {
    super.initState();
    listScreens = [
      Home(),
      Search(),
      AddPhoto(),
      Like(),
      Profile()
    ];
  }
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      color : Colors.red,
      home: Scaffold(
        body: listScreens[tabIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          backgroundColor: Theme.of(context).primaryColor,
          currentIndex: tabIndex,
          onTap: (int index) {
            setState(() {
              tabIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              title: Text('Add'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              title: Text('Favorite'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              title: Text('Profile'),
            ),
          ]),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}

class TabContainerBottom extends StatefulWidget {
  @override
  TabContainerBottomState createState() => TabContainerBottomState();
}