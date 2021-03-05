import 'package:flutter/material.dart';

class StoryWidgets extends StatefulWidget {
  @override
  _StoryWidgetsState createState() => _StoryWidgetsState();
}

class _StoryWidgetsState extends State<StoryWidgets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Story(),
            Story(),
            Story(),
            Story(),
            Story(),
            Story(),
            Story(),
            Story(),
            Story(),
            Story(),
            Story(),
          ],
        ),
      ),
    );
  }
}

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 8.0),
      child: CircleAvatar(
        radius: 30.0,
        backgroundColor: Colors.white,
      ),
    );
  }
}
