import 'package:flutter/material.dart';
import 'package:graduteproject/components/nursiesBody.dart';
import 'package:graduteproject/components/MySideBar.dart';
import 'package:graduteproject/models/hospital.dart';
import 'package:graduteproject/services/hospitalservices.dart';
import 'package:provider/provider.dart';

class NurseiesScreen extends StatefulWidget {
  @override
  _NurseiesScreenState createState() => _NurseiesScreenState();
}

class _NurseiesScreenState extends State<NurseiesScreen> {

  @override
  Widget build(BuildContext context) {

    return StreamProvider<List<Hospital>>.value(
      value: HospitalServices().getHospitals,
      child: Scaffold(
        appBar:  AppBar(
            backgroundColor: Color(0XFF015668),
            elevation: 0,
            title: Padding(
              padding: EdgeInsets.only(right: 50),
              child: Center(
                child: Text(
                    "Nurseies",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 25)
                ),
              ),
            )
        ),
        drawer: MySideBar(),
          body: MyBody(),


      ),
    );
  }
}
//amin
//rehab