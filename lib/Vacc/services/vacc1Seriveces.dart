import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:graduteproject/Vacc/models/vaccinationModel.dart';

class Vacc1Seriveces {
  final CollectionReference ref = Firestore.instance.collection('Vaccination');

  List<Vaccination> getListFormSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Vaccination(
        range_age: doc.data['range_age'] ?? '',
        side_effect: doc.data['side_effect'] ?? '',
        vacc_name: doc.data['vacc_name'] ?? '',
        order: doc.data['order'] ?? 0,
      );
    }).toList();
  }

  Stream<List<Vaccination>> get getvacc{
    return ref.snapshots().map(getListFormSnapshot);
  }
}
