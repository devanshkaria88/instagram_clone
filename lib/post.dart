import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controls.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostCard extends StatefulWidget {
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
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool liked = false;
  final FlareControls flareControls = FlareControls();

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
                          "${widget.userImage}",
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
                          "${widget.userName}",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "${widget.location}",
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
              child: GestureDetector(
                onDoubleTap: () {
                  setState(() {
                    liked = true;
                  });
                  flareControls.play("like");
                },
                child: Stack(
                  children: [
                    Image.network(
                      "${widget.postImage}",
                      width: w,
                      fit: BoxFit.contain,
                    ),
                    Container(
                      width: double.infinity,
                      height: 250,
                      child: Center(
                        child: SizedBox(
                          width: 80,
                          height: 80,
                          child: FlareActor(
                            'assets/icon/instagram_like.flr',
                            controller: flareControls,
                            animation: 'idle',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            liked = !liked;
                          });
                        },
                        child: liked == true
                            ? Icon(
                                FontAwesomeIcons.solidHeart,
                                size: 25,
                                color: Colors.red,
                              )
                            : Icon(
                                FontAwesomeIcons.heart,
                                size: 25,
                                color: Colors.white,
                              ),
                      ),
                      Icon(
                        FontAwesomeIcons.comment,
                        size: 25,
                        color: Colors.white,
                      ),
                      Transform.rotate(
                        angle: 3.14 * 1 / 12,
                        child: Icon(
                          CupertinoIcons.paperplane,
                          color: Colors.white,
                          size: 24,
                        ),
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
                  "${widget.totalLikes}",
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
              "${widget.caption}",
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
