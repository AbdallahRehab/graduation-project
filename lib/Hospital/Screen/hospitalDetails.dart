import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduteproject/Hospital/Model/hospital.dart';
class HospitalDetails extends StatelessWidget {
  final Hospital hospital;

  HospitalDetails({this.hospital});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Color(0xFF3AC569),
                height: MediaQuery.of(context).size.height * 0.3,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  //margin: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/hospitalIcon.png'),
                        fit: BoxFit.cover),
                  ),
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                      InkWell(

                        child: Container(

                          //width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height*0.09,
                          padding: EdgeInsets.only(left: 8),

                          child: Icon(Icons.arrow_back_ios,color: Colors.white ,size: 30,),
                        ),
                        onTap: (){
                          print("sssss");
                        },
                      ),

                      Container(
                        padding: EdgeInsets.only(right: 8),
                        //width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height*0.09,
                        child: Center(child: Text('مستشفي سرس الليان العام',textAlign: TextAlign.right,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: 20,
            top: 130,
            child: Container(
              height: MediaQuery.of(context).size.height/1.3,

              width: MediaQuery.of(context).size.width/1.13,

              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                //color: Colors.pink,
                elevation: 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    DataRow(name: " : العنوان  ",details: "شارع المركزي سرس الليان المنوفيه",),
                    DataRow(name: " : التليفون ",details: "0401233223",),
                    DataRow(name: " : المدينة  ",details: "سرس الليان",),
                    DataRow(name: " : اجمالي عدد الحضانات  ",details: "8",),
                    DataRow(name: " : عدد الحضانات المتاحة  ",details: "4",),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35,28,35,24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          TwoButtons(statement: "اتصل بنا",myIcon: Icons.call,),
                          TwoButtons(statement: "افتح الخريطة",myIcon: Icons.location_on,)
                        ],
                      ),
                      
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/1.5,
                      height: MediaQuery.of(context).size.width/2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/hospitaldetails.png"),
                        )
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],

      ),
    );
  }
}

class DataRow extends StatelessWidget {
  final String name;
  final String details;

  DataRow({this.name, this.details});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(


            margin:EdgeInsets.only(left: 40, ) ,
            child: Text(details,textAlign: TextAlign.right,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: EdgeInsets.only(right: 28),
            child: Text(name,textAlign: TextAlign.right,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          ),

        ],
      ),
    );
  }
}

class TwoButtons extends StatelessWidget {
  final String statement;
  final IconData myIcon;

  TwoButtons({this.statement, this.myIcon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: Container(



        child: Row(
          children: <Widget>[
            Text(statement,textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,color: Color(0XFF3AC569),fontSize:16,decoration: TextDecoration.underline),),
            Icon(myIcon,color: Color(0XFF3AC569),),
          ],
        ),
      ),
    );
  }
}

