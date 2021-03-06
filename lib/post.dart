import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostCard extends StatelessWidget {
  final String userName;
  final String userImage;
  final String location;
  final String postImage;
  final String totalLikes;
  final String caption;

  PostCard(
      {@required this.userName,
      @required this.postImage,
      @required this.totalLikes,
      this.userImage,
      this.location,
      this.caption});

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
                      backgroundColor: Colors.transparent,
                      radius: 20.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          "$userImage",
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "$userName",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "$location",
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
          SizedBox(
            height: 10,
          ),
          Container(
            height: h * 0.4,
            width: w * 1,
            child: Center(
              child: Image.network(
                "$postImage",
                fit: BoxFit.fill,
              ),
            ),
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
                  width: w * 0.3,
                  height: h * 0.06,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FontAwesomeIcons.heart,
                        color: Colors.white,
                        size: 25,
                      ),
                      Icon(
                        FontAwesomeIcons.comment,
                        size: 25,
                        color: Colors.white,
                      ),
                      SvgPicture.asset(
                        "assets/icon/send.svg",
                        height: 23,
                        width: 23,
                        fit: BoxFit.cover,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Icon(
                  FontAwesomeIcons.bookmark,
                  color: Colors.white,
                  size: 25,
                ),
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
                  "$totalLikes",
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
              "$caption",
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
