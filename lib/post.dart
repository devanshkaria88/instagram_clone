import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostCard extends StatefulWidget {
  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20.0,
                      backgroundColor: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "jeel",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Rajkot Gujrat",
                          style: TextStyle(color: Colors.white, fontSize: 11.0),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 20,
                )
              ],
            ),
          ),
          Divider(
            height: h * 0.007,
            color: Colors.grey,
          ),
          Container(
            height: h * 0.4,
            color: Colors.blue,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: w * 0.25,
                  height: h * 0.06,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FontAwesomeIcons.heart,
                        color: Colors.white,
                      ),
                      Icon(
                        CupertinoIcons.search,
                        color: Colors.white,
                      ),
                      Icon(
                        FontAwesomeIcons.paperPlane,
                        size: 20,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Icon(
                  FontAwesomeIcons.bookmark,
                  color: Colors.white,
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Text(
                  "1,039",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  " likes",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: h * 0.1,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              "User_name World's first smartphone with 19GB Ram launched.",
              maxLines: 2,
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.symmetric(),
          ),
        ],
      ),
    );
  }
}
