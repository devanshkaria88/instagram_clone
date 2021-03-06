import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/Chats_page.dart';
import 'package:instagram_clone/Widget/StoryWidgets.dart';
import 'package:instagram_clone/post.dart';

import 'camera.dart';

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

  List<Map<String, dynamic>> allPosts = [
    {
      "user_name": "Jeel Bhatti",
      "user_profile_image": "https://wallpapercave.com/wp/wp4540682.jpg",
      "post_image": "https://wallpapercave.com/wp/wp4540707.jpg",
      "likes": '10M',
      "location": "Rajkot Gujarat",
      "caption": "No Caption"
    },
    {
      "user_name": "KD Chavda",
      "user_profile_image":
          "https://images.unsplash.com/photo-1474552226712-ac0f0961a954?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80",
      "post_image": "https://wallpapercave.com/wp/wp3350815.jpg",
      "likes": '10,000',
      "location": "Junagadh Gujarat",
      "caption": "No Caption"
    },
    {
      "user_name": "Mark",
      "user_profile_image":
          "https://images.unsplash.com/photo-1463453091185-61582044d556?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
      "post_image": "https://wallpapercave.com/wp/wp4540685.jpg",
      "likes": '10,000',
      "location": "Africa",
      "caption": "No Caption"
    },
    {
      "user_name": "John",
      "user_profile_image": "https://wallpapercave.com/wp/wp4540682.jpg",
      "post_image": "https://wallpapercave.com/wp/wp7912627.png",
      "likes": '10,000',
      "location": "New York, USA",
      "caption": "No Caption"
    },
    {
      "user_name": "Lester",
      "user_profile_image":
          "https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZSUyMG1hbnxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=500&q=60",
      "post_image": "https://wallpapercave.com/wp/wp3274368.jpg",
      "likes": '10,000',
      "location": "USA",
      "caption": "No Caption"
    },
    {
      "user_name": "Michel",
      "user_profile_image":
          "https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=731&q=80",
      "post_image": "https://wallpapercave.com/wp/wp4041550.jpg",
      "likes": '10,000',
      "location": "UK",
      "caption": "No Caption"
    },
  ];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
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
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/icon/instagram.svg",
                width: w * 0.3,
                color: Colors.white,
              ),
            ],
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 10.0),
              child: StoryWidgets(),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 7.0, vertical: 10),
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: allPosts.length,
                  itemBuilder: (context, v) {
                    return PostCard(
                      userName: allPosts[v]['user_name'],
                      userImage: allPosts[v]['user_profile_image'],
                      postImage: allPosts[v]['post_image'],
                      totalLikes: allPosts[v]['likes'],
                      location: allPosts[v]['location'],
                      caption: allPosts[v]['caption'],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
