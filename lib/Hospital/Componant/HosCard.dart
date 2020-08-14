import 'package:flutter/material.dart';
import 'package:graduteproject/Hospital/Model/hospital.dart';
import 'package:graduteproject/Hospital/Screen/hospitalDetails.dart';

class HosCard extends StatelessWidget {
  final Hospital hospital;


  HosCard({this.hospital});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20,8,20,5),
      child: Container(

        height: MediaQuery.of(context).size.height/6.5,

        child: Card(

          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
          ),
          elevation: 6.0,
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> HospitalDetails(hospital:hospital)));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width/50,
                  height:  MediaQuery.of(context).size.height/6.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),topLeft: Radius.circular(15)),
                    color: Color(0XFFFBD14B),
                  ),
                ),

                Container(
                  alignment: Alignment.centerRight,
                  child: Text(hospital.hospital_name,style : TextStyle(fontWeight: FontWeight.bold,fontSize: 18),textAlign: TextAlign.right,),
                ),


                Container(
                  margin: EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0XFFECECEC),
                  ),

                  width: MediaQuery.of(context).size.width/5,

                  child: Container(
                    width: MediaQuery.of(context).size.width/7,
                      height: MediaQuery.of(context).size.height/10,

                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/hospitalIcon.png"),

                        fit: BoxFit.contain
                      )
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

