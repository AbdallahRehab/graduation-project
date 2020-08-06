import 'package:avatar_glow/avatar_glow.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';


class VaccTaken extends StatefulWidget {
  @override
  _VaccTakenState createState() => _VaccTakenState();
}

class _VaccTakenState extends State<VaccTaken> {
  var listd =[
    {
      "name" : "ahmed",
      "age": "24",

    },
    {
      "name" : "ahmed",
      "age": "23",

    },
    {
      "name" : "ahmed",
      "age": "22",

    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF015668),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    AvatarGlow(
                      startDelay: Duration(milliseconds: 1000),
                      glowColor: Colors.cyanAccent,
                      endRadius: 80.0,
                      duration: Duration(milliseconds: 2000),
                      repeat: true,
                      showTwoGlows: true,
                      repeatPauseDuration: Duration(milliseconds: 100),
                      child: Material(
                        elevation: 8.0,
                        shape: CircleBorder(),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/asseem.jpg',
                            height: 80,
                          ),

                          //shape: BoxShape.circle
                        ),
                      ),
                      shape: BoxShape.circle,
                      animate: true,
                      curve: Curves.fastOutSlowIn,
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FutureBuilder(
                      future: FirebaseAuth.instance.currentUser(),
                      builder: (context,user){
                        if(user.connectionState==ConnectionState.waiting){
                          return Container();
                        }else{
                          return Text(user.data.displayName.toString(),style: TextStyle(fontSize: 28,fontWeight: FontWeight.w800,color: Colors.white),);
                        }
                      },
                    ),

                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),),
                    color:Colors.white,
                  ),

                  height: MediaQuery.of(context).size.height - 200,

                 child: ListView.builder(
                     itemCount: listd.length,
                     itemBuilder: (BuildContext context,  int index) {
                       return SingleChild(
                         childname: listd[index]['name'],
                         age:listd[index]['age'],
                       );


                     }),
                )],
                 ),
               ] ),

            ),

        );

  }
}
class SingleChild extends StatelessWidget {
  final childname;
  final age;

  SingleChild({this.childname, this.age});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: ExpansionTileCard(
        leading: CircleAvatar(child: Icon(Icons.lock_open)),
        title: Text('This is item #$childname'),
        subtitle: Text('Tap to see more!'),
        children: <Widget>[
          Divider(
            thickness: 1.0,
            height: 1.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Text(
                """Hi there, I'm a drop-in replacement for Flutter's ExpansionTile.

Use me any time you think your app could benefit from being just a bit more Material.""",
                style: Theme.of(context)
                    .textTheme
                    .body1
                    .copyWith(fontSize: 16),
              ),
            ),
          ),
//          ButtonBar(
//            alignment: MainAxisAlignment.spaceAround,
//            buttonHeight: 52.0,
//            buttonMinWidth: 90.0,
//            children: <Widget>[
//              FlatButton(
//                shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(4.0)),
//                onPressed: () {},
//                child: Column(
//                  children: <Widget>[
//                    Icon(Icons.star),
//                    Padding(
//                      padding: const EdgeInsets.symmetric(vertical: 2.0),
//                    ),
//                    Text('Save'),
//                  ],
//                ),
//              ),
//              FlatButton(
//                shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(4.0)),
//                onPressed: () {},
//                child: Column(
//                  children: <Widget>[
//                    Icon(Icons.open_in_browser),
//                    Padding(
//                      padding: const EdgeInsets.symmetric(vertical: 2.0),
//                    ),
//                    Text('Open'),
//                  ],
//                ),
//              ),
//              FlatButton(
//                shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(4.0)),
//                onPressed: () {},
//                child: Column(
//                  children: <Widget>[
//                    Icon(Icons.share),
//                    Padding(
//                      padding: const EdgeInsets.symmetric(vertical: 2.0),
//                    ),
//                    Text('Share'),
//                  ],
//                ),
//              ),
//            ],
//          ),
        ],
      ),
    );
  }
}

