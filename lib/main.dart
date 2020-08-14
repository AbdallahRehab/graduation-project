import 'package:flutter/material.dart';
import 'package:graduteproject/Screens/splashScreen.dart';
import 'package:graduteproject/Vacc/services/authservices.dart';
import 'package:provider/provider.dart';
import 'Hospital/Service/Hospital_Service.dart';
import 'Hospital/Service/settings_provider.dart';
import 'Screens/splashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final HospitalService _db = HospitalService();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => SettingsProdiver(),
        ),
        ChangeNotifierProvider(
            create: (BuildContext context) => AuthServices()),
        StreamProvider(
          create: (BuildContext context) => _db.getDatafromHospital(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splash(),
      ),
    );
  }
}
