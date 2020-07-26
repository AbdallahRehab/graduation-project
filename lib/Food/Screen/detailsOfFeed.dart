import 'package:flutter/material.dart';
import 'package:graduteproject/Feed/Screen/silver%20app.dart';

import 'feedTopbar.dart';

class DetailsOFFeed extends StatefulWidget {
  @override
  _DetailsOFFeedState createState() => _DetailsOFFeedState();
}

class _DetailsOFFeedState extends State<DetailsOFFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF013843),
//      appBar: AppBar(
//        backgroundColor: Color(0XFF013843),
//        leading: Builder(
//            builder: (BuildContext context){
//              return IconButton(
//                icon: Icon(Icons.arrow_back,color: Color(0XFFFC9634),),
//                onPressed: () {
//                  Navigator.pop(context);
//                },
//              );
//            }),
//      ),
      body: Container(
        child: SilverApp(),


      ),
    );
  }
}
