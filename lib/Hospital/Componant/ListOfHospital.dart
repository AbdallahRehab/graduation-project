import 'package:flutter/material.dart';
import 'package:graduteproject/Hospital/Componant/hospitalCard.dart';
import 'package:graduteproject/Hospital/Model/hospital.dart';
import 'package:graduteproject/Hospital/Service/hospitalservices.dart';
import 'package:graduteproject/Hospital/Service/settings_provider.dart';
import 'package:graduteproject/components/loadingSpin.dart';
import 'package:provider/provider.dart';

class ListOfHospitals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var hospitals = Provider.of<List<Hospital>>(context);
    SettingsProdiver settings = Provider.of<SettingsProdiver>(context);
//    var hospitals = Provider.of<List<Hospital>>(context)
//        .where((hospital) => settings.waxLines.contains(hospital.governorate))
//        .toList();
//   return Container(
//     height: MediaQuery.of(context).size.height/1.7,

    return ListView.builder(
        itemCount: hospitals.length,
        itemBuilder: (context, index) {
          Hospital report = hospitals[index];
          return HospitalCard(hospital: hospitals[index]);
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
