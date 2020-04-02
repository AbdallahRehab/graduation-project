import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduteproject/components/basichospitalList.dart';
import 'package:graduteproject/components/hospitalCard.dart';
import 'package:graduteproject/components/hospitalsearchResult.dart';
import 'package:graduteproject/components/loadingSpin.dart';
import 'package:graduteproject/models/hospital.dart';
import 'package:graduteproject/services/hospitalservices.dart';
import 'package:provider/provider.dart';
class MyBody extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyBody> {
TextEditingController _textFieldController = TextEditingController();
bool isSerach=false;
String city;

  @override
  Widget build(BuildContext context) {
    final hospitals=Provider.of<List<Hospital>>(context);
    




    return
        SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0XFF015668),
//              gradient: LinearGradient(
//                begin: Alignment.topCenter,
//                  end: Alignment.bottomCenter,
//                  colors: [Color(0XFF00BBFF),Color(0XFF0098FF),Color(0XFF001255)],

            ),
            child: Column(
              children: <Widget>[
                Container(


                    padding: EdgeInsets.fromLTRB(20, 20, 20, 30),
                  child: TextField(
                    maxLines: 1,
                    controller: _textFieldController,
                    onChanged: (val){
                      setState(() {
                        city=val;
                        isSerach=true;
                      });


                    },
                    decoration: InputDecoration(
                      //Add th Hint text here.
                      hintText: "Enter Hospital",
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(Icons.search),

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0)

                  ),

                ),

                  )),
                SizedBox(height: 30,),
                isSerach ? SearchResultHospital(city) : BasicHospitalList(),
              ],

            ),
          ),
        );

  }
}




