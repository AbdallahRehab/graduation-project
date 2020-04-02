import 'package:flutter/material.dart';
import 'package:graduteproject/Hospital/Componant/nursiesBody.dart';
import 'package:graduteproject/components/MySideBar.dart';
import 'package:graduteproject/Hospital/Model/hospital.dart';
import 'package:graduteproject/Hospital/Service/hospitalservices.dart';
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