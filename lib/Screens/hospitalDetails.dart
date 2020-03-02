import 'package:flutter/material.dart';
import 'package:graduteproject/components/hospitalBody.dart';

class HospitalDetails extends StatefulWidget {
  final name;
  final city;
  final rate;

  HospitalDetails({this.name, this.city, this.rate});

  @override
  _HospitalDetailsState createState() => _HospitalDetailsState();
}

class _HospitalDetailsState extends State<HospitalDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0XFF015668),
          elevation: 0,
          title: Text(widget.name,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 25)),
          ),
      body: HospitalBody(),
    );
  }
}
