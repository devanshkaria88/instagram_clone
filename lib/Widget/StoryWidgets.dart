import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

class Story extends StatelessWidget {
  String image;
  bool story;
  Story({@required this.image, @required this.story});
  @override
  Widget build(BuildContext context) {
    return story
        ? Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  const Color(0xFF8a3ab9),
                  const Color(0xFFe95950),
                  const Color(0xFFbc2a8d),
                  const Color(0xFFfccc63),
                  const Color(0xFFfbad50),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 0.3, 0.4, 0.9, 1.0],
                tileMode: TileMode.clamp,
              ),
            ),
            padding: EdgeInsets.all(2),
            margin: EdgeInsets.only(right: 8),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              padding: EdgeInsets.all(3),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 27.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                    "$image",
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          )
        : Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle, border: Border.all(color: Colors.grey)),
            padding: EdgeInsets.all(3),
            margin: EdgeInsets.only(right: 8),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 27.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                  "$image",
                  width: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
  }
}
