import 'package:flutter/material.dart';
import 'package:graduteproject/Screens/GoogleNavBar.dart';
import 'package:graduteproject/Vacc/screens/childernScreen.dart';
import 'package:graduteproject/Screens/homepage.dart';


import 'package:graduteproject/Screens/splashScreen.dart';
import 'package:graduteproject/Vacc/screens/mainVacc.dart';
import 'package:graduteproject/Vacc/services/authservices.dart';
import 'package:provider/provider.dart';


import 'Food/Screen/food.dart';
import 'Food/Screen/sys_food.dart';
import 'Hospital/Screen/nureiesScreen.dart';
import 'Hospital/Service/settings_provider.dart';
import 'Screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => SettingsProdiver(),
        ),
        ChangeNotifierProvider(create:(BuildContext context) => AuthServices() ),

//StreamProvider(create: (BuildContext context)=>_db.getHospitals,),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainVaccScreen(),
      ),
    );
  }
}
