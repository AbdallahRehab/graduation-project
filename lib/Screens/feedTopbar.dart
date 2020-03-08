import 'package:flutter/material.dart';

class FeedTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 56,
      child: Row(
        children: <Widget>[
          GestureDetector(
              onTap: () {
                //Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back,color: Colors.white,),),
          Spacer(),


        ],
      ),
    );
  }
}