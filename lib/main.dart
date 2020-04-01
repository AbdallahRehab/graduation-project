import 'package:flutter/material.dart';
import 'package:graduteproject/Screens/GoogleNavBar.dart';
import 'package:graduteproject/Screens/childernScreen.dart';
import 'package:graduteproject/Screens/homepage.dart';
import 'package:graduteproject/Screens/hospitalDetails.dart';
import 'package:graduteproject/Screens/login.dart';
import 'package:graduteproject/Screens/splashScreen.dart';
import 'package:graduteproject/provider/settings_provider.dart';
import 'package:graduteproject/services/hospitalservices.dart';
import 'package:provider/provider.dart';

import 'Screens/nureiesScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final HospitalServices _db=HospitalServices();
    return MultiProvider(

      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => SettingsProdiver(),
        ),
        StreamProvider(create: (BuildContext context)=>_db.getHospitals,),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: NurseiesScreen(),
      ),
    );
  }
}
