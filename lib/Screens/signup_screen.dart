import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController _textFieldControllername = TextEditingController();

  TextEditingController _textFieldControllerphone = TextEditingController();
  TextEditingController _textFieldControllernationalid =
      TextEditingController();

  TextEditingController _textFieldControllerpassword = TextEditingController();
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
                color: Color(0xFF3AC569),
                height: MediaQuery.of(context).size.height * 0.3,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  //margin: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/OnlineDoctorrafiki.png'),
                        fit: BoxFit.cover),
                  ),

                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.04,
                      ),
                      InkWell(
                        child: Container(
                          //width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.09,

                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        onTap: () {
                          print("sssss");
                        },
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.45,
                      ),
                      Container(
                        //width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.09,

                        child: Center(
                            child: Text(
                          'انشاء حساب جديد',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                      )
                    ],
                  )),
                ),
              ),
            ],
          ),
          Positioned(
            left: 50,
            top: 150,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.77,
              //color: Colors.amber,
              child: Column(
                children: <Widget>[
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    //color: Colors.pink,
                    elevation: 10,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.5),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.0),
                              child: TextField(
                                controller: _textFieldControllername,
                                decoration: InputDecoration(
                                  //Add th Hint text here.
                                  hintText: "الاسم",
                                ),
                                textAlign: TextAlign.right,
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.5),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.0),
                              child: TextField(
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
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.5),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.0),
                              child: TextField(
                                controller: _textFieldControllernationalid,
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
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.5),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.0),
                              child: TextField(
                                controller: _textFieldControllernationalid,
                                decoration: InputDecoration(
                                  //Add th Hint text here.
                                  hintText: "اسم المتسخدم",
                                ),
                                textAlign: TextAlign.right,
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.5),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: TextField(
                                controller: _textFieldControllernationalid,
                                decoration: InputDecoration(
                                  //Add th Hint text here.
                                  hintText: "كلمة المرور",
                                ),
                                textAlign: TextAlign.right,
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.5),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.0),
                              child: TextField(
                                controller: _textFieldControllernationalid,
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
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: RaisedButton(
                            color: Color(0XFF3AC569),
                            padding: EdgeInsets.all(4.0),
                            onPressed: () {
                              /*...*/
                            },
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(8.0),
                            ),
                            child: Text(
                              "انشاء",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
