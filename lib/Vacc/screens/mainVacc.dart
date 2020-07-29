import 'package:flutter/material.dart';
import 'package:graduteproject/Vacc/components/mainVaccBody.dart';

class MainVaccScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Color(0XFF6A60A9),
        elevation: 0,
        title: Center(
          child: Text("التطعميات",style: TextStyle(color: Color(0XFFFFFFFF),fontWeight: FontWeight.bold,fontSize: 25),),
        ),
      ),
      body : VaccBody(),

    );
  }
}
