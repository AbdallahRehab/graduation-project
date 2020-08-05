

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:graduteproject/Hospital/Model/hospital.dart';


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
          latitude: doc.data['latitude'] ?? '',
          longitude: doc.data['longitude'] ?? '',
          total_num: doc.data['total_num'] ?? 0,
          available_num: doc.data['available_num'] ?? 0
      );
    }).toList();

  }

  Stream<List<Hospital>> get getHospitals{
    return ref.snapshots().map(getListFormSnapshot);
  }
}