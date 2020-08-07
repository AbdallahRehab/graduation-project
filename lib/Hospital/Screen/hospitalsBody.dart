import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduteproject/Hospital/Componant/FilterContent.dart';
import 'package:graduteproject/Hospital/Componant/ListOfHospital.dart';
import 'package:graduteproject/Hospital/Componant/SearchWidget.dart';

class HospitalsBody extends StatefulWidget {
  @override
  _HospitalsBodyState createState() => _HospitalsBodyState();
}

class _HospitalsBodyState extends State<HospitalsBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
       // SizedBox(height: 10),
        //SearchWidget(),
        SizedBox(height: 10),
        FilterList(),
        //SizedBox(height: 10),
        Expanded(
          child: ListOfHospitals(),
        ),
      ],
    );
  }
}
