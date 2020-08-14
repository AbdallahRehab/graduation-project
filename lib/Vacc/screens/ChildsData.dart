import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:graduteproject/Vacc/components/ChildsDataBody.dart';
import 'package:graduteproject/Vacc/models/childService.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ChildsData extends StatefulWidget {
  final String nationalparant;
  const ChildsData({Key key, this.nationalparant}) : super(key: key);
  
  @override
  _ChildsDataState createState() => _ChildsDataState();
}

class _ChildsDataState extends State<ChildsData> {
  TextEditingController name = new TextEditingController();

  TextEditingController id = new TextEditingController();
  childService ser=childService();
  @override
  _ChildsDataState createState() => _ChildsDataState();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF6A60A9),
        elevation: 0,
        title: Center(
          child: Text(
            "بيانات اطفالي",
            style: TextStyle(
                color: Color(0XFFFFFFFF),
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
        ),
      ),
      body: ChildsDataBody(
        nationalparant: widget.nationalparant,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0XFFFBD14B),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              backgroundColor: Colors.transparent,
              builder: (context) => SingleChildScrollView(
                child: Container(
                      height: MediaQuery.of(context).size.height / 1.22,

                      decoration: BoxDecoration(
                        color: Color(0XFF6A60A9),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40)),
                      ),
                      child: SingleChildScrollView(
                        child: Form(
                          key: _formkey,
                          child: Column(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topCenter,
                                margin: EdgeInsets.only(top: 30, bottom: 20),
                                child: Text(
                                  "اضافة طفل ",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0XFFFBD14B),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                margin: EdgeInsets.symmetric(
                                    horizontal: 35, vertical: 12),
                                child: TextFormField(
                                  controller: name,
                                  validator: (input) {
                                    if (input.isEmpty) {
                                      return 'ادخل اسم الطفل';
                                    }

                                  },
                                  textAlign: TextAlign.right,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "اسم الطفل ",
                                    hintStyle: TextStyle(color: Colors.white),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 16),
                                    isDense: true,
                                  ),
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0XFFFBD14B),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                margin: EdgeInsets.symmetric(
                                    horizontal: 35, vertical: 12),
                                child: TextFormField(
                                  controller: id,
                                  validator: (input) {
                                    if (input.length<11) {
                                      return 'برجاء ادخال رقم القمي للطفل صح ';
                                    }

                                  },
                                  textAlign: TextAlign.right,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "رقم الطفل القومي ",
                                    hintStyle: TextStyle(color: Colors.white),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 16),
                                    isDense: true,
                                  ),
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              RaisedButton(
                                onPressed: () {
                                  print(widget.nationalparant);
                                  print(id.text);
                                  print(name.text);
                                  final formState = _formkey.currentState;
                                  if (formState.validate()) {
                                    formState.save();
                                    try {
                                      ser.addChild(id.text ,widget.nationalparant,name.text);
                                      showAlertDialog(context,'تم اضافه الطفل');

                                    } catch (e) {
                                      print(e.toString());
                                    }
                                  }

                                  id.clear();
                                  name.clear();
                                },
                                color: Color(0XFFFBD14B),
                                child: Text(
                                  "اضافة",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
              ));
        },
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
