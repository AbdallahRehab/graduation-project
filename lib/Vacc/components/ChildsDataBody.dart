import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:graduteproject/Vacc/screens/oneChildDetails.dart';


//class ChildsDataBody extends StatelessWidget {
//  String uid="";
//  String nationalparant="";
//  var cList=[
//    {
//      "name" : "احمد",
//      "age" :"2",
//      "birthDate": "2/4/2018"
//
//    },
//    {
//      "name" : "عاصم",
//      "age" :"2",
//      "birthDate": "2/4/2018"
//
//    },
//    {
//      "name" : "عبدالرحمن",
//      "age" :"2",
//      "birthDate": "2/4/2018"
//
//    },
//
//  ];
//
//  @override
//  Widget build(BuildContext context) {
//    getid();
//
//    return SingleChildScrollView(
//      child: Container(
//        color: Colors.white,
//        height: MediaQuery.of(context).size.height/1.15,
//        padding: EdgeInsets.only(top: 30),
//        child: StreamBuilder(
//
//          stream: Firestore.instance.collection('Son').where("parent_national_id", isEqualTo: nationalparant).snapshots(),
//          builder: (context,snapshots){
//            if (!snapshots.hasData) {
//              return Center(child: new Text("CONNECTING....."));
//            }
//            return ListView.builder(
//              itemCount: snapshots.data.documents.length,
//             // itemCount: cList.length ,
//              itemBuilder: (context,index){
//                DocumentSnapshot ds =
//                snapshots.data.documents[index];
//
//                return ChildCard(
//                  name: ds['son_name'],
//                 // name: cList[index]['name'],
//                  age: cList[index]['age'],
//                );
//              },
//            );
//          },
//        )
//      ),
//    );
//  }
// void getid()async{
//    FirebaseUser user =await FirebaseAuth.instance.currentUser();
//    uid=user.uid;
//    print(uid);
//    getnationalid();
//
// }
// void getnationalid()async{
//   //print(uid);
//    DocumentSnapshot documentSnapshot=await Firestore.instance.collection("User").document(uid).snapshots().first ;
////   QuerySnapshot documentSnapshots=await Firestore.instance.collection('User').where("usertoken", isEqualTo: uid).snapshots().first;
//  print(documentSnapshot.data['national_id']);
//
//   nationalparant=documentSnapshot.data['national_id'];
////   print(nationalparant);
// }
//}
class ChildsDataBody extends StatefulWidget {

  final String nationalparant;

  const ChildsDataBody({Key key,  this.nationalparant}) : super(key: key);


  @override
  _ChildsDataBodyState createState() => _ChildsDataBodyState();
}

class _ChildsDataBodyState extends State<ChildsDataBody> {

//  String uid="";
//  String nationalparant="";
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    //getid();
  }
  @override
  Widget build(BuildContext context) {
//    setState(() {
//      getid();
//    });
    return  SingleChildScrollView(
      child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height/1.15,
          padding: EdgeInsets.only(top: 30),
          child: StreamBuilder(

            stream: Firestore.instance.collection('Son').where("parent_national_id", isEqualTo: widget.nationalparant).snapshots(),
            builder: (context,snapshots){
              if (!snapshots.hasData) {
                return Center(child: new Text("CONNECTING....."));
              }
              return ListView.builder(
                itemCount: snapshots.data.documents.length,
                // itemCount: cList.length ,
                itemBuilder: (context,index){
                  DocumentSnapshot ds =
                  snapshots.data.documents[index];
                  //print(ds['vaccination']);
                  return ChildCard(
                    name: ds['son_name'],
                    vaccination: ds['vaccination'],
                    // name: cList[index]['name'],
                    //age: cList[index]['age'],
                  );
                },
              );
            },
          )
      ),
    );
  }
//  void getid()async{
//    FirebaseUser user =await FirebaseAuth.instance.currentUser();
//    uid=user.uid;
//    print(uid);
//    getnationalid();
//
//  }
//  void getnationalid()async{
//    //print(uid);
//    DocumentSnapshot documentSnapshot=await Firestore.instance.collection("User").document(uid).snapshots().first ;
////   QuerySnapshot documentSnapshots=await Firestore.instance.collection('User').where("usertoken", isEqualTo: uid).snapshots().first;
//    print(documentSnapshot.data['national_id']);
//
//    nationalparant=documentSnapshot.data['national_id'];
////   print(nationalparant);
//  }
}

class ChildCard extends StatelessWidget {
  final String name;
   var vaccination;

  ChildCard({this.name, this.vaccination, });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20,20,20,5),
      child: InkWell(
        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => OneChildDetails(name: name,vaccination: vaccination,)));},
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

