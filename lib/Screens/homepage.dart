import 'package:flutter/material.dart';
import 'package:graduteproject/components/MySideBar.dart';
import 'package:graduteproject/components/homebody.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
          backgroundColor: Color(0XFF015668),
          elevation: 0,
          title: Padding(
            padding: EdgeInsets.only(right: 50),
            child: Center(
              child: Text(
                  "Home",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 25)
              ),
            ),
          )
      ),
      drawer: MySideBar(),
      backgroundColor:Color(0XFF015668) ,
      body: HomeBody(),
    );
  }
}
