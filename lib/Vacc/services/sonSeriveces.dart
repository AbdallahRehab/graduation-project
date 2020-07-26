import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:graduteproject/Vacc/models/SonModel.dart';

class SonServices{


  final CollectionReference collectionReference=Firestore.instance.collection('Son');





//  Future<List <Son>> getListOfSons(QuerySnapshot snapshot,final List<dynamic> reference) async{
//    return await collectionReference.document(reference[0].toString()).get().asStream().map((doc){
//      return Son(
//        national_id: doc.data['national_id'] ?? '',
//        son_name: doc.data['son_name'] ?? ''
//      );
//    }).toList();
//  }
//  Stream<List<Son>> get getSons{
//    return collectionReference.snapshots().map(getListOfSons);
//  }



}