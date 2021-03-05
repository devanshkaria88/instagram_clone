import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_clone/Chats_page.dart';

import 'camera.dart';
import 'post.dart';

List<CameraDescription> cameras;

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Widget> posts = [
    SizedBox(
      height: 10.0,
    ),
//    Stories(),
    SizedBox(
      height: 10.0,
    ),
    Container(
      height: 1.0,
      color: Colors.grey,
    ),
  ];

  void chatscreen() {
    Navigator.of(context).push(
      CupertinoPageRoute(builder: (context) {
        return ChatsPage();
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(w, 52),
        child: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          leading: GestureDetector(
            onTap: () async {
              cameras = await availableCameras();
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return camerascreen(cameras);
              }));
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 13),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Icon(
                    Icons.add_sharp,
                    size: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          title: Text(
            'Instagram',
            style: GoogleFonts.satisfy(
              fontSize: 30.0,
              fontWeight: FontWeight.w100,
            ),
          ),
          actions: <Widget>[
            SizedBox(
              width: 12.0,
            ),
            GestureDetector(
                onTap: chatscreen,
                child: Icon(
                  FontAwesomeIcons.facebookMessenger,
                  color: Colors.white,
                )),
            SizedBox(
              width: 15.0,
            ),
          ],
          elevation: 10.0,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: ListView(
          children: getlist(),
        ),
      ),
    );
  }

  List<Widget> getlist() {
    for (int i = 0; i < 20; i++) {
      posts.add(PostCard(num: i));
    }
    return posts;
  }
}
