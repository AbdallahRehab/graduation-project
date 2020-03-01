import 'package:flutter/material.dart';
import 'package:graduteproject/components/myBar.dart';

class NurseiesScreen extends StatefulWidget {
  @override
  _NurseiesScreenState createState() => _NurseiesScreenState();
}

class _NurseiesScreenState extends State<NurseiesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: MyBar(),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),

    );
  }
}
//amin
//rehab