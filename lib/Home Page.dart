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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF121212),
        leading: Icon(Icons.camera_alt,),
        title: Text('Instagram', style: GoogleFonts.satisfy(fontSize: 30.0, fontWeight: FontWeight.w100,),),
        actions: <Widget>[
          Icon(Icons.live_tv),
          SizedBox(width: 12.0,),
          IconButton(icon: Icon(Icons.near_me), onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ChatsPage()));}),
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
