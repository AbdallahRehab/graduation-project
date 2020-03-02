import 'package:sliver_fab/sliver_fab.dart';
import 'package:flutter/material.dart';
class SilverApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Builder(
        builder: (context) =>
        new SliverFab(
          floatingWidget: FloatingActionButton(
            backgroundColor: Color(0XFFFC9634),
            onPressed: () =>
                Scaffold.of(context).showSnackBar(
                    SnackBar(content: Text("see More Details!"))),
            child: Icon(Icons.details,color: Color(0XFF013843),),
          ),
          floatingPosition: FloatingPosition(right: 16),
          expandedHeight: 256.0,
          slivers: <Widget>[
            new SliverAppBar(
              expandedHeight: 256.0,
              pinned: true,
              backgroundColor: Color(0XFF013843),
              flexibleSpace: new FlexibleSpaceBar(
                title: new Text("1 - 5 Monthly",style: TextStyle(color: Color(0XFFFC9634)),),

              ),

            ),
            new SliverList(
              delegate: new SliverChildListDelegate(
                new List.generate(
                  50,
                      (int index) =>
                  new ListTile(title: new Text("Item $index",style: TextStyle(fontSize: 23),)),
                ),

              ),

            ),
          ],
        ),
      ),
    );
  }
}