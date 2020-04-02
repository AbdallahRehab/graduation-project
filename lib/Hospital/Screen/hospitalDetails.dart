import 'package:flutter/material.dart';
import 'package:graduteproject/Hospital/Componant/hospitalBody.dart';
import 'package:graduteproject/Hospital/Model/hospital.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class HospitalDetails extends StatefulWidget {
  final Hospital hospital;

  HospitalDetails({this.hospital});

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
          title: Text(widget.hospital.hospital_name,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 25)),
          ),
      body: HospitalBody(hospital: widget.hospital,),

    );
  }

}
