import 'package:flutter/material.dart';
import 'package:graduteproject/Vacc/screens/oneChildDetails.dart';


class ChildsDataBody extends StatelessWidget {
  var cList=[
    {
      "name" : "احمد",
      "age" :"2",
      "birthDate": "2/4/2018"
      
    },
    {
      "name" : "عاصم",
      "age" :"2",
      "birthDate": "2/4/2018"

    },
    {
      "name" : "عبدالرحمن",
      "age" :"2",
      "birthDate": "2/4/2018"

    },
    
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height/1.15,
        padding: EdgeInsets.only(top: 30),
        child: ListView.builder(
          itemCount: cList.length ,
          itemBuilder: (context,index){
            return ChildCard(
              name: cList[index]['name'],
              age: cList[index]['age'],
            );
          },
        ),
      ),
    );
  }
}

class ChildCard extends StatelessWidget {
  final String name;
  final String age;

  ChildCard({this.name, this.age});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20,20,20,5),
      child: InkWell(
        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => OneChildDetails(name: name,)));},
        child: Container(

          height: MediaQuery.of(context).size.height/7,

          child: Card(

            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
            ),
            elevation: 6.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(20, 25, 20, 25),
                  width: MediaQuery.of(context).size.width/8,
                  height:  MediaQuery.of(context).size.height/8,

                  child: Icon(Icons.child_care, color: Color(0XFFFBD14B),size: 32,),
                ),

                Container(
                  margin: EdgeInsets.only(right: 30),
                  alignment: Alignment.centerRight,
                  child: Text(name,textAlign: TextAlign.right,style:TextStyle(color:Colors.black,fontSize: 20)),
                ),


               

              ],
            ),
          ),
        ),
      ),
    );
  }
}

