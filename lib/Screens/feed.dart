import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduteproject/Screens/detailsOfFeed.dart';
import 'package:graduteproject/Screens/feedTopbar.dart';
import 'package:graduteproject/components/DropDown.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF013843),
      body: Stack(
        children: <Widget>[
          FeedTopBar(),
          //SizedBox(height: 10.0,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                  child: Text(
                'Choose Range of',
                style: TextStyle(color: Color(0XFFFC9634), fontSize: 30),
              )),
              Center(
                  child: Text(
                'Your Child',
                style: TextStyle(color: Color(0XFFFC9634), fontSize: 30),
              )),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  DropDown(),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20)),
                    child: OutlineButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>DetailsOFFeed())

                          );
                        },
                        child: Text(
                          'Go',
                          style: TextStyle(
                              color: Color(0XFFFC9634),
                              fontSize: 22,
                              fontWeight: FontWeight.w900),
                        ),
                      borderSide: BorderSide(
                        color: Color(0XFFFC9634), //Color of the border
                        style: BorderStyle.solid, //Style of the border
                        width: 1.0,

                        //width of the border
                      ),
                    ),
                  ),
                ],
              ),

              //SizedBox(height: 10.0,),
            ],
          )
        ],
      ),
    );
  }
}
