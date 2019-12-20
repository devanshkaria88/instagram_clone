import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Home Page.dart';
import 'package:instagram_clone/Chats_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.black,
          body: TabBarView(
            children: <Widget>[
              Container(color: Colors.green,),
              Homepage(),
              ChatsPage(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                backgroundColor: Color(0xFF121212),
                title: Text(''),
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFF121212),
                title: Text(''),
                icon: Icon(Icons.search),
              ),
              BottomNavigationBarItem(
                backgroundColor: Color(0xFF121212),
                title: Text(''),
                icon: Icon(Icons.add_box),
              ),
              BottomNavigationBarItem(
                backgroundColor: Color(0xFF121212),
                title: Text(''),
                icon: Icon(Icons.alternate_email),
              ),
              BottomNavigationBarItem(
                backgroundColor: Color(0xFF121212),
                title: Text(''),
                icon: Icon(Icons.account_circle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
