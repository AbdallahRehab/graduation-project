import 'package:flutter/material.dart';
import 'package:graduteproject/components/hospitalCard.dart';
import 'package:graduteproject/components/loadingSpin.dart';
import 'package:graduteproject/models/hospital.dart';
import 'package:graduteproject/provider/settings_provider.dart';
import 'package:graduteproject/services/hospitalservices.dart';
import 'package:provider/provider.dart';

class SearchResultHospital extends StatelessWidget {
  final String city;

  SearchResultHospital(this.city);

  @override
  Widget build(BuildContext context) {
    //final hospitals=Provider.of<List<Hospital>>(context);
    SettingsProdiver settings = Provider.of<SettingsProdiver>(context);
    var hospitals = Provider.of<List<Hospital>>(context)
        .where((hospital) => settings.GovernorateLines.contains(hospital.governorate))
        .toList();
    return  Container(
      height: MediaQuery.of(context).size.height - 220,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))
      ),

//
      child: StreamBuilder(
          stream: HospitalServices().getHospitalByCity(city),
          builder:(context,snapshot) {
            if(snapshot.hasData){
              return ListView.builder(
                  itemCount: hospitals.length,
                  itemBuilder: (BuildContext context, int index) {
                    return HospitalCard(
                        hospital: hospitals[index]);
//                    Hospital hospital=hospitals[index];
//                    print(hospital.governorate);
//                  return ListTile(
//                    leading: Icon(Icons.local_hospital,size: 35,),
//                    title: Text(hospital.hospital_name,style: TextStyle(color: Color(0XFF015668)),),
//                    subtitle: Text(hospital.city,style: TextStyle(color: Color(0XFFFFC107)),),
//                    trailing: Text(hospital.governorate,style: TextStyle(color: Color(0XFFFFC107)),),
//                  );
                  });}
            else{
              print("ddd");
              return Center(
                child:Loading(),
              );

            }

          }
      ),


    );
  }
}
