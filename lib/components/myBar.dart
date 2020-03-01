import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      alignment: Alignment.topCenter,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 40,bottom: 15),
            child: Text("Nurseies",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 40),),
          ),
        ],
      ),
    );
  }
}
