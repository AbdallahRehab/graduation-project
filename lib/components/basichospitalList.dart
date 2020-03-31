import 'package:flutter/material.dart';
import 'package:graduteproject/components/hospitalCard.dart';
import 'package:graduteproject/components/loadingSpin.dart';
import 'package:graduteproject/models/hospital.dart';
import 'package:graduteproject/services/hospitalservices.dart';
import 'package:provider/provider.dart';

class BasicHospitalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final hospitals=Provider.of<List<Hospital>>(context);
    return Container(
      height: MediaQuery.of(context).size.height - 220,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))
      ),

//
      child: StreamBuilder(
          stream: HospitalServices().getHospitals,
          builder:(context,snapshot) {
            if(snapshot.hasData){
              return ListView.builder(
                  itemCount: hospitals.length,
                  itemBuilder: (BuildContext context, int index) {
                    return HospitalCard(
                        hospital: hospitals[index]);
                  });}
            else{
              print("ddddddd");
              return Center(
                child:Loading(),
              );

            }

          }
      ),


    );
  }
}
