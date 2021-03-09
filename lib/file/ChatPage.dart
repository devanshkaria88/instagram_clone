import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  TextEditingController _controller;
  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<Widget> userChat = [
    ChatUserCircle(
        image: "https://wallpapercave.com/wp/wp4540682.jpg", story: true),
    ChatUserCircle(
        image:
            "https://images.unsplash.com/photo-1474552226712-ac0f0961a954?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80",
        story: false),
    ChatUserCircle(
        image:
            "https://images.unsplash.com/photo-1463453091185-61582044d556?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
        story: false),
    ChatUserCircle(
        image:
            "https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZSUyMG1hbnxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=500&q=60",
        story: true),
    ChatUserCircle(
        image:
            "https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=731&q=80",
        story: true),
    ChatUserCircle(
        image: "https://wallpapercave.com/wp/wp4540682.jpg", story: true),
    ChatUserCircle(
        image: "https://wallpapercave.com/wp/wp4540682.jpg", story: false),
    ChatUserCircle(
        image:
            "https://images.unsplash.com/photo-1474552226712-ac0f0961a954?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80",
        story: true),
    ChatUserCircle(
        image:
            "https://images.unsplash.com/photo-1463453091185-61582044d556?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
        story: false),
    ChatUserCircle(
        image:
            "https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZSUyMG1hbnxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=500&q=60",
        story: true),
    ChatUserCircle(
        image:
            "https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=731&q=80",
        story: true),
    ChatUserCircle(
        image: "https://wallpapercave.com/wp/wp4540682.jpg", story: true),
  ];
  List<String> userName = [
    'Jeel Bhatti',
    'Michel',
    'Lester',
    'Mark Zukerburg',
    'Lucifer',
    'Eve',
    'Jeel Bhatti',
    'Michel',
    'Lester',
    'Mark Zukerburg',
    'Lucifer',
    'Eve'
  ];
  List<String> messages = [
    "Hello",
    "Shared a Post",
    "Franklin Attacked",
    "2 new messages",
    "Typing...",
    "Hello",
    "Hello",
    "Shared a Post",
    "Franklin Attacked",
    "2 new messages",
    "Typing...",
    "Hello"
  ];
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(8)),
                  margin: EdgeInsets.symmetric(vertical: 20),
                  padding: EdgeInsets.symmetric(horizontal: 13),
                  width: w * 0.9,
                  height: h * 0.06,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.search,
                        color: Colors.grey,
                        size: 20,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: w * 0.7,
                        child: TextFormField(
                          controller: _controller,
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search",
                              hintStyle: TextStyle(color: Colors.grey)),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: userChat.length,
                  itemBuilder: (context, int i) {
                    return Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 6.0),
                      height: h * 0.1,
                      width: w * 0.8,
                      color: Colors.black,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              userChat[i],
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                userName[i],
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Text(
                                    messages[i],
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 1,
                                  ),
                                  Text(
                                    " 1 h",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(
                                  CupertinoIcons.camera,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.black87,
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                CupertinoIcons.camera_fill,
                color: Colors.blue,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Camera',
                style: TextStyle(
                    color: Colors.blue.shade700,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatUserCircle extends StatelessWidget {
  String image;
  bool story;
  ChatUserCircle({@required this.image, @required this.story});
  @override
  Widget build(BuildContext context) {
    return story
        ? Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  const Color(0xFF8a3ab9),
                  const Color(0xFFe95950),
                  const Color(0xFFbc2a8d),
                  const Color(0xFFfccc63),
                  const Color(0xFFfbad50),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 0.3, 0.4, 0.9, 1.0],
                tileMode: TileMode.clamp,
              ),
            ),
            padding: EdgeInsets.all(2),
            margin: EdgeInsets.only(right: 8),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              padding: EdgeInsets.all(3),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 25.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    "$image",
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          )
        : Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle, border: Border.all(color: Colors.grey)),
            padding: EdgeInsets.all(3),
            margin: EdgeInsets.only(right: 8),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 27.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                  "$image",
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
  }
}
