import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduteproject/Vacc/components/LoginBackground.dart';
import 'package:graduteproject/Vacc/screens/childernScreen.dart';
import 'package:graduteproject/Vacc/services/authservices.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    AuthServices services = Provider.of<AuthServices>(context);
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    TextEditingController emailController = new TextEditingController();
    TextEditingController passwordController = new TextEditingController();
    String error = "";
    bool loading = false;
    return Scaffold(
      backgroundColor: Color(0XFF013843),
      body: Stack(
        children: <Widget>[
          //LogInBackground(screenHeight: screenHeight,screenWidth: screenWidth,),
          LogInBackground(),
          Center(
            child: Container(
              alignment: Alignment.center,
              child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 210,
                          ),
                          TextField(
                            controller: emailController,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black54,
                                fontWeight: FontWeight.w900),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Email',
                              contentPadding: const EdgeInsets.all(15),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),

//                            onChanged: (val) {
//                              setState(() {
//                                email = val as TextEditingController;
//                              });
//                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            controller: passwordController,
                            obscureText: true,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black54,
                                fontWeight: FontWeight.w900),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Password',
                              contentPadding: const EdgeInsets.all(15),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),

//                            onChanged: (val) {
//                              setState(() {
//                                password = val as TextEditingController;
//                              });
//                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                '\t\t\t\tForget Password!',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                            width: 250,
                            decoration: new BoxDecoration(
                                color: Color(
                                    0XFFFA7B00), //new Color.fromRGBO(255, 0, 0, 0.0),
                                borderRadius: new BorderRadius.only(
                                  bottomLeft: const Radius.circular(25.0),
                                  bottomRight: const Radius.circular(25.0),
                                  topRight: const Radius.circular(25.0),
                                  topLeft: const Radius.circular(25.0),
                                )),
                            child: FlatButton(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),

//                            shape: OutlineInputBorder(
//                              borderSide: BorderSide(color: Colors.white, width: 2),
//                              borderRadius: BorderRadius.circular(5),
//                            ),
                              //shape:RoundedRectangleBorder(side: BorderSide(color: Colors.deepPurple),`borderRadius: BorderRadius.circular(5)`,),
                              padding: const EdgeInsets.all(15),
                              textColor: Colors.white,
                              onPressed: () async {

                                 await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text).
                                then((currentUSer)=>Firestore.instance.collection('User').document(currentUSer.user.uid).get()).
                                then((DocumentSnapshot result)=>
                                 Navigator.push(context, MaterialPageRoute(builder: (context) => ChildernScreen(name: result['parent_name'],sons: result['myson'],moreson: result["sons"],parent_id: result['parent_id'],))));




                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
