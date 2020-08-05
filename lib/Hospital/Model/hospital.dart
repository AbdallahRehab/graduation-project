

import 'package:cloud_firestore/cloud_firestore.dart';

class Hospital{


  final String hospital_name;
  final String city;
  final String location;
  final String email;
  final String phone;
  final String governorate;
  final  latitude;
  final  longitude;
  //final corrds;
  final int available_num;
  final int total_num;
  //final DocumentReference per; .get().namevalue
  //yatsyast
  //uryryry


  Hospital({ this.hospital_name, this.city, this.location, this.email,
      this.phone,this.governorate,this.latitude,this.longitude,this.available_num, this.total_num});

  Hospital.fromJson(Map<String, dynamic> parsedJson)
      : hospital_name = parsedJson['hospital_name'],
        city = parsedJson['city'],
        location = parsedJson['location'],
        phone = parsedJson['phone'],
        governorate = parsedJson['governorate'],
        latitude = parsedJson['latitude'],
        longitude = parsedJson['longitude'],
        total_num = parsedJson['total_num'],
        available_num = parsedJson['available_num'],
        email = parsedJson['email'];
//  Hospital.fromJson(Map<String, dynamic> parsedJson)
//      : hospital_name = parsedJson['hospital_name'],
//        city = parsedJson['city'],
//        location = parsedJson['location'],
//        phone = parsedJson['phone'],
//        governorate = parsedJson['governorate'],
//        latitude = parsedJson['latitude'],
//        corrds = parsedJson['corrds'],
//        longitude = parsedJson['longitude'],
//        available_num = parsedJson['available_num'],
//        total_num = parsedJson['total_num'],
//        email = parsedJson['email'];


}