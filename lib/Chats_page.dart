import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'chat_tile.dart';
import 'home_page.dart';

class ChatsPage extends StatefulWidget {
  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  void back() {
    Navigator.of(context).push(
      CupertinoPageRoute(builder: (context) {
        return Homepage();
      }),
    );
  }

  List<Widget> _tiles = [
    DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Container(
        padding: EdgeInsets.all(20.0),
        color: Colors.grey,
        height: 20.0,
        child: Row(
          children: <Widget>[
            Icon(Icons.search),
            Text('Search'),
            SizedBox(
              width: 50,
            ),
            Icon(Icons.filter_list),
          ],
        ),
      ),
    ),
  ];
  List<Widget> getchats() {
    for (int i = 1; i < 25; i++) {
      _tiles.add(chat_tile(
        num: i,
      ));
    }
    return _tiles;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF121212),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: back),
        title: Title(
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Text('user_name '),
                Icon(Icons.keyboard_arrow_down)
              ],
            )),
        actions: <Widget>[
          GestureDetector(
            child: Image.asset(
              'images/camera.png',
              height: 30.0,
              width: 30.0,
              color: Colors.white,
            ),
            onTap: () {
              print('camera tapped');
            },
          ),
          SizedBox(
            width: 10.0,
          ),
          Icon(Icons.note_add),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: ListView(children: getchats()),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Color(0xFF202020),
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/camera.png',
                color: Colors.blue.shade700,
                height: 30.0,
                width: 30.0,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Camera',
                style: TextStyle(
                    color: Colors.blue.shade700,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
