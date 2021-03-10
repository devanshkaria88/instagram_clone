import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoScreen extends StatefulWidget {
  @override
  _DemoScreenState createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  bool isExpand = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Page"),
        centerTitle: true,
      ),
      body: Container(
          child: Column(
        children: [
          Icon(
            CupertinoIcons.photo_on_rectangle,
            color: Colors.black,
          ),
          SizedBox(
            height: 15,
          ),
          Icon(
            Icons.circle,
            color: Colors.black,
          ),
          SizedBox(
            height: 15,
          ),
          Icon(
            Icons.stop_circle_outlined,
            color: Colors.black,
          )
        ],
      )),
    );
  }
}

// ExpandIcon(
// onPressed: (value) {
// setState(() {
// isExpand = !value;
// });
// },
// isExpanded: isExpand,
// disabledColor: Colors.grey,
// color: Colors.black,
// ),
