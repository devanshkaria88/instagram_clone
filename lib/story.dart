import 'package:flutter/material.dart';

class Stories extends StatefulWidget {
  @override
  _StoriesState createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ListView(
          shrinkWrap: true,

          controller: ScrollController(initialScrollOffset: 1.0),
          scrollDirection: Axis.horizontal,
          children: <Widget>[
          SizedBox(width: 10.0,),
          CircleAvatar(backgroundColor: Colors.red,radius: 30.0,), SizedBox(width: 20.0,),
          CircleAvatar(backgroundColor: Colors.blue,radius: 30.0,), SizedBox(width: 20.0,),
          CircleAvatar(backgroundColor: Colors.green,radius: 30.0,), SizedBox(width: 20.0,),
          CircleAvatar(backgroundColor: Colors.yellow,radius: 30.0,), SizedBox(width: 20.0,),
        ],
        ),
      ],
    );
  }
}
