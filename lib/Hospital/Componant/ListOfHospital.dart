import 'package:flutter/material.dart';
import 'package:graduteproject/Hospital/Componant/HosCard.dart';

import 'package:graduteproject/Hospital/Model/hospital.dart';
import 'package:graduteproject/Hospital/Service/hospitalservices.dart';
import 'package:graduteproject/Hospital/Service/settings_provider.dart';

import 'package:provider/provider.dart';

class ListOfHospitals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var hospitals = Provider.of<List<Hospital>>(context);
    SettingsProdiver settings = Provider.of<SettingsProdiver>(context);
    var hospitals = Provider.of<List<Hospital>>(context).where((hospital) {

      return settings.waxLines.contains(hospital.governorate);
    }).toList();

    return StreamBuilder(
        stream: HospitalServices().getHospitals,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: new Text("CONNECTING....."));
          }
          return ListView.builder(
              itemCount: hospitals.length,
              itemBuilder: (context, index) {
                Hospital report = hospitals[index];

                return HosCard(hospital: hospitals[index]);
              });
        });

//     child: StreamBuilder(
//         stream: HospitalServices().getHospitals,
//         builder:(context,snapshot) {
//           if(snapshot.hasData){
//             return ListView.builder(
//                 itemCount: hospitals.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return HospitalCard(
//                       hospital: hospitals[index]);
//                 });}
//           else{
//             print("ddddddd");
//             return Center(
//               child:Loading(),
//             );
//
//           }
//
//         }
//
//       ),
//     );
  }
}
