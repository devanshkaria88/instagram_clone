import 'package:flutter/material.dart';

class chat_tile extends StatelessWidget {
  chat_tile({@required this.num});

  final int num;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 30.0,
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'user_name$num',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                ),
                Text(
                  'Message $num. 1h',
                  style: TextStyle(color: Color(0xFF707070)),
                ),
              ],
            ),
            Image.asset(
              'images/camera.png',
              height: 30.0,
              width: 30.0,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
