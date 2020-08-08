import 'package:flutter/material.dart';

class VaccDetailsBody extends StatelessWidget {
  var cList = [
    {"name": "الفترة الاولي", "age": "2", "birthDate": "2/4/2018"},
    {"name": "الفترة التانية", "age": "2", "birthDate": "2/4/2018"},
    {"name": "الفترة الثالثة ", "age": "2", "birthDate": "2/4/2018"},
    {"name": "الفترة الرابعة ", "age": "2", "birthDate": "2/4/2018"},
    {"name": "الفترة الخامسة ", "age": "2", "birthDate": "2/4/2018"},
    {"name": "الفترة السادسة ", "age": "2", "birthDate": "2/4/2018"},
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height / 1.15,
        padding: EdgeInsets.only(top: 20),
        child: ListView.builder(
          itemCount: cList.length,
          itemBuilder: (context, index) {
            return ChildCard(
              name: cList[index]['name'],
              age: cList[index]['age'],
            );
          },
        ),
      ),
    );
  }
}

class ChildCard extends StatelessWidget {
  final String name;
  final String age;

  ChildCard({this.name, this.age});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
      child: Container(
        height: MediaQuery.of(context).size.height / 7,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 6.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(
                onTap: (){

                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(20, 25, 20, 25),
                  width: MediaQuery.of(context).size.width / 10,
                  height: MediaQuery.of(context).size.height / 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0XFFFBD14B),
                  ),
                  child: Center(
                      child: IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {},
                    iconSize: 18,
                    color: Colors.white,
                  )),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 30),
                alignment: Alignment.centerRight,
                child: Text(name,
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.black, fontSize: 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
