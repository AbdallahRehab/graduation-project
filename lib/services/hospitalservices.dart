

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:graduteproject/models/hospital.dart';

class HospitalServices{
  
  
  final CollectionReference ref=Firestore.instance.collection('Hospital');

  List<Hospital> getListFormSnapshot(QuerySnapshot snapshot){
    return snapshot.documents.map((doc){
      return Hospital(
          hospital_name: doc.data['hospital_name'] ?? '',
          city: doc.data['city'] ?? '',
          location: doc.data['location'] ?? '',
          email: doc.data['email'] ?? '',
          phone: doc.data['phone'] ?? '',
          governorate: doc.data['governorate'] ?? '',
          total_num: doc.data['total_num'] ?? 0,
          available_num: doc.data['available_num'] ?? 0
      );
    }).toList();

  }

  Stream<List<Hospital>> get getHospitals{
    return ref.snapshots().map(getListFormSnapshot);
  }
  // search by city 

  Stream<List<Hospital>> getHospitalByCity (String city) {
    return ref.where("city",isEqualTo: city).snapshots().map(getListFormSnapshot);

  }



}