import 'package:flutter/material.dart';
import 'package:graduteproject/Screens/hospitalDetails.dart';
import 'package:graduteproject/models/hospital.dart';

class HospitalCard extends StatelessWidget {
  final Hospital hospital;


  HospitalCard({this.hospital});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20,20,20,5),
      child: Container(
        height: 80,
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
          ),
          elevation: 6.0,
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> HospitalDetails(hospital:hospital)));
            },
            child: ListTile(
              leading: Icon(Icons.local_hospital,size: 35,),
              title: Text(hospital.hospital_name,style: TextStyle(color: Color(0XFF015668)),),
              subtitle: Text(hospital.city,style: TextStyle(color: Color(0XFFFFC107)),),
              trailing: Text(hospital.governorate,style: TextStyle(color: Color(0XFFFFC107)),),



            ),
          ),
        ),
      ),
    );
  }
}

