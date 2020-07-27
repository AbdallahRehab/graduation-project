import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0XFF7070701A),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(4.0),
      ),
      margin: EdgeInsets.symmetric(horizontal: 35,vertical: 12),
      child: Row(
        children: <Widget>[
          Container(

            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(4.0),
              color: Color(0XFF3AC569),
            ),

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                color: Color(0XFFFFFFFF),
                size: 24,

              ),
            ),
          ),
          new Expanded(

            child: TextField(
              textAlign: TextAlign.right,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "ابحث عن المستشفي بالاسم ",
                hintStyle: TextStyle(color: Colors.grey),
                contentPadding:
                EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                isDense: true,
              ),
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
