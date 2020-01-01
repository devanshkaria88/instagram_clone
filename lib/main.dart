import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Home Page.dart';
import 'package:instagram_clone/Chats_page.dart';
//import 'camera.dart';

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
              Container(color: Colors.green),
              Homepage(),
              ChatsPage(),
            ],
          ),
          bottomNavigationBar: BottomAppBar(
            color: Color(0xFF121212),
            child: Padding(
              padding: const EdgeInsets.only(left: 3.0, top: 10.0, bottom: 10.0, right: 3.0),
              child: Row(
                verticalDirection: VerticalDirection.down,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(CupertinoIcons.home, size: 35.0, color: Colors.white,),
                  Icon(CupertinoIcons.search, size: 35.0, color: Colors.white,),
                  Icon(Icons.add_box, size: 35.0, color: Colors.white,),
                  Image.asset('images/heart.png', color: Colors.white, height: 40.0, width: 40.0,),
                  Icon(Icons.account_circle, size: 35.0, color: Colors.white,),
                ],
              ),
            ),
          )
        ),
      ),
    );
  }
}
