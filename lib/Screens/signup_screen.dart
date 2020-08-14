import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduteproject/Hospital/Screen/hospital.dart';
import 'package:graduteproject/Screens/GoogleNavBar.dart';
import 'package:graduteproject/Screens/LoginScreen.dart';

class SignUpScreen extends StatelessWidget {
  TextEditingController _textFieldControllername = TextEditingController();

  TextEditingController _textFieldControllerphone = TextEditingController();
  TextEditingController _textFieldControllernationalid =
      TextEditingController();
  TextEditingController _textFieldControllerEmail = TextEditingController();

  TextEditingController _textFieldControllerpassword = TextEditingController();
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
                            width: MediaQuery.of(context).size.width * 0.45,
                          ),
                          Container(
                            //width: MediaQuery.of(context).size.width,

                            child: Text(
                              'انشاء حساب جديد',
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
                                      keyboardType: TextInputType.text,
                                      validator: (input) {
                                        if (input.isEmpty) {
                                          return 'ادخل اسم ';
                                        }
                                      },
                                      controller: _textFieldControllername,
                                      decoration: InputDecoration(
                                        //Add th Hint text here.
                                        hintText: "اسم المستخدم",
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
                                      keyboardType: TextInputType.phone,
                                      validator: (input) {
                                        if (input.length < 11) {
                                          return 'برجاء ادخال رقم التليفون صح ';
                                        }
                                      },
                                      controller: _textFieldControllerphone,
                                      decoration: InputDecoration(
                                        //Add th Hint text here.
                                        hintText: "رقم التلفون",
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
                                      keyboardType: TextInputType.number,
                                      validator: (input) {
                                        if (input.length < 14) {
                                          return 'برجاء ادخال رقم القومي صح ';
                                        }
                                      },
                                      controller:
                                          _textFieldControllernationalid,
                                      decoration: InputDecoration(
                                        //Add th Hint text here.
                                        hintText: "الرقم القومي",
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
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(width: 0.5),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: TextFormField(
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      validator: (input) {
                                        if (input.length < 6) {
                                          return 'دخل كلمه المرور';
                                        }
                                      },
                                      controller: _textFieldControllerpassword,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        //Add th Hint text here.
                                        hintText: "كلمة المرور",
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
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      validator: (input) {
                                        if (!input.contains(
                                            _textFieldControllerpassword
                                                .text)) {
                                          return 'دخل كلمه المرور مطابق';
                                        }
                                      },
                                      obscureText: true,
//                                controller: _textFieldControllernationalid,
                                      decoration: InputDecoration(
                                        //Add th Hint text here.
                                        hintText: "تأكيد كلمة المرور",
                                      ),
                                      textAlign: TextAlign.right,
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ),
                                ),
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
                                    print(_textFieldControllername);
                                    print(_textFieldControllerEmail);
                                    print(_textFieldControllernationalid.text);
                                    print(_textFieldControllerphone);
                                    print(_textFieldControllerpassword);

                                    final formState = _formkey.currentState;
                                    if (formState.validate()) {
                                      formState.save();
                                      try {
                                        FirebaseUser user = (await FirebaseAuth
                                                .instance
                                                .createUserWithEmailAndPassword(
                                                    email:
                                                        _textFieldControllerEmail
                                                            .text,
                                                    password:
                                                        _textFieldControllerpassword
                                                            .text))
                                            .user;
                                        UserUpdateInfo userInfo =
                                            new UserUpdateInfo();
                                        userInfo.displayName =
                                            _textFieldControllername.text;
                                        user
                                            .updateProfile(userInfo)
                                            .then((onValue) {
                                          Firestore.instance
                                              .collection('User')
                                              .document(user.uid)
                                              .setData({
                                            'email':
                                                _textFieldControllerEmail.text,
                                            'national_id':
                                                _textFieldControllernationalid
                                                    .text,
                                            'parent_phone':
                                                _textFieldControllerphone.text,
                                            'parent_name':
                                                _textFieldControllername.text,
                                          });
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => Login_Screen()));
                                        });
                                      } catch (e) {
                                        print(e.toString());
                                      }
                                    }
                                  },
                                  shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(8.0),
                                  ),
                                  child: Text(
                                    "انشاء حساب",
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
}
