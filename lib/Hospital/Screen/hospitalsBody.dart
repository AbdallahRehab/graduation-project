import 'package:flutter/material.dart';
import 'package:graduteproject/Hospital/Componant/FilterContent.dart';
import 'package:graduteproject/Hospital/Componant/ListOfHospital.dart';
import 'package:graduteproject/Hospital/Componant/SearchWidget.dart';



class HospitalsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height / 1.145,
        color: Color(0XFFFFFFFF),
        child: Column(
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height/60,),
            SearchWidget(),
            SizedBox(height: MediaQuery.of(context).size.height/40,),
            FilterList(),
            SizedBox(height: MediaQuery.of(context).size.height/20,),
            ListOfHospitals(),

          ],
        ),
      ),
    );
  }
}
