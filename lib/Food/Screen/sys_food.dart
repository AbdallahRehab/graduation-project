import 'package:expansion_tile_card/expansion_tile_card.dart';

import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Sys_Food extends StatefulWidget {
  @override
  _Sys_FoodState createState() => _Sys_FoodState();
}

class _Sys_FoodState extends State<Sys_Food> {
  bool selectedone = true;
  bool selectedtwo = false;
  bool selectedthree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "التغذية",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: RaisedButton(
                    color: selectedone ? Color(0XFF3AC569) : Colors.white,
                    padding: EdgeInsets.all(4.0),
                    onPressed: () {
                      /*...*/
                      setState(() {
                        selectedone = true;
                        selectedtwo = false;
                        selectedthree = false;
                      });
                    },
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      "نصايح عامة",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: selectedone ? Colors.white : Colors.black),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: RaisedButton(
                    color: selectedtwo ? Color(0XFF3AC569) : Colors.white,
                    padding: EdgeInsets.all(4.0),
                    onPressed: () {
                      /*...*/
                      setState(() {
                        selectedone = false;
                        selectedtwo = true;
                        selectedthree = false;
                      });
                    },
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      "علاج السمنة",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: selectedtwo ? Colors.white : Colors.black),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: RaisedButton(
                    color: selectedthree ? Color(0XFF3AC569) : Colors.white,
                    padding: EdgeInsets.all(4.0),
                    onPressed: () {
                      /*...*/
                      setState(() {
                        selectedone = false;
                        selectedtwo = false;
                        selectedthree = true;
                      });
                    },
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      "علاج النحافه",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: selectedthree ? Colors.white : Colors.black),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.7523,
              child: Padding(
                  padding: const EdgeInsets.all(8.0), child: getWidget())),
        ],
      ),
    );
  }

  Widget listdata() {
    var listd = [
      {
        "name": "ahmed",
        "age": "24",
      },
      {
        "name": "ahmed",
        "age": "23",
      },
      {
        "name": "ahmed",
        "age": "22",
      }
    ];
    return Container(
      child: ListView.builder(
          itemCount: listd.length,
          itemBuilder: (BuildContext context, int index) {
            return SingleChild(
              childname: listd[index]['name'],
              age: listd[index]['age'],
            );
          }),
    );
  }

  Widget fatness() {
    return Container(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            //color: Colors.pink,
            elevation: 10,

            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [const Color(0xFFFFFFFF),const Color(0xFF88DBA3)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                borderRadius:  BorderRadius.circular(9.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                  Image.asset('images/childrenpana.png'),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: Column(
                        children: <Widget>[
                          Text(
                            " النظام خاص لمعالجة مرض السمنه الذي يصيب الأطفال نتيجة لسوء التغذيه"
                            " .."
                            " يمكنك اتباع هذا النظام علي مدار الأسبوع لجعل حياة طفلك سعيده وخاليه من الامراض المزمنه",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.right,
                          ),
                          Text(
                            "هذا النظام لا يصلح لمن هم دون 24 شهر",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.right,
                          )
                        ],
                      ),
                  ),

                  //Text("dsdsds")
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.95,
            height: MediaQuery.of(context).size.height * 0.472,
            //color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    flex: 2,
                    child: Image.asset('images/motherhoodbro.jpg'),),
                Expanded(
                  flex: 1,
                  child: ListView(
                          children: <Widget>[
                            ListTile(
                              title: Text("اليوم الاول",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                        onTap: (){
                              print('dd');
                              showAlertDialog(context);
                            },),
                            ListTile(
                              title: Text("اليوم الاول",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                              onTap: (){
                                print('dd');
                                showAlertDialog(context);
                              },),
                          ],
                        ),


                )

              ],
            ),
          ),

        ],
      ),
    );
  }
  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("وجبة الغداء في اليوم الاول",textAlign: TextAlign.right,),
      content: Text("وجبة الغداء: تناول قطعة من اللحم المسلوقة أو المشوية بجانب 5 ملاعق من المكرونة بالإضافة طبق من السلطة.",textAlign: TextAlign.right,),
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
  Widget Thinness() {
    return Container(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            //color: Colors.pink,
            elevation: 10,

            child: Container(
              decoration: BoxDecoration(

                  gradient: LinearGradient(
                    colors: [const Color(0xFFFFFFFF),const Color(0xFF88DBA3)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                borderRadius:  BorderRadius.circular(9.0),

              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  Image.asset('images/undraw_back_to_school.png'),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: Column(
                      children: <Widget>[
                        Text(
                          " النظام خاص لمعالجة مرض السمنه الذي يصيب الأطفال نتيجة لسوء التغذيه"
                              " .."
                              " يمكنك اتباع هذا النظام علي مدار الأسبوع لجعل حياة طفلك سعيده وخاليه من الامراض المزمنه",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.right,
                        ),
                        Text(
                          "هذا النظام لا يصلح لمن هم دون 24 شهر",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.right,
                        )
                      ],
                    ),
                  ),

                  //Text("dsdsds")
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.95,
            height: MediaQuery.of(context).size.height * 0.472,
            //color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Image.asset('images/motherhoodbro.jpg'),),
                Expanded(
                  flex: 1,
                  child: ListView(
                    children: <Widget>[
                      ListTile(
                        title: Text("اليوم الاول",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                        onTap: (){
                          print('dd');
                          showAlertDialog(context);
                        },),
                      ListTile(
                        title: Text("اليوم الاول",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                        onTap: (){
                          print('dd');
                          showAlertDialog(context);
                        },),
                    ],
                  ),


                )

              ],
            ),
          ),

        ],
      ),
    );
  }

  Widget getWidget() {
    if (selectedone == true) {
      return listdata();
    } else if (selectedtwo == true) {
      return fatness();
    } else if (selectedthree == true) {
      return Thinness();
    }
  }
}

class SingleChild extends StatelessWidget {
  final childname;
  final age;

  SingleChild({this.childname, this.age});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      child: ExpansionTileCard(
        //leading: CircleAvatar(child: Icon(Icons.lock_open)),
        title: Text('This is item #$childname'),
        subtitle: Text('Tap to see more!'),
        children: <Widget>[
          Divider(
            thickness: 1.0,
            height: 1.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Text(
                """Hi there, I'm a drop-in replacement for Flutter's ExpansionTile.

Use me any time you think your app could benefit from being just a bit more Material.""",
                style: Theme.of(context).textTheme.body1.copyWith(fontSize: 16),
              ),
            ),
          ),
//          ButtonBar(
//            alignment: MainAxisAlignment.spaceAround,
//            buttonHeight: 52.0,
//            buttonMinWidth: 90.0,
//            children: <Widget>[
//              FlatButton(
//                shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(4.0)),
//                onPressed: () {},
//                child: Column(
//                  children: <Widget>[
//                    Icon(Icons.star),
//                    Padding(
//                      padding: const EdgeInsets.symmetric(vertical: 2.0),
//                    ),
//                    Text('Save'),
//                  ],
//                ),
//              ),
//              FlatButton(
//                shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(4.0)),
//                onPressed: () {},
//                child: Column(
//                  children: <Widget>[
//                    Icon(Icons.open_in_browser),
//                    Padding(
//                      padding: const EdgeInsets.symmetric(vertical: 2.0),
//                    ),
//                    Text('Open'),
//                  ],
//                ),
//              ),
//              FlatButton(
//                shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(4.0)),
//                onPressed: () {},
//                child: Column(
//                  children: <Widget>[
//                    Icon(Icons.share),
//                    Padding(
//                      padding: const EdgeInsets.symmetric(vertical: 2.0),
//                    ),
//                    Text('Share'),
//                  ],
//                ),
//              ),
//            ],
//          ),
        ],
      ),
    );
  }
}
