import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Vacc1 extends StatefulWidget {
  @override
  _Vacc1State createState() => _Vacc1State();
}

class _Vacc1State extends State<Vacc1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF013843),
      appBar: AppBar(
        title: Text(
          "Vaccinations",
          style: TextStyle(color: Color(0XFFFC9634)),
        ),
        backgroundColor: Color(0XFF013843),
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              //Navigator.pop(context);
            },
          );
        }),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Choose Your Way',
              style: TextStyle(
                  color: Color(0XFFFC9634),
                  fontWeight: FontWeight.w700,
                  fontSize: 32),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 200,
                  height: 80,
                  child: FlatButton(
                    child: Text(
                      'My Account',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),

                    shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFFFC9634), width: 4),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25)),
                    ),
                    //shape:RoundedRectangleBorder(side: BorderSide(color: Colors.deepPurple),`borderRadius: BorderRadius.circular(5)`,),
                    padding: const EdgeInsets.all(15),
                    textColor: Color(0XFFFC9634),
                    onPressed: () {},
                  ),
                ),

              ],
            ),
                SizedBox(
                  height: 20,
                ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 200,
                  height: 80,
                  child: FlatButton(
                    child: Text(
                      'Detailes About VACC',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),

                    shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFFFC9634), width: 4),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25)),
                    ),
                    //shape:RoundedRectangleBorder(side: BorderSide(color: Colors.deepPurple),`borderRadius: BorderRadius.circular(5)`,),
                    padding: const EdgeInsets.all(15),
                    textColor: Color(0XFFFC9634),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
