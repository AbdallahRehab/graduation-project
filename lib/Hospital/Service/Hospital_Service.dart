import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:graduteproject/Hospital/Model/hospital.dart';

class HospitalService{
  Firestore _db = Firestore.instance;

  Stream<List<Hospital>> getDatafromHospital() {
    return _db
        .collection('Hospital')
        .snapshots()
        .map((snapshot) => snapshot.documents
        .map((document) => Hospital.fromJson(document.data))
        .toList());
  }
}