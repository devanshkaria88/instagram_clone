import 'package:flutter/material.dart';

List<Widget> carlist = [];

class Resuablecard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.0,
      width: MediaQuery.of(context).size.width-20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text('var'),
    );
  }
}
void getlist() {
  for(int i=1;i<10; i++){
    carlist.add(Resuablecard());
  }
}