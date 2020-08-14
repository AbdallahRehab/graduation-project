import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class OneChildBody extends StatelessWidget {
  var vaccination;



  var cList = [
    {"name": "التطعيم الاول", "taken" : true},
    {"name": "التطعيم التاني","taken" : true },
    {"name": "التطعيم الثالث", "taken" : false},
    {"name": "التطعيم الرابع", "taken" : false},
    {"name": "التطعيم الخامس", "taken" : false},
    {"name": "التطعيم السادس", "taken" : false},
    {"name": "التطعيم السابع", "taken" : false},
    {"name": "التطعيم الثامن", "taken" : false},
  ];

  OneChildBody({Key key, this.vaccination}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height / 1.15,
        padding: EdgeInsets.only(top: 20),
        child:  ListView.builder(
              itemCount: cList.length,
              itemBuilder: (context, index) {
                return ChildDetailsCard(
                  name: cList[index]['name'],
                  taken: vaccination['vacc_${index+1}'],
                  //taken: cList[index]['taken'],
                );
              },
            ),

      ),
    );
  }
}

class ChildDetailsCard extends StatelessWidget {
  final String name;
  final bool taken;

  ChildDetailsCard({this.name, this.taken});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
      child: Container(
        height: MediaQuery.of(context).size.height / 7,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 6.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(20, 25, 20, 25),
                width: MediaQuery.of(context).size.width / 8,
                height: MediaQuery.of(context).size.height / 8,
                
                child: Checkbox(
                  value: taken,
                  focusColor:Color(0XFFFBD14B) ,
                  activeColor: Color(0XFFFBD14B),
                  checkColor: Colors.white,
                  hoverColor: Color(0XFFFBD14B),



                )
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
