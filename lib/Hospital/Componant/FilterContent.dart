import 'package:flutter/material.dart';

class FilterList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/9,


      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          FilterContent("الكل "),
          FilterContent("المنوفية "),
          FilterContent("الغربية "),
          FilterContent("القاهرة"),
          FilterContent("الجيزة")
        ],
      ),
    );
  }
}

class FilterContent extends StatelessWidget {
  final String name;

  FilterContent(this.name);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 8),
      child: InkWell(
        onTap: (){

        },
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.yellowAccent,
          ),
          width: MediaQuery.of(context).size.width/5,
          child: Text(name),

          ),
        ),
      );

  }
}

