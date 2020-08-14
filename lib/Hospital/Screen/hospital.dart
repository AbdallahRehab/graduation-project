import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:graduteproject/Hospital/Screen/hospitalsBody.dart';
import 'package:graduteproject/Screens/GoogleNavBar.dart';
import 'package:graduteproject/Screens/LoginScreen.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class HospitalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF6A60A9),
        elevation: 0,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: (){
            showAlertDialog(context,'هل تريد الخروج');
          })
        ],
        title: Center(
          child: Text(
            "الحضانات",
            style: TextStyle(
                color: Color(0XFFFFFFFF),
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
        ),
      ),

      body: HospitalsBody(),
    );
  }
  showAlertDialog(BuildContext context,String data) {
    // Create button
    Widget okButton = FlatButton(
      child: Text("خروج",style: TextStyle( fontWeight: FontWeight.bold,fontSize: 20,color:Color(0xFF6A60A9)),),
        onPressed: () async {
          await FirebaseAuth.instance.signOut();

          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Login_Screen()));
        }
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor:  Colors.white,
//      title: Text(
//        " العمليه نجحت",style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xFF6A60A9)),
//        textAlign: TextAlign.right,
//      ),
      content: SingleChildScrollView(
        child: Text(
          "$data",style: TextStyle(color: Color(0xFF6A60A9)),
          textAlign: TextAlign.right,
        ),
      ),
      actions: [
        okButton,
      ],
    );


    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
