import 'package:flutter/material.dart';
import 'package:graduteproject/components/childernbody.dart';
class ChildernScreen extends StatefulWidget {
  @override
  _ChildernScreenState createState() => _ChildernScreenState();
}

class _ChildernScreenState extends State<ChildernScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF015668),
        elevation: 0,
        title: Center(child: Text("Your Childs",style: TextStyle(fontSize: 25),)),
      ),
      body: ChildernBody(),
    );
  }
}
