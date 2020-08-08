import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class VaccRangeDetails extends StatelessWidget {
  var clist=[
    {
      'name' : 'التطعيم الاول'
    },
    {
      'name' : 'التطعيم الاول'
    },
    {
      'name' : 'التطعيم الاول'
    },
    {
      'name' : 'التطعيم الاول'
    }
  ];
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
                color: Color(0xFF6A60A9),
                height: MediaQuery.of(context).size.height * 0.3,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  //margin: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/Doctor.png'),
                        fit: BoxFit.contain),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        child: Container(
                          //width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.09,
                          padding: EdgeInsets.only(left: 8),

                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        onTap: () {
                          print("sssss");
                        },
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 8),
                        //width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.09,
                        child: Center(
                            child: Text(
                              "الفترة الاولي",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
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
              height: MediaQuery.of(context).size.height / 1.3,
              width: MediaQuery.of(context).size.width / 1.13,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                //color: Colors.pink,
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: MediaQuery.of(context).size.height/10,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Text("مدة اربع سنين ل ست سنين",textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700),),
                          ),
                          SizedBox(width: 5,),
                          Expanded(
                            flex: 1,
                            child: Text(" : الفترة الزمنية",textAlign: TextAlign.right,style: TextStyle(color:Color(0xFF6A60A9),fontSize: 16,fontWeight: FontWeight.bold ),),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height/18,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14),
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: double.infinity,

                            child: Text(" : التطعيمات تلك الفترة",textAlign: TextAlign.right,style: TextStyle(color:Color(0xFF6A60A9),fontSize: 16,fontWeight: FontWeight.bold ),) ,
                          ),
                          SizedBox(height: 15,),
                          Container(
                            height: MediaQuery.of(context).size.height/4,
                            child: ListView.builder(
                              itemCount: clist.length,
                              itemBuilder: (context,index){
                                return OneVacc(
                                  name: clist[index]['name'],
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height/18,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14),
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: double.infinity,

                            child: Text(" : الاعراض الجانبية",textAlign: TextAlign.right,style: TextStyle(color:Color(0xFF6A60A9),fontSize: 16,fontWeight: FontWeight.bold ),) ,
                          ),
                          SizedBox(height: 5,),
                          Container(
                            width: double.infinity,
                            child: Text("اي شي وسخونية ومهلبية وخش ع الحتة ديه",textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,),),

                          )
                        ],
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

class OneVacc extends StatelessWidget {
  final String name;

  OneVacc({this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/15,
      width: double.infinity,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 15,
            child: Text(name,textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14),),
          ),
          SizedBox(width: 15,),
          Expanded(
            flex: 1,
            child: Container(
//              margin: EdgeInsets.fromLTRB(20, 25, 20, 25),
        width: MediaQuery.of(context).size.width / 40,
        height: MediaQuery.of(context).size.height / 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0XFFFBD14B),
        ),
          )
          )
        ]
      ),
    );
  }
}

