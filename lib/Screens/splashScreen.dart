import 'package:flutter/material.dart';
import 'package:graduteproject/Hospital/Screen/nureiesScreen.dart';
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
    return new SplashScreen(
        seconds: 5,
        navigateAfterSeconds: new Login_Screen(),

        image: new Image.asset("images/splashimage.png"),

        gradientBackground: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0XFF6A60A9),
            Color(0XFF340072)
          ]
        ) ,
        loadingText: Text("Loading ...",
        style: TextStyle(color: Color(0XFFFC9634),fontWeight: FontWeight.w600),),
        photoSize: 100.0,
      loaderColor: Colors.transparent,

    );
  }
}
