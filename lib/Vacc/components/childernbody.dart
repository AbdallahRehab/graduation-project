import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:graduteproject/Vacc/models/SonModel.dart';
import 'package:graduteproject/Vacc/services/sonSeriveces.dart';
import 'package:provider/provider.dart';

class ChildernBody extends StatefulWidget {
  @override
  _ChildernBodyState createState() => _ChildernBodyState();
  final String parent_id;

  ChildernBody({this.parent_id});

}

class _ChildernBodyState extends State<ChildernBody>{


  @override
  Widget build(BuildContext context) {
    final sons=List<Son>();
    QuerySnapshot snapshot;

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
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Container(
                alignment: Alignment.center,
//                child: FutureBuilder(
//                  future: SonServices().getListOfSons(snapshot, widget.mylist ),
//                    builder:(context,snapshot){
//                    return ListView.builder(
//                    itemCount: sons.length,
//                    itemBuilder:(BuildContext context,index){
//                      return SingleChild(
//                        son: sons[index],
//                      );
//                    });
//                    }),
                padding: EdgeInsets.only(top: 3),
//                child: ListView.builder(
//                  itemCount: childLists.length,
//                    itemBuilder: (BuildContext context,int index){
//                    return SingleChild(
//                      childname: childLists[index]['name'],
//                      gender: childLists[index]['gender'],
//                    );
//
//                    }),
              ),

            )
          ],
        ),
      ),
    );
  }
}
class SingleChild extends StatelessWidget{

  final Son son;


  SingleChild({this.son});

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
            title: Text(son.son_name,),
            subtitle: Text(son.national_id),
            trailing: IconButton(icon:Icon(Icons.delete),onPressed: (){},),
          ),
        ),
      ),
    );
  }


}
