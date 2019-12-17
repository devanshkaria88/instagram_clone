import 'package:flutter/material.dart';
import 'post.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<PostCard> posts = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: getlist(),
      ),
    );
  }
  List<PostCard> getlist() {
    for (int i = 0; i<20; i++) {
      posts.add(PostCard());
    }
    return posts;
  }
}
