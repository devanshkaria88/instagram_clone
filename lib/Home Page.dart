import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'post.dart';
import 'story.dart';
import 'package:instagram_clone/Chats_page.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Widget> posts = [
    SizedBox(height: 10.0,),
//    Stories(),
    SizedBox(height: 10.0,),
    Container(height: 1.0, color: Colors.grey,),
  ];

  void chatscreen() {
    Navigator.of(context).push(CupertinoPageRoute(builder: (context) {return ChatsPage();}
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF121212),
        leading: GestureDetector(child: Image.asset('images/camera.png', color: Colors.white, height: 20.0, width: 20.0,), onTap: (){},),
        title: Text('Instagram', style: GoogleFonts.satisfy(fontSize: 30.0, fontWeight: FontWeight.w100,),),
        actions: <Widget>[
          Image.asset('images/igtv.png', color: Colors.white, height: 30.0, width: 30.0,),
          SizedBox(width: 12.0,),
          GestureDetector(
            onTap: chatscreen,
              child: Image.asset('images/send.png',color: Colors.white, height: 27.0, width: 27.0,)
          ),
          SizedBox(width: 15.0,),
        ],
        elevation: 10.0,
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
    for (int i = 0; i<20; i++) {
      posts.add(PostCard(num: i));
    }
    return posts;
  }
}
