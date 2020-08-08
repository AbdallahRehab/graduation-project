import 'package:flutter/material.dart';
import 'package:graduteproject/Vacc/components/ChildsDataBody.dart';

class ChildsData extends StatelessWidget {
  TextEditingController name= new TextEditingController();
  TextEditingController id=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF6A60A9),
        elevation: 0,
        title: Center(
          child: Text("بيانات اطفالي",style: TextStyle(color: Color(0XFFFFFFFF),fontWeight: FontWeight.bold,fontSize: 25),),
        ),
      ),
      body: ChildsDataBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0XFFFBD14B),
        child: Icon(Icons.add,color: Colors.white,),
        onPressed: (){
          showModalBottomSheet(context: context,
            backgroundColor:  Colors.transparent,
            builder: (context) =>
                Container(
                  height: MediaQuery.of(context).size.height/2,
                  decoration: BoxDecoration(
                    color: Color(0XFF6A60A9),
                    borderRadius:BorderRadius.only(topLeft:Radius.circular(40),topRight:Radius.circular(40)),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(top: 30,bottom: 20),
                          child: Text("اضافة طفل ",textAlign: TextAlign.right,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w700),),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0XFFFBD14B),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 35, vertical: 12),
                          child: TextField(
                            controller: name,
                            textAlign: TextAlign.right,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "اسم الطفل ",
                              hintStyle: TextStyle(color: Colors.white),
                              contentPadding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                              isDense: true,
                            ),
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0XFFFBD14B),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 35, vertical: 12),
                          child: TextField(
                            controller: id,
                            textAlign: TextAlign.right,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "رقم الطفل القومي ",
                              hintStyle: TextStyle(color: Colors.white),
                              contentPadding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                              isDense: true,
                            ),
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        RaisedButton(

                          onPressed: (){},
                          color: Color(0XFFFBD14B),


                          child: Text(
                            "اضافة",
                            style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w700),

                          ),

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),

                      ],
                    ),
                  ),

                )
          );
        },
      ),

    );
  }
}
