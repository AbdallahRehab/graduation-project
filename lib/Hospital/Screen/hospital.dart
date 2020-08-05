import 'package:flutter/material.dart';
import 'package:graduteproject/Hospital/Screen/hospitalsBody.dart';

class HospitalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF3AC569),
        elevation: 0,
        title: Center(
          child: Text(
            "الحضانات",
            style: TextStyle(
                color: Color(0XFFFFFFFF),
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
        ),
      ),

      body: HospitalsBody(),
    );
  }
}
