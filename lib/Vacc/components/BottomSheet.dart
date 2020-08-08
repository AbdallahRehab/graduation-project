import 'package:flutter/material.dart';

class BottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/2.5,
      decoration: BoxDecoration(
        color: Color(0XFF6A60A9),
        borderRadius:BorderRadius.only(topLeft:Radius.circular(40),topRight:Radius.circular(40)),
      ),
      child: SingleChildScrollView(

      ),
    );
  }
}
