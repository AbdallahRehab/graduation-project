import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
class HospitalBody extends StatefulWidget {
  @override
  _HospitalBodyState createState() => _HospitalBodyState();
}

class _HospitalBodyState extends State<HospitalBody> {
  double rating=0;
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
                    padding: EdgeInsets.only(left: 60,right: 60,),
                    child: Column(
                      children: <Widget>[

                        SizedBox(height: 45,),
                        Text(
                          "Hospital name",
                          style:
                          TextStyle(fontWeight: FontWeight.w800, color: Color(0XFF015668),fontSize: 18),
                        ),
                        SizedBox(height: 20,),

                        bodyContent("City :", "Cairo"),
                        bodyContent("Address :", "13 Nasr City Cairo"),
                        bodyContent("Phone :", "0122304056"),
                        bodyContent("Total Nurseies :", "12"),
                        bodyContent("Availble Nuresies :", "4"),
                        SizedBox(height: 20,),
//                        Row(
//                          children: <Widget>[
//                            IconButton(icon:Icon(Icons.star,color:  Color(0XFFFFC107),size: 30),onPressed: (){},),
//                            IconButton(icon:Icon(Icons.star,color:  Color(0XFFFFC107),size: 30),onPressed: (){},),
//                            IconButton(icon:Icon(Icons.star,color:  Color(0XFFFFC107),size: 30),onPressed: (){},),
//                            IconButton(icon:Icon(Icons.star,color:  Color(0XFFFFC107),size: 30),onPressed: (){},),
//                            IconButton(icon:Icon(Icons.star,color:  Color(0XFFFFC107),size: 30),onPressed: (){},),
//                          ],
//                        )
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
                            spacing:0.0
                        )

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
                          child: Icon(Icons.location_on,size: 40,color: Color(0XFF015668),),
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
}

Widget bodyContent(String key, String value) {
  return Padding(
      padding: EdgeInsets.fromLTRB(5, 30, 5, 5),
      child: Row(children: <Widget>[
        Text(
          key,
          style:
              TextStyle(fontWeight: FontWeight.w800, color: Color(0XFF015668)),
        ),
        SizedBox(
          width: 40,
        ),
        Text(
          value,
          style: TextStyle(
            fontWeight: FontWeight.w800,
          ),
        )
      ]));
}
