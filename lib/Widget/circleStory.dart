import 'package:flutter/material.dart';

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
