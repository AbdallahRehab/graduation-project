import 'package:flutter/material.dart';
class ChildernBody extends StatefulWidget {
  @override
  _ChildernBodyState createState() => _ChildernBodyState();
}

class _ChildernBodyState extends State<ChildernBody> {
  var childLists=[
    {

  "name" :"Ahmed",
  "gender" :"Male",
  "age":"6 Months",
  },
    {

      "name" :"Dina",
      "gender" :"Female",
      "age":"3 years",
    },
    {

      "name" :"Dina",
      "gender" :"Female",
      "age":"3 years",
    },
    {

      "name" :"Dina",
      "gender" :"Female",
      "age":"3 years",
    },
    {

      "name" :"Dina",
      "gender" :"Female",
      "age":"3 years",
    },
    {

      "name" :"Ahmed",
      "gender" :"Male",
      "age":"6 Months",
    },
    {

      "name" :"Dina",
      "gender" :"Female",
      "age":"3 years",
    },
    {

      "name" :"Dina",
      "gender" :"Female",
      "age":"3 years",
    },
    {

      "name" :"Dina",
      "gender" :"Female",
      "age":"3 years",
    },
    {

      "name" :"Dina",
      "gender" :"Female",
      "age":"3 years",
    },

  ];
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
              margin: EdgeInsets.only(top:120 ),

              height: MediaQuery.of(context).size.height - 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 3),
                child: ListView.builder(
                  itemCount: childLists.length,
                    itemBuilder: (BuildContext context,int index){
                    return SingleChild(
                      childname: childLists[index]['name'],
                      gender: childLists[index]['gender'],
                    );

                    }),
              ),

            )
          ],
        ),
      ),
    );
  }
}
class SingleChild extends StatelessWidget{

  final childname;
  final gender;
  final age;


  SingleChild({this.childname, this.gender, this.age});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(


      padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),

        ),
        elevation: 12.0,
        color: Colors.yellowAccent,

        child: InkWell(
          onTap: (){},
          child: ListTile(
            leading: Icon(Icons.child_care,size: 40),
            title: Text(childname,),
            subtitle: Text(gender),
            trailing: IconButton(icon:Icon(Icons.delete),onPressed: (){},),
          ),
        ),
      ),
    );
  }


}
