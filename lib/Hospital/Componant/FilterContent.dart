

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:graduteproject/Hospital/Service/settings_provider.dart';

class FilterList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProdiver>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height/9,


        child:Wrap(

          spacing: 8.0,
          runSpacing: 5.0,
          children: <Widget>[
            FilterChip(
              backgroundColor: Color(0xFF6A60A9),
              disabledColor: Color(0xFF6A60A9),
              checkmarkColor: Colors.white,
              selectedColor: Color(0xFF6A60A9),
              label: Text(
                'المنوفيه',
                style:
                TextStyle(color: Colors.white,
                    fontSize: 22,fontWeight: FontWeight.bold),
              ),
              selected: (settingsProvider.waxLines.contains('m'))
                  ? true
                  : false,
              onSelected: (bool value) {
                if (value == true) {
                  settingsProvider.addWaxLine('m');
                } else {
                  settingsProvider.removeWaxLine('m');
                }
              },
            ),
            FilterChip(
              backgroundColor: Color(0xFF6A60A9),
              disabledColor: Color(0xFF6A60A9),

              selectedColor: Color(0xFF6A60A9),
              checkmarkColor: Colors.white,

              label: Text(
                'الغربيه',
                style:
                TextStyle(color: Colors.white,
                    fontSize: 22,fontWeight: FontWeight.bold),
              ),
              selected: (settingsProvider.waxLines.contains('g'))
                  ? true
                  : false,
              onSelected: (bool value) {
                if (value == true) {
                  settingsProvider.addWaxLine('g');
                } else {
                  settingsProvider.removeWaxLine('g');
                }
              },
            ),
          ],
        ),
//      ListView(
//        scrollDirection: Axis.horizontal,
//        children: <Widget>[
//
//          FilterContent("المنوفية "),
//          FilterContent("الغربية "),
//
//        ],
//      ),
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

