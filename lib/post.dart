import 'package:flutter/material.dart';


class PostCard extends StatelessWidget {
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
          Image.asset('images/1.jpg', height: MediaQuery.of(context).size.height*0.5, width: MediaQuery.of(context).size.width,),
          Row(),
          Text('1023 likes', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
          Row(children: <Widget>[ Text('user_name', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),), Text('great')],),
          Text('view all 57 comments', style: TextStyle(color: Colors.grey),),
          Row(children: <Widget>[CircleAvatar(), SizedBox(width: 5.0,), Text('Add a Comment...', style: TextStyle(color: Colors.grey),)],),
          Text('1 hour ago', style: TextStyle(color: Colors.grey,),)
        ],
      ),
    );
  }
}
