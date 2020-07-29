import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduteproject/Vacc/screens/ChildsData.dart';
import 'package:graduteproject/Vacc/screens/VaccDetails.dart';

class VaccBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height/1.15,
        width: double.infinity,
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(left: 20,right: 20,),
            child: Column(
              children: <Widget>[
                SizedBox(height: MediaQuery.of(context).size.height/7,),
                CardContent(imageUrl: "images/paper.png",name: "تفاصيل التطيعمات",navigate: (){Navigator.push(context, MaterialPageRoute(builder: (context) => VaccDetails()));},),
                SizedBox(height: 20,),
                CardContent(imageUrl: "images/fatherhood.png",name: "بيانات اطفالي",navigate: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ChildsData()));},),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class CardContent extends StatelessWidget {
  final String imageUrl;
  final String name;
  final Function navigate;

  CardContent({this.imageUrl, this.name, this.navigate});

  @override
  Widget build(BuildContext context) {
    return Container(

      height: MediaQuery.of(context).size.height/4,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        color: Color(0XFF6A60A9),
        elevation: 6.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20),
              width: MediaQuery.of(context).size.width/4,
              height: MediaQuery.of(context).size.height/8,
              child: Container(
                width: MediaQuery.of(context).size.width/7,
                height: MediaQuery.of(context).size.height/8.2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imageUrl),

                        fit: BoxFit.cover
                    )
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20,right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Container(
                      child: Text(name,textAlign: TextAlign.right,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    ),
                  ),
                  RaisedButton(
                    onPressed: navigate,
                    color: Color(0XFFFBD14B),


                    child: Text(
                      "عرض الكل",
                      style: TextStyle(color: Colors.white),
                    ),

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}

