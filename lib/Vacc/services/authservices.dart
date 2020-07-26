import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:graduteproject/Vacc/models/usermodel.dart';

class AuthServices extends ChangeNotifier{

final FirebaseAuth auth=FirebaseAuth.instance;




//Future<FirebaseUser> signInWithEmailAndPassword(String email,String password) async{
//  try{
//
//    AuthResult result=await auth.signInWithEmailAndPassword(email: email, password: password).then((currentUser)
//    =>Firestore.instance.collection("User").document(currentUser.user.uid).get());
//
//
//    notifyListeners();
//    return null;
//  }catch(e){
//    print(e.toString());
//  }
//}

Future signout() async{
  try{
    var result= await auth.signOut();
    notifyListeners();
    return result;
  }catch(e){
    print(e.toString());
  }

}
}