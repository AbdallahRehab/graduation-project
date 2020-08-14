import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:graduteproject/Screens/GoogleNavBar.dart';
import 'package:graduteproject/Screens/forgetPassword.dart';
import 'package:graduteproject/Screens/signup_screen.dart';


class Login_Screen extends StatelessWidget {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 80),
                  child: Text(
                    "Child Care",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
                child: Container(
                  width: MediaQuery.of(context).size.width / 0.5,
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("images/LoginBackground.png"),
                  )),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0XFF7070701A),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                margin: EdgeInsets.symmetric(horizontal: 35, vertical: 12),
                child: TextFormField(
                  keyboardType:   TextInputType.emailAddress,
                  validator: (input) {
                    if (input.isEmpty) {
                      return 'برجاء الايميل صح ';
                    }

                  },
                  controller: emailController,
                  textAlign: TextAlign.right,

                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "البريد الالكتروني ",
                    hintStyle: TextStyle(color: Colors.grey),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    isDense: true,
                  ),
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0XFF7070701A),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                margin: EdgeInsets.symmetric(horizontal: 35, vertical: 6),
                child: TextFormField(
                  keyboardType:   TextInputType.visiblePassword,
                  validator: (input) {
                    if (input.length<6) {
                      return 'دخل كلمه المرور';
                    }

                  },
                  obscureText: true,
                  controller: passwordController,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "الرقم السري",
                    hintStyle: TextStyle(color: Colors.grey),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    isDense: true,
                  ),
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width/8,
                  ),
                  Container(

                    child: InkWell(
                      onTap: ()async{
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ForgetPassword()));
                      },
                      child: Text("نسيت كلمه المرور",textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black38,fontSize:16,decoration: TextDecoration.underline),),
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width/1.8,
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: FlatButton(
                  onPressed: () async{
                    print(emailController);
                    print(passwordController);
                    final formState = _formkey.currentState;
                    if (formState.validate()) {
                      formState.save();
                      try {
                        FirebaseUser user= (await FirebaseAuth.instance.signInWithEmailAndPassword(email:emailController.text , password: passwordController.text)).user;
                        DocumentSnapshot documentSnapshot=await Firestore.instance.collection("User").document(user.uid).snapshots().first;
                        print(documentSnapshot.data['national_id']);
                        String nationalparant=documentSnapshot.data['national_id'];
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TabPage(nationalparant: nationalparant,)));

                      } catch (e) {
                        print('------------');
                        print(e.toString());
                        showAlertDialog(context,'الايميل او الرقم السري خطااا');
                        print('------------');
                      }
                    }

                  },
                  child: Text(
                    "تسجيل الدخول",
                    style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                  color: Color(0XFFFBD14B),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(80, 30, 40, 10),
                  child: Row(

                    children: <Widget>[
                      InkWell(
                        onTap: ()async{
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                        },
                        child: Text("انشاء حساب جديد",textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Color(0XFF6A60A9),fontSize:16,decoration: TextDecoration.underline),),
                      ),
                      SizedBox(width: 8,),
                      Text("ليس لديك حساب ؟",textAlign: TextAlign.right,style:TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w700) ,)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  showAlertDialog(BuildContext context,String data) {
    // Create button
    Widget okButton = FlatButton(
      child: Text("OK",style: TextStyle(color: Colors.white),),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: Color(0xFF6A60A9),
      title: Text(
        " العمليه نجحت",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
        textAlign: TextAlign.right,
      ),
      content: SingleChildScrollView(
        child: Text(
          "$data",style: TextStyle(color: Colors.white),
          textAlign: TextAlign.right,
        ),
      ),
      actions: [
        //okButton,
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
