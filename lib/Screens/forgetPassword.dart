import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduteproject/Hospital/Screen/hospital.dart';
import 'package:graduteproject/Screens/GoogleNavBar.dart';
import 'package:graduteproject/Screens/LoginScreen.dart';
import 'package:toast/toast.dart';

class ForgetPassword extends StatelessWidget {

  TextEditingController _textFieldControllerEmail = TextEditingController();


  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Color(0xFF6A60A9),
                height: MediaQuery.of(context).size.height * 0.3,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  //margin: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/OnlineDoctorrafiki.png'),
                        fit: BoxFit.contain),
                  ),

                  child: SafeArea(
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.04,
                          ),
                          InkWell(
                            child: Container(
                              //width: MediaQuery.of(context).size.width,

                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            onTap: () {
                              print("sssss");
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login_Screen()));
                            },
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.35,
                          ),
                          Container(
                            //width: MediaQuery.of(context).size.width,

                            child: Text(
                              'استرجاع كلمه المرور',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 150),
            child: SingleChildScrollView(
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.77,
                  child: Column(
                    children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        //color: Colors.pink,
                        elevation: 10,

                        child: Form(
                          key: _formkey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height:
                                MediaQuery.of(context).size.height * 0.02,
                              ),

                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(width: 0.5),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 15.0),
                                    child: TextFormField(
                                      keyboardType: TextInputType.emailAddress,
                                      validator: (input) {
                                        if (input.isEmpty) {
                                          return 'برجاء الايميل صح ';
                                        }
                                      },
                                      controller: _textFieldControllerEmail,
                                      decoration: InputDecoration(
                                        //Add th Hint text here.
                                        hintText: "البريد الالكتروني",
                                      ),
                                      textAlign: TextAlign.right,
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:
                                MediaQuery.of(context).size.height * 0.02,
                              ),
                              SizedBox(
                                height:
                                MediaQuery.of(context).size.height * 0.03,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: RaisedButton(
                                  color: Color(0XFFFBD14B),
                                  padding: EdgeInsets.all(4.0),
                                  onPressed: () async {

                                    print(_textFieldControllerEmail.text);

                                    final formState = _formkey.currentState;
                                    if (formState.validate()) {
                                      formState.save();
                                      try {
                                       await sendPasswordResetEmail(_textFieldControllerEmail.text);
                                       Toast.show('سوف تصلك رساله علي الجيميل', context, duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Login_Screen()));

                                      } catch (e) {
                                        Toast.show('تاكد من الايميل اللذي ادخلته ربما خطا', context, duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                                        print(e.toString());
                                      }
                                    }
                                  },
                                  shape: new RoundedRectangleBorder(
                                    borderRadius:
                                    new BorderRadius.circular(8.0),
                                  ),
                                  child: Text(
                                    "ارسال",
                                    style: TextStyle(
                                        fontSize: 20.0,
//                                  fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:
                                MediaQuery.of(context).size.height * 0.02,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Future sendPasswordResetEmail(String email) async {
    FirebaseAuth _firebaseAuth=FirebaseAuth.instance;
    return _firebaseAuth.sendPasswordResetEmail(email: email);
  }

}
