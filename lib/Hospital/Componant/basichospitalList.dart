import 'package:flutter/material.dart';
import 'package:graduteproject/Hospital/Componant/hospitalCard.dart';
import 'package:graduteproject/components/loadingSpin.dart';
import 'package:graduteproject/Hospital/Model/hospital.dart';
import 'package:graduteproject/Hospital/Service/settings_provider.dart';
import 'package:graduteproject/Hospital/Service/hospitalservices.dart';
import 'package:provider/provider.dart';

class BasicHospitalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final hospitals=Provider.of<List<Hospital>>(context);

    SettingsProdiver settings = Provider.of<SettingsProdiver>(context);
    var hospitals = Provider.of<List<Hospital>>(context)
        .where((hospital) => settings.waxLines.contains(hospital.governorate))
        .toList();
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
