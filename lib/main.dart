import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/Chats_page.dart';
import 'package:instagram_clone/Screen/ProfileScreen.dart';
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
  ValueNotifier _notifier = ValueNotifier(1);
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: SafeArea(
        bottom: false,
        child: Scaffold(
            backgroundColor: Colors.black,
            body: TabBarView(
              physics: AlwaysScrollableScrollPhysics(),
              children: <Widget>[
                camerascreen(cameras),
                Homepage(),
                ChatsPage(),
              ],
            ),
            bottomNavigationBar: BottomAppBar(
              color: Colors.black,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                height: h * 0.07,
                child: ValueListenableBuilder(
                  valueListenable: _notifier,
                  builder: (context, c, v) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        _notifier.value == 1
                            ? SvgPicture.asset(
                                "assets/icon/home.svg",
                                height: 25,
                                width: 25,
                              )
                            : GestureDetector(
                                onTap: () => _notifier.value = 1,
                                child: SvgPicture.asset(
                                  "assets/icon/home.svg",
                                  color: Colors.white,
                                  height: 25,
                                  width: 25,
                                ),
                              ),
                        _notifier.value == 2
                            ? SvgPicture.asset(
                                "assets/icon/loupe.svg",
                                color: Colors.yellow,
                                fit: BoxFit.cover,
                                height: 25,
                                width: 25,
                              )
                            : GestureDetector(
                                onTap: () => _notifier.value = 2,
                                child: SvgPicture.asset(
                                  "assets/icon/loupe.svg",
                                  color: Colors.white,
                                  fit: BoxFit.cover,
                                  height: 25,
                                  width: 25,
                                ),
                              ),
                        _notifier.value == 3
                            ? SvgPicture.asset(
                                "assets/icon/instagram-reels.svg",
                                height: 25,
                                width: 25,
                                fit: BoxFit.cover,
                                color: Colors.pinkAccent.shade100,
                              )
                            : GestureDetector(
                                onTap: () => _notifier.value = 3,
                                child: SvgPicture.asset(
                                  "assets/icon/instagram-reels.svg",
                                  height: 25,
                                  width: 25,
                                  color: Colors.white,
                                ),
                              ),
                        _notifier.value == 4
                            ? Icon(
                                FontAwesomeIcons.solidHeart,
                                color: Colors.redAccent,
                              )
                            : GestureDetector(
                                onTap: () => _notifier.value = 4,
                                child: Icon(
                                  FontAwesomeIcons.heart,
                                  color: Colors.white,
                                ),
                              ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfileScreen()));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              "https://wallpapercave.com/wp/wp6346889.png",
                              width: 40,
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            )),
      ),
    );
  }
}
