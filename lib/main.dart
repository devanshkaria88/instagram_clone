import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Color(0xFF121212),
            leading: Icon(Icons.camera_alt,),
            title: Text('Instagram', style: GoogleFonts.satisfy(fontSize: 30.0, fontWeight: FontWeight.w100,),),
            actions: <Widget>[
              Icon(Icons.live_tv),
              SizedBox(width: 12.0,),
              Icon(Icons.near_me),
              SizedBox(width: 15.0,),
            ],
            elevation: 10.0,
          ),
          body: TabBarView(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  Container(color: Colors.red, height: 20,width: 20,),
                  Container(color: Colors.blue,height: 20,width: 20),
                  Container(color: Colors.green,height: 20,width: 20),
                  Container(color: Colors.pink,height: 20,width: 20),
                  Container(color: Colors.yellow,height: 20,width: 20),
                ],
              ),
              Container(color: Colors.yellow,),
              Container(color: Colors.blue,),
              Container(color: Colors.green,),
              Container(color: Colors.pink,),
            ],
          ),
          bottomNavigationBar: TabBar(
            tabs: <Tab>[
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.search),
              ),
              Tab(
                icon: Icon(Icons.add_box),
              ),
              Tab(
                icon: Icon(Icons.alternate_email),
              ),
              Tab(
                icon: Icon(Icons.account_circle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
