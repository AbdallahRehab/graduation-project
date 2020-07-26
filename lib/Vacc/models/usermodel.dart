
import 'package:cloud_firestore/cloud_firestore.dart';

class User{

  final String uid;
  final String email;
  final String national_id;
  final String parent_address;
  final String parent_name;
  final String parent_phone;
  final moreson;
  final DocumentReference sons;

  User({this.uid, this.email, this.national_id, this.parent_address,
      this.parent_name, this.parent_phone,this.sons,this.moreson});


}