import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:graduteproject/Screens/GoogleNavBar.dart';

import 'package:graduteproject/Screens/onboarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splashscreen/splashscreen.dart';

import '../Vacc/screens/login.dart';
import 'LoginScreen.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: FutureBuilder<Widget>(
        builder: (BuildContext context, AsyncSnapshot<Widget> snapshot) {
          if(snapshot.hasData)
            return snapshot.data;
          else
            return Container();
        },
        future: checkFirstSeen(),
      ),
      image: Image.asset("images/splashimage.png"),
      gradientBackground: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0XFF6A60A9), Color(0XFF340072)]),
      loadingText: Text(
        "... تحميل ",
        style: TextStyle(
            fontSize: 22,
            color: Color(0XFFFC9634),
            fontWeight: FontWeight.w600),
      ),
      photoSize: 200.0,
      loaderColor: Colors.transparent,
    );
  }
  Future<Widget> checkLogin() async {
    FirebaseUser user = await FirebaseAuth.instance.currentUser();
    if (user != null) {
      DocumentSnapshot documentSnapshot=await Firestore.instance.collection("User").document(user.uid).snapshots().first;
      print(documentSnapshot.data['national_id']);
      String nationalparant=documentSnapshot.data['national_id'];
      return TabPage(nationalparant: nationalparant,);
    } else {
      return Login_Screen();
    }
  }
  Future<Widget> checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      return checkLogin();
    } else {
      await prefs.setBool('seen', true);
      return OnboardingScreen();
    }
  }
}
