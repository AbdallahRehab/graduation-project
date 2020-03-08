import 'package:flutter/material.dart';
import 'package:graduteproject/Screens/nureiesScreen.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 5,
        navigateAfterSeconds: new NurseiesScreen(),
        title: new Text('Build your Child\'s life properly',
          style: new TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20.0,
            color: Color(0XFF015668),
          ),),
        image: new Image.asset("images/splash.jpeg"),
        backgroundColor: Colors.white,
        loadingText: Text("Loading ...",
        style: TextStyle(color: Color(0XFFFC9634),fontWeight: FontWeight.w600),),
        photoSize: 180.0,
      loaderColor: Colors.transparent,

    );
  }
}
