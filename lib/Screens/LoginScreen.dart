import 'package:flutter/material.dart';

class Login_Screen extends StatelessWidget {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 80),
                child: Text(
                  "Childern Care",
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
              child: TextField(
                controller: emailController,
                textAlign: TextAlign.right,
                keyboardType: TextInputType.text,
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
              child: TextField(
                obscureText: true,
                controller: passwordController,
                textAlign: TextAlign.right,
                keyboardType: TextInputType.text,
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
            Container(
              height: MediaQuery.of(context).size.height/9,
              width: MediaQuery.of(context).size.width/1.8,
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: FlatButton(
                onPressed: () {
                  print(emailController);
                  print(passwordController);
                },
                child: Text(
                  "تسجيل الدخول",
                  style: TextStyle(color: Colors.white),
                ),
                color: Color(0XFF3AC569),
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
                      onTap: (){},
                      child: Text("انشاء حساب جديد",textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Color(0XFF3AC569),fontSize:16,decoration: TextDecoration.underline),),
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
    );
  }
}
