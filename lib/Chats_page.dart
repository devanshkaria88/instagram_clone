import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'chat_tile.dart';

class ChatsPage extends StatefulWidget {
  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  List <Widget> _tiles = [
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
            SizedBox(width: 50,),
            Icon(Icons.filter_list),
          ],
        ),
      ),
    ),
  ];
  List <Widget> getchats () {
    for (int i = 1; i<25; i++) {
      _tiles.add(chat_tile(num: i,));
    }
    return _tiles;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF121212),
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.white,), onPressed: (){Navigator.pop(context);}),
        title: Title(color: Colors.white, child: Row(children: <Widget>[Text('user_name ' ), Icon(Icons.keyboard_arrow_down)],)),
        actions: <Widget>[
          Icon(Icons.videocam),
          SizedBox(width: 10.0,),
          Icon(Icons.note_add),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: ListView(
          children: getchats()
        ),
      ),

    );
  }
}



