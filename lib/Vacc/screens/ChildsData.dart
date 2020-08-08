import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:graduteproject/Vacc/components/ChildsDataBody.dart';

class ChildsData extends StatelessWidget {
  TextEditingController name= new TextEditingController();
  TextEditingController id=new TextEditingController();
  @override
  _ChildsDataState createState() => _ChildsDataState();

}

class _ChildsDataState extends State<ChildsData> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //getid();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF6A60A9),
        elevation: 0,
        title: Center(
          child: Text("بيانات اطفالي",style: TextStyle(color: Color(0XFFFFFFFF),fontWeight: FontWeight.bold,fontSize: 25),),
        ),
      ),
      body: ChildsDataBody(),

    );
  }

}
