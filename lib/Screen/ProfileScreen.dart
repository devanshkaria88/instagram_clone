import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/main.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ValueNotifier _notifier = ValueNotifier(5);
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "jeel_bhatti",
                      style: TextStyle(color: Colors.white, fontSize: 23),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                      size: 19,
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 13),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Icon(
                            Icons.add_sharp,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.menu_rounded,
                      color: Colors.white,
                      size: 27,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: _notifier,
        builder: (context, c, v) {
          return DefaultTabController(
            length: 5,
            child: Container(
              color: Colors.black,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                verticalDirection: VerticalDirection.up,
                children: [
                  _notifier.value == 1
                      ? SvgPicture.asset(
                          "assets/icon/home.svg",
                          height: 25,
                          width: 25,
                        )
                      : GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyHomePage()));
                          },
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
                      : SvgPicture.asset(
                          "assets/icon/loupe.svg",
                          color: Colors.white,
                          fit: BoxFit.cover,
                          height: 25,
                          width: 25,
                        ),
                  _notifier.value == 3
                      ? SvgPicture.asset(
                          "assets/icon/instagram-reels.svg",
                          height: 25,
                          width: 25,
                          fit: BoxFit.cover,
                          color: Colors.pinkAccent.shade100,
                        )
                      : SvgPicture.asset(
                          "assets/icon/instagram-reels.svg",
                          height: 25,
                          width: 25,
                          color: Colors.white,
                        ),
                  _notifier.value == 4
                      ? Icon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.redAccent,
                        )
                      : Icon(
                          FontAwesomeIcons.heart,
                          color: Colors.white,
                        ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileScreen()));
                    },
                    child: Container(
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          "https://wallpapercave.com/wp/wp6346889.png",
                          width: 25,
                          height: 25,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
