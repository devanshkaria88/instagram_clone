import 'package:flutter/material.dart';


class PostCard extends StatefulWidget {
  PostCard({@required this.num});
  final int num;


  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {

  int likes = 59;
  Image likedheart = Image.asset('images/liked_heart.png', height: 25.0, width: 32.0,);
  Image plainheart = Image.asset('images/heart.png',color: Colors.white, height: 40.0, width: 40.0,);
  Image likestate = Image.asset('images/heart.png',color: Colors.white, height: 40.0, width: 40.0,);


  void like() {
    setState(() {
      likestate = likedheart;
      likes++;
    });
  }

  void dislike ()
  {
    setState(() {
      likestate = plainheart;
      likes--;
    });
  }

  void doublecheck(){
    if(likestate == plainheart){
      like();
    }
  }

  void checkLike () {
    if(likestate == likedheart){
      dislike();
    }
    else{
      like();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(backgroundColor: Colors.red,),
              SizedBox(width: 5.0,),
              Text('user_name', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
            ],
          ),
          SizedBox(height: 7.0,),
          GestureDetector(onDoubleTap: doublecheck, child: Image.asset('images/${widget.num}.jpg', width: MediaQuery.of(context).size.width,),),
          SizedBox(height: 7.0,),
          Row(children: <Widget>[
            GestureDetector(child: likestate, onTap: checkLike),
            Image.asset('images/comment.png', color: Colors.white, height: 40.0, width: 40.0,),
            Image.asset('images/send.png',color: Colors.white, height: 30.0, width: 40.0,),
            SizedBox(width: MediaQuery.of(context).size.width-180,),
            Image.asset('images/bookmark.png',color: Colors.white, height: 40.0, width: 40.0,),
          ],),
          Text('$likes likes', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
          Row(children: <Widget>[ Text('user_name', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),), Text('great')],),
          Text('view all 57 comments', style: TextStyle(color: Colors.grey),),
          Row(children: <Widget>[CircleAvatar(), SizedBox(width: 5.0,), Text('Add a Comment...', style: TextStyle(color: Colors.grey),)],),
          Text('1 hour ago', style: TextStyle(color: Colors.grey,),)
        ],
      ),
    );
  }
}
