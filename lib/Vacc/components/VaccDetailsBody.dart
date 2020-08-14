import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:graduteproject/Vacc/screens/VaccRangeDetails.dart';

class VaccDetailsBody extends StatelessWidget {
  var cList = [
    {
      "name": "الفترة الاولي",
    },
    {
      "name": "الفترة التانية",
    },
    {
      "name": "الفترة الثالثة ",
    },
    {
      "name": "الفترة الرابعة ",
    },
    {
      "name": "الفترة الخامسة ",
    },
    {
      "name": "الفترة السادسة ",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height/1.15,
          padding: EdgeInsets.only(top: 20),
          child: StreamBuilder(
            stream: Firestore.instance
                .collection('Vaccination')
                .orderBy('order', descending: true)
                .snapshots(),
            builder: (context, snapshots) {
              if (!snapshots.hasData) {
                return Center(child: new Text("CONNECTING....."));
              }
              return ListView.builder(

                itemCount: snapshots.data.documents.length,
                itemBuilder: (context, index) {
                  DocumentSnapshot ds =
                  snapshots.data.documents[index];
                  print(snapshots.data.documents.length);
                  return ChildCard(
                    name: ds['name'],
                   range_age: ds['range_age'],
                   side_effect: ds['side_effect'],
                   vacc_name: ds['vacc_name'],
                   // name: cList[index]['name'],
                    // age: cList[index]['age'],
                  );
                },
              );
            },
          )),
    );
  }
}

class ChildCard extends StatelessWidget {

  final String name,range_age,side_effect;
   var vacc_name;

  ChildCard({Key key, this.name, this.range_age, this.side_effect, this.vacc_name}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: Container(
        height: MediaQuery.of(context).size.height /7,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 6.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(
                onTap: () {

                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(20, 25, 20, 25),
                  width: MediaQuery.of(context).size.width / 10,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0XFFFBD14B),
                  ),
                  child: Center(
                      child: IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VaccRangeDetails(name: name,range_age: range_age,side_effect: side_effect,vacc_name: vacc_name,)));
                    },
                    iconSize: 18,
                    color: Colors.white,
                  )),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 30),
                alignment: Alignment.centerRight,
                child: Text(name,
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.black, fontSize: 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
