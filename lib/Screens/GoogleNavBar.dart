import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:graduteproject/Food/Screen/sys_food.dart';
import 'package:graduteproject/Hospital/Screen/hospital.dart';
import 'package:graduteproject/Screens/LoginScreen.dart';
import 'package:graduteproject/Vacc/screens/mainVacc.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class TabPage extends StatefulWidget {
final String nationalparant;

  const TabPage({Key key, this.nationalparant}) : super(key: key);
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int selectedIndex = 0;

  PageController controller = PageController();

  List<GButton> tabs = new List();
  List<Color> colors = [
    Colors.purple,
    Colors.pink,
    Colors.amber[600],
    Colors.teal
  ];

  @override
  void initState() {
    super.initState();

    var padding = EdgeInsets.symmetric(horizontal: 12, vertical: 5);
    double gap = 30;

    tabs.add(GButton(
      gap: gap,
      iconActiveColor: Color(0xFF6A60A9),
      iconColor: Colors.black38,
      textColor: Color(0xFF6A60A9),
      color: Color(0xFF6A60A9).withOpacity(.2),
      iconSize: 24,
      padding: padding,
      icon: Icons.local_hospital,
      // textStyle: t.textStyle,
      text: 'الحضانات ',
    ));

    tabs.add(GButton(
      gap: gap,
      iconActiveColor: Color(0xFF6A60A9),
      iconColor: Colors.black38,
      textColor: Color(0xFF6A60A9),
      color: Color(0xFF6A60A9).withOpacity(.2),
      iconSize: 24,
      padding: padding,
      icon: Icons.fastfood,
      // textStyle: t.textStyle,
      text: 'التغذية ',
    ));

    tabs.add(GButton(
      gap: gap,
      iconActiveColor: Color(0xFF6A60A9),
      iconColor: Colors.black38,
      textColor: Color(0xFF6A60A9),
      color: Color(0xFF6A60A9).withOpacity(.2),
      iconSize: 24,
      padding: padding,
      icon: Icons.child_care,
      // textStyle: t.textStyle,
      text: 'التطعيمات ',
    ));

//    tabs.add(GButton(
//      gap: gap,
//      iconActiveColor: Colors.redAccent,
//      iconColor: Colors.black38,
//      textColor: Colors.redAccent,
//      color: Colors.redAccent.withOpacity(.2),
//      iconSize: 24,
//      padding: padding,
//      icon: Icons.exit_to_app,
//      // textStyle: t.textStyle,
//      text: 'خروج ',
//    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
//        appBar: AppBar(
//          brightness: Brightness.dark,
//          title: Text(
//            'GoogleNavBar',
//            style: TextStyle(color: Colors.black),
//          ),
//          backgroundColor: Colors.white,
//        ),

        body: PageView.builder(
          onPageChanged: (page) {
            setState(() async{
              selectedIndex = page;

            });
          },
          controller: controller,
          itemBuilder: (context, position) {
            switch(position){
              case 0:
                print('asbh');
                return HospitalScreen();
                break;
              case 1:
                return Sys_Food();
                break;
              case 2:
                return MainVaccScreen(nationalparant: widget.nationalparant,);
                break;

            }

          },
          itemCount: tabs.length, // Can be null
        ),
        // backgroundColor: Colors.green,
        // body: Container(color: Colors.red,),
        bottomNavigationBar: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 2),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                      spreadRadius: -10,
                      blurRadius: 50,
                      color: Colors.black.withOpacity(.20),
                      offset: Offset(0, 12))
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
              child: GNav(
                  tabs: tabs,
                  selectedIndex: selectedIndex,
                  onTabChange: (index) {
                    print(index);
                    setState(() {
                      selectedIndex = index;
                    });
                    controller.jumpToPage(index);
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
