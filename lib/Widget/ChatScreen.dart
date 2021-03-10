import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/Widget/chatbubbles.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  var randomizer = new Random();

  ChatBubbles _chatbubbles = new ChatBubbles();

  ColorFiltered _dumpspace(height) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(Colors.black, BlendMode.values[7]),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: height,
        color: Colors.transparent,
      ),
    );
  }

  List<Widget> _chatmulticolorbubbles() {
    List<Widget> list = [];

    list.add(_dumpspace(10.0));
    ColorFiltered _chatbubble(_ismine, _issame) {
      var width =
          (randomizer.nextInt(MediaQuery.of(context).size.width.toInt() - 200) +
                  40)
              .toDouble();

      return ColorFiltered(
        colorFilter: ColorFilter.mode(
            Colors.black, _ismine ? BlendMode.values[4] : BlendMode.values[7]),
        child: Container(
          width: MediaQuery.of(context).size.width,
          alignment: _ismine ? Alignment.centerLeft : Alignment.centerRight,
          color: Colors.transparent,
          child: Container(
            width:
                width > 300 ? 300 - randomizer.nextInt(150).toDouble() : width,
            height: 30,
            //height: randomizer.nextInt(5) == 1 ? 80 : 40,
            margin: EdgeInsets.only(top: _issame ? 5 : 15, right: 10, left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.grey.withOpacity(0.5),
            ),
          ),
        ),
      );
    }

    for (var i = 1; i < 100; i++) {
      if (_chatbubbles.ismine[i] == true)
        _chatbubbles.ismine[i - 1]
            ? list.add(_chatbubble(true, true))
            : list.add(_chatbubble(true, false));
      else
        _chatbubbles.ismine[i - 1]
            ? list.add(_chatbubble(false, false))
            : list.add(_chatbubble(false, true));
    }

    list.add(_dumpspace(50.0));

    return list;
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              width: w * 0.95,
              height: h * 0.1,
              color: Colors.black,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_back_sharp,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.transparent,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        "https://wallpapercave.com/wp/wp4540682.jpg",
                        fit: BoxFit.cover,
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "jeel_bhatti",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          CupertinoIcons.video_camera,
                          size: 35,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          CupertinoIcons.info,
                          size: 25,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.pinkAccent,
                          Colors.deepPurpleAccent,
                          Colors.lightBlue,
                        ],
                      ),
                    ),
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.pinkAccent,
                              Colors.deepPurpleAccent,
                              Colors.lightBlue,
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          alignment: Alignment.topCenter,
                          width: MediaQuery.of(context).size.width,
                          child: SingleChildScrollView(
                            physics: ClampingScrollPhysics(),
                            child: Column(
                              children: _chatmulticolorbubbles(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
