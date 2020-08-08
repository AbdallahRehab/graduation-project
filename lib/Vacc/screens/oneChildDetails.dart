import 'package:flutter/material.dart';
import 'package:graduteproject/Vacc/components/oneChildBody.dart';


class OneChildDetails extends StatelessWidget {
  final String name;
  var vaccination;
  OneChildDetails({this.name, this.vaccination});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF6A60A9),
        elevation: 0,
        title: Center(
          child: Text(name,style: TextStyle(color: Color(0XFFFFFFFF),fontWeight: FontWeight.bold,fontSize: 25),),
        ),
      ),
      body: OneChildBody( vaccination: vaccination,),

    );
  }
}
