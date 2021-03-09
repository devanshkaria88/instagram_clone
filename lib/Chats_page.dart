import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/file/ChatPage.dart';

import 'home_page.dart';

class ChatsPage extends StatefulWidget {
  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage>
    with SingleTickerProviderStateMixin {
  void back() {
    Navigator.of(context).push(
      CupertinoPageRoute(builder: (context) {
        return Homepage();
      }),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () => Navigator.pop(context)),
          title: Title(
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Text('jeel_bhatti'),
                  Icon(Icons.keyboard_arrow_down)
                ],
              )),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                text: 'Chats',
              ),
              Tab(
                text: 'Room',
              ),
            ],
          ),
          actions: <Widget>[
            GestureDetector(
              child: Center(
                child: Icon(
                  CupertinoIcons.video_camera,
                  size: 40,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                print('camera tapped');
              },
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              child: Icon(
                FontAwesomeIcons.edit,
                color: Colors.white,
                size: 22,
              ),
              onTap: () {
                print('camera tapped');
              },
            ),
            SizedBox(
              width: 10.0,
            ),
          ],
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [ChatPage(), RoomPage()],
        ),
      ),
    );
  }
}

class RoomPage extends StatefulWidget {
  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      height: h,
      color: Colors.black,
      width: w,
      padding: EdgeInsets.only(bottom: h * 0.2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(child: Image.asset('assets/icon/icons8-video-call-96.png')),
          Container(
            width: w * 0.4,
            child: Text(
              "Video Chat With anyone",
              style: TextStyle(color: Colors.white, fontSize: 21),
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: w * 0.5,
            child: Text(
              "Invite up to 50 people to join a video chat, even if they don't have Instagram or Messenger.",
              maxLines: 3,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          FlatButton(
            onPressed: () {
              print('Create Room');
            },
            child: Text(
              "Create Room",
              style: TextStyle(color: Colors.blue),
            ),
          )
        ],
      ),
    );
  }
}
