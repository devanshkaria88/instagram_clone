import 'package:flutter/material.dart';


class chat_tile extends StatelessWidget {

  chat_tile({@required this.num});
  final int num;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          CircleAvatar(backgroundColor: Colors.amber, radius: 25.0,),
          Column(
            children: <Widget>[
              Text('user_name$num', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              Text('Message $num. 1h', style: TextStyle(color: Color(0xFF202020)),),
            ],
          ),
          SizedBox(width: 30,),
          Icon(Icons.camera_alt)
        ],
      ),
    );
  }
}