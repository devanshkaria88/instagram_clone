import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/Chats_page.dart';
import 'package:instagram_clone/camera.dart';

import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                camerascreen(cameras),
                Homepage(),
                ChatsPage(),
              ],
            ),
            bottomNavigationBar: BottomAppBar(
              color: Color(0xFF121212),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 3.0, top: 10.0, bottom: 10.0, right: 3.0),
                child: Row(
                  verticalDirection: VerticalDirection.down,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.home,
                      size: 30.0,
                      color: Colors.white,
                    ),
                    Icon(
                      CupertinoIcons.search,
                      size: 30.0,
                      color: Colors.white,
                    ),
                    SvgPicture.asset(
                      "assets/icon/instagram-reels.svg",
                      height: 25,
                      width: 25,
                      color: Colors.white,
                    ),
                    Icon(
                      FontAwesomeIcons.heart,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.account_circle,
                      size: 30.0,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
