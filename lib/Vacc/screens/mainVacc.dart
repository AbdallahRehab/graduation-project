import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:graduteproject/Vacc/components/mainVaccBody.dart';

class MainVaccScreen extends StatefulWidget {
final String nationalparant;

  const MainVaccScreen({Key key, this.nationalparant}) : super(key: key);
  @override
  _MainVaccScreenState createState() => _MainVaccScreenState();
}

class _MainVaccScreenState extends State<MainVaccScreen> {
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
      body : VaccBody(nationalparant: widget.nationalparant,),

    );
  }

}
