import 'package:flutter/material.dart';
import 'package:graduteproject/Screens/GoogleNavBar.dart';
import 'package:graduteproject/Screens/childernScreen.dart';
import 'package:graduteproject/Screens/homepage.dart';
import 'package:graduteproject/Screens/hospitalDetails.dart';
import 'package:graduteproject/Screens/login.dart';
import 'package:graduteproject/Screens/splashScreen.dart';
import 'package:provider/provider.dart';



import 'Screens/nureiesScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: NurseiesScreen(),

      );


        }}