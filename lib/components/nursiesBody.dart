import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduteproject/Screens/hospitalDetails.dart';
class MyBody extends StatelessWidget {
  TextEditingController _textFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return
        SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0XFF015668),
//              gradient: LinearGradient(
//                begin: Alignment.topCenter,
//                  end: Alignment.bottomCenter,
//                  colors: [Color(0XFF00BBFF),Color(0XFF0098FF),Color(0XFF001255)],

            ),
            child: Column(
              children: <Widget>[
                Container(


                    padding: EdgeInsets.fromLTRB(20, 20, 20, 30),
                  child: TextField(
                    maxLines: 1,
                      controller: _textFieldController,
                    decoration: InputDecoration(
                      //Add th Hint text here.
                      hintText: "Enter Hospital",
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(Icons.search),

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0)

                  ),

                ),

                  )),
                SizedBox(height: 30,),
                Container(
                  height: MediaQuery.of(context).size.height - 220,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))
                  ),

                  child: ListView(
                    children: <Widget>[
                      myListTile(context, "Cairo", "Hospital1", 5),
                      myListTile(context, "Cairo", "Hospital2", 5),
                      myListTile(context, "Cairo", "Hospital3", 3.8),
                      myListTile(context, "Cairo", "Hospital4", 4),
                      myListTile(context, "Cairo", "Hospital1", 5),
                      myListTile(context, "Cairo", "Hospital2", 5),
                      myListTile(context, "Cairo", "Hospital3", 3.8),
                      myListTile(context, "Cairo", "Hospital4", 4),


                    ],
                  ),
                )
              ],

            ),
          ),
        );

  }
}
Widget myListTile(BuildContext context,String city,String name,double rate){
  return Padding(
    padding: EdgeInsets.fromLTRB(20,20,20,5),
    child: Container(
      height: 80,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        elevation: 6.0,
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> HospitalDetails(name: name,city: city,rate: rate,)));
          },
          child: ListTile(
            leading: Icon(Icons.local_hospital,size: 35,),
            title: Text(name,style: TextStyle(color: Color(0XFF015668)),),
            subtitle: Text(city,style: TextStyle(color: Color(0XFFFFC107)),),
            trailing: Wrap(
              spacing: 1,
              children: <Widget>[
                Text(rate.toString()),
                Icon(Icons.star,color:  Color(0XFFFFC107),size: 14,),
              ],)



          ),
        ),
      ),
    ),
  );
}
