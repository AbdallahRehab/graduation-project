import 'package:flutter/material.dart';
import 'package:graduteproject/Vacc/components/childernbody.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:graduteproject/Vacc/models/vaccinationModel.dart';
import 'dart:convert';

import 'package:graduteproject/Vacc/services/vacc1Seriveces.dart';
import 'package:provider/provider.dart';

class ChildernScreen extends StatefulWidget {
  @override
  _ChildernScreenState createState() => _ChildernScreenState();
  final String name;
  final String parent_id;
  final DocumentReference sons;
  final moreson;


  ChildernScreen({this.name, this.parent_id, this.sons, this.moreson});
}

class _ChildernScreenState extends State<ChildernScreen> {
  var idparent;
  var son=new List();
  var vacc=new Map();

  void getdata() async {

    //DocumentReference documentReference=documentSnapshot.data["myson"];
    //documentSnapshot2.data["parent_id"];
    //DocumentReference documentReference=widget.sons;
//    documentReference.get().then((datasnapshot){
//      print(datasnapshot.data["myson"]);
//      print(datasnapshot.data["parent_address"].toString());
//      print(datasnapshot.data["parent_id"].toString());
//
//      print("55555555555555555");
//    });

    DocumentSnapshot documentSnapshot=await Firestore.instance.collection("Vaccination").document("0doSDcBLQJT1hbSARekS").snapshots().first;
//    DocumentReference documentReference = widget.sons;
//    DocumentSnapshot documentSnapshot2 =
//        await documentReference.snapshots().first;
    print(
        "Iorder -->  ${documentSnapshot.data["order"].toString()}");

  }

    //print( documentSnapshot.data["email"].toString());

  void getdataallsons() async {

    var arr=widget.moreson;
    var sonn=son;
    var vaccc=vacc;
    sonn.clear();

    for (var i = 0; i < arr.length; i++) {
      await
      print(i);
      DocumentReference documentReference = widget.moreson[i];
      print("awoo  ${widget.moreson[i]}");
      DocumentSnapshot documentSnapshot2 =
      await documentReference.snapshots().first;
      print("ID of parenttttt -->  ${documentSnapshot2.data["parent_id"].toString()}");
      idparent = documentSnapshot2.data["parent_id"].toString();
      print(" Son name -->  ${documentSnapshot2.data["son_name"].toString()}");
      print("vaccination -->   ${documentSnapshot2.data["vaccination"]}");
      print("vaccination  1 -->   ${documentSnapshot2.data["vaccination"]['eighth_vacc']}");
      vaccc.addAll(documentSnapshot2.data["vaccination"]);
      print(vacc);
      sonn.add(documentSnapshot2.data["son_name"].toString());
    }
    print(son);
//    DocumentReference documentReference = widget.moreson[1];
//    print("awww  ${widget.moreson[1]}");
//    DocumentSnapshot documentSnapshot2 =
//        await documentReference.snapshots().first;
//    print(
//        "ID of parenttttt -->  ${documentSnapshot2.data["parent_id"].toString()}");


//      idparent=documentSnapshot2.data["parent_id"].toString();
//      Timestamp timestamp = documentSnapshot2.data["date"];
//      print("yearr -->  ${timestamp.toDate().year}");
//      print("name of son -->   ${documentSnapshot2.data["son_name"]}");
  }

  @override
  Widget build(BuildContext context) {
    getdata();
    getdataallsons();
   // print(widget.moreson[0]);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF015668),
        elevation: 0,
        title: Center(
            child: Text(
             idparent,
          style: TextStyle(fontSize: 25),
        )),
      ),
      body: ChildernBody(
        parent_id: widget.parent_id,
      ),
    );
  }
}
