import 'package:flutter/material.dart';

class HospitalBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            decoration: BoxDecoration(
              color: Color(0XFF015668),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 120,
                ),
                Container(
                  height: MediaQuery.of(context).size.height - 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(90),
                          topRight: Radius.circular(90))),
                  child: Padding(
                    padding: EdgeInsets.only(left: 60,right: 60),
                    child: Column(
                      children: <Widget>[
                       Container(

                         child: ClipOval(

                           child: Material(
                             color: Colors.grey,

                             child: InkWell(
                               child: Icon(Icons.location_on,size: 35,color: Color(0XFF015668),),
                             ),
                           ),
                         ),
                         width: 60,
                         height: 60,

                       ),
                        SizedBox(height: 15,),
                        Text(
                          "Hospital name",
                          style:
                          TextStyle(fontWeight: FontWeight.w800, color: Color(0XFF015668)),
                        ),
                        SizedBox(height: 20,),

                        bodyContent("City :", "Cairo"),
                        bodyContent("Address :", "13 Nasr City Cairo"),
                        bodyContent("Phone :", "0122304056"),
                        bodyContent("Total Nurseies :", "12"),
                        bodyContent("Availble Nuresies :", "4"),
                        SizedBox(height: 20,),
                        Row(
                          children: <Widget>[
                            IconButton(icon:Icon(Icons.star,color:  Color(0XFFFFC107),size: 30),onPressed: (){},),
                            IconButton(icon:Icon(Icons.star,color:  Color(0XFFFFC107),size: 30),onPressed: (){},),
                            IconButton(icon:Icon(Icons.star,color:  Color(0XFFFFC107),size: 30),onPressed: (){},),
                            IconButton(icon:Icon(Icons.star,color:  Color(0XFFFFC107),size: 30),onPressed: (){},),
                            IconButton(icon:Icon(Icons.star,color:  Color(0XFFFFC107),size: 30),onPressed: (){},),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            )));
  }
}

Widget bodyContent(String key, String value) {
  return Padding(
      padding: EdgeInsets.fromLTRB(5, 25, 5, 0),
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
