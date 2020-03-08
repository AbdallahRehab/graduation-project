import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return SingleChildScrollView(

      child: Container(
        height: ScreenUtil().setHeight(1200),
        margin: EdgeInsets.fromLTRB(
              ScreenUtil().setWidth(40),
              ScreenUtil().setHeight(250),
              ScreenUtil().setWidth(40),
              0),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: ScreenUtil().setWidth(40),
            ),
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: ScreenUtil().setHeight(30)),
                width: ScreenUtil().setWidth(20),
                height: ScreenUtil().setHeight(60),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    border: Border.all(
                      color: Colors.deepOrange,
                      width: ScreenUtil().setWidth(10),
                    )),
                child: ClipRRect(
                  borderRadius:BorderRadius.only(
                      topLeft: Radius.circular(27),
                      bottomLeft: Radius.circular(27),
                      topRight: Radius.circular(27)),
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset("images/splash.jpeg",fit: BoxFit.cover,),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: ScreenUtil().setHeight(30)),
                width: ScreenUtil().setWidth(20),
                height: ScreenUtil().setHeight(60),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    border: Border.all(
                      color: Colors.deepOrange,
                      width: ScreenUtil().setWidth(10),
                    )),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(25,15,20,10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("You Can",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:ScreenUtil().setSp( 60)),),
                      Text("choose",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:ScreenUtil().setSp( 60)),),
                      Text("one of",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: ScreenUtil().setSp( 60)),),
                      Text("them ,",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: ScreenUtil().setSp( 60)),),
                      Text("Take it",style: TextStyle(color: Colors.orangeAccent,fontWeight: FontWeight.bold,fontSize:ScreenUtil().setSp( 60)),),
                    ],
                  ),
                ),
              ),
              Container(

                width: ScreenUtil().setWidth(20),
                height: ScreenUtil().setHeight(60),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    border: Border.all(
                      color: Colors.deepOrange,
                      width: ScreenUtil().setWidth(10),
                    )),
                child: ClipRRect(
                  borderRadius:BorderRadius.only(
                      topLeft: Radius.circular(27),
                      bottomLeft: Radius.circular(27),
                      bottomRight: Radius.circular(27)),
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset("images/splash.jpeg",fit: BoxFit.cover,),
                  ),
                ),
              ),
              Container(

                width: ScreenUtil().setWidth(20),
                height: ScreenUtil().setHeight(60),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    border: Border.all(
                      color: Colors.deepOrange,
                      width: ScreenUtil().setWidth(10),
                    )),
                child: ClipRRect(
                  borderRadius:BorderRadius.only(
                      bottomRight: Radius.circular(27),
                      bottomLeft: Radius.circular(27),
                      topRight: Radius.circular(27)),
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset("images/splash.jpeg",fit: BoxFit.cover,),
                  ),
                ),
              ),
            ],
          ),
        ),

    );
  }
}
