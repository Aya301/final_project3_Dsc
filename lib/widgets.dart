import 'package:flutter/material.dart';

import 'home.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 180)),
        Text('Happy',style: TextStyle(fontSize: 50,color: Colors.black),),
      ],

    );
  }
}
class Favourite extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 180)),
        Text('Happy',style: TextStyle(fontSize: 50),),
      ],

    );
  }
}