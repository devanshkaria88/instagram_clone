import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'circleStory.dart';

class StoryWidgets extends StatefulWidget {
  @override
  _StoryWidgetsState createState() => _StoryWidgetsState();
}

class _StoryWidgetsState extends State<StoryWidgets> {
  ScrollController _scrollController = new ScrollController(
    initialScrollOffset: 20.0,
    keepScrollOffset: true,
  );
  List<Widget> storyList = [
    Story(
      image: "https://wallpapercave.com/wp/wp6346889.png",
      story: false,
    ),
    Story(
      image: "https://wallpapercave.com/wp/wp6347161.jpg",
      story: true,
    ),
    Story(image: "https://wallpapercave.com/wp/wp6347192.png", story: true),
    Story(image: "https://wallpapercave.com/wp/wp2641786.jpg", story: true),
    Story(image: "https://wallpapercave.com/wp/wp2976744.jpg", story: true),
    Story(image: "https://wallpapercave.com/wp/wp2976756.jpg", story: true),
    Story(image: "https://wallpapercave.com/wp/wp6347192.png", story: false),
    Story(image: "https://wallpapercave.com/wp/wp2641786.jpg", story: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.topStart,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: storyList,
        ),
      ),
    );
  }
}
