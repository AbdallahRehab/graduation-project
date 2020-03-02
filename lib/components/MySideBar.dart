import 'package:flutter/material.dart';

class MySideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      child: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              height: 120,
              child: DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Baby Care",
                      style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 24),
                    ),
                  ),
                  IconButton(icon: Icon(Icons.settings,color: Colors.white,), onPressed: (){})

                ],

              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0XFF00BBFF),Color(0XFF0098FF),Color(0XFF001255)],
                  )

              ),
          ),
            ),

            drawerItems(context, Icons.home, "Home"),
            drawerItems(context, Icons.healing, "Nursies"),
            drawerItems(context, Icons.fastfood, "Nutrition"),
            drawerItems(context, Icons.healing, "Vacction"),
            Divider(),
            drawerItems(context, Icons.phone, "contacts"),
            drawerItems(context, Icons.help, "about")

          ],
        ),

      ),
    );


  }
}
Widget drawerItems(BuildContext,IconData icon,String name){
  return InkWell(
    onTap: (){},
    child: ListTile(
      leading: Icon(icon),
      title: Text(name,),
    ),
  );
}
