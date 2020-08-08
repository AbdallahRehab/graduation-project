import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:graduteproject/Vacc/components/mainVaccBody.dart';

class MainVaccScreen extends StatefulWidget {
//  final String uid;
//
//  const MainVaccScreen({Key key, this.uid}) : super(key: key);
  @override
  _MainVaccScreenState createState() => _MainVaccScreenState();
}

class _MainVaccScreenState extends State<MainVaccScreen> {
  String uid;

  String nationalparant;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getid();

  }
  @override
  Widget build(BuildContext context) {
setState(() {
  getid();
});
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Color(0XFF6A60A9),
        elevation: 0,
        title: Center(
          child: Text("التطعميات",style: TextStyle(color: Color(0XFFFFFFFF),fontWeight: FontWeight.bold,fontSize: 25),),
        ),
      ),
      body : VaccBody(nationalparant: nationalparant,),

    );
  }

  void getid()async{
    FirebaseUser user =await FirebaseAuth.instance.currentUser();
    uid=user.uid;
    print(uid);
    getnationalid();

  }

  void getnationalid()async{
    //print(uid);
    DocumentSnapshot documentSnapshot=await Firestore.instance.collection("User").document(uid).snapshots().first ;
//   QuerySnapshot documentSnapshots=await Firestore.instance.collection('User').where("usertoken", isEqualTo: uid).snapshots().first;
    print(documentSnapshot.data['national_id']);

    nationalparant=documentSnapshot.data['national_id'];
//   print(nationalparant);
  }
}
