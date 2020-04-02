import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduteproject/Hospital/Model/hospital.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';



class HospitalBody extends StatefulWidget {
  @override
  _HospitalBodyState createState() => _HospitalBodyState();
  final Hospital hospital;

  HospitalBody({this.hospital});
}

class _HospitalBodyState extends State<HospitalBody> {
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            decoration: BoxDecoration(
              color: Color(0XFF015668),
            ),
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 120),
                  height: MediaQuery.of(context).size.height - 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 45,
                        ),
                        Text(
                          widget.hospital.hospital_name,
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Color(0XFF015668),
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        bodyContent("City :", widget.hospital.city),
                        bodyContent("Address :", widget.hospital.location),
                        bodyContent("Phone :", widget.hospital.phone),
                        bodyContent("Total Nurseies :",
                            widget.hospital.total_num.toString()),
                        bodyContent("Availble Nuresies :",
                            widget.hospital.available_num.toString()),
                        SizedBox(
                          height: 20,
                        ),
                        SmoothStarRating(
                            allowHalfRating: false,
                            onRatingChanged: (v) {
                              rating = v;
                              setState(() {
                                print(v);
                              });
                            },
                            starCount: 5,
                            rating: rating,
                            size: 40.0,
                            filledIconData: Icons.star,
                            halfFilledIconData: Icons.star_half,
                            color: Colors.green,
                            borderColor: Colors.green,
                            spacing: 0.0)
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 90,
                  child: Container(
                    child: ClipOval(
                      child: Material(
                        color: Colors.grey[300],
                        child: InkWell(
                          child: Icon(
                            Icons.location_on,
                            size: 40,
                            color: Color(0XFF015668),

                          ),
                          onTap: ()=> openMapsSheet(context,widget.hospital),
//                              Navigator.of(context)
//                              .push(MaterialPageRoute(builder: (context) => MapLauncherDemo())),
                        ),
                      ),
                    ),
                    width: 60,
                    height: 60,
                  ),
                ),
              ],
            )));
  }

  openMapsSheet(context,Hospital hosptail) async {
    try {
      //final title = "Shibīn al Kawm";
      //final description = "Asia's tallest building";
      //var hospital=hosptail;
      //final coords = hosptail.coords[1];
      final coords = Coords(hosptail.latitude,hosptail.longitude);
      final dd=hosptail.latitude;
      final ww=hosptail.longitude;


      print('eeeeeee $dd------- $ww');

      final availableMaps = await MapLauncher.installedMaps;

      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Container(
                child: Wrap(
                  children: <Widget>[
                    for (var map in availableMaps)
                      ListTile(
                        onTap: () => map.showMarker(
                          coords: coords,

                          //title: title,
                          //description: description,
                        ),
                        title: Text(map.mapName),
                        leading: Image(
                          image: map.icon,
                          height: 30.0,
                          width: 30.0,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    } catch (e) {
      print(e);
    }
  }


  Widget bodyContent(String key, String value) {
    return Padding(
        padding: EdgeInsets.fromLTRB(5, 30, 20, 5),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                key,
                style: TextStyle(
                    fontWeight: FontWeight.w800, color: Color(0XFF015668)),
              ),
              Text(
                value,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                ),
              )
            ]));
  }
}

Widget bodyContent(String key, String value) {
  return Padding(
      padding: EdgeInsets.fromLTRB(5, 30, 5, 5),
      child: SingleChildScrollView(
        child: Row(children: <Widget>[
          Expanded(
            child: Text(
              key,
              style: TextStyle(
                  fontWeight: FontWeight.w800, color: Color(0XFF015668)),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.w800,
            ),
          )
        ]),
      ));
}
