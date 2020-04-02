import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduteproject/Hospital/Componant/basichospitalList.dart';
import 'package:graduteproject/Hospital/Componant/hospitalCard.dart';
import 'package:graduteproject/Hospital/Componant/hospitalsearchResult.dart';
import 'package:graduteproject/components/loadingSpin.dart';
import 'package:graduteproject/components/settingsSelectGovr.dart';
import 'package:graduteproject/Hospital/Model/hospital.dart';
import 'package:graduteproject/Hospital/Service/settings_provider.dart';
import 'package:graduteproject/Hospital/Service/hospitalservices.dart';
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
    //final hospitals=Provider.of<List<Hospital>>(context);
    var settingsProvider = Provider.of<SettingsProdiver>(context);

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
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Governorate'
                      ,style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                        ),),
                      IconButton(
                        icon: Icon(Icons.settings),
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => Settings()));
                        },
                      )
                    ],
                  ),
                ),
                SizedBox(height: 40,),
                 BasicHospitalList(),
              ],

            ),
          ),
        );

  }
}




