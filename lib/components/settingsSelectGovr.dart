import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduteproject/Hospital/Service/settings_provider.dart';
import 'package:provider/provider.dart';


class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProdiver>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings Select'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 25.0,
          ),

          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Select'),
                Container(
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    children: <Widget>[
                      FilterChip(
                        label: Text(
                          'm',
                          style:
                          TextStyle(color: Theme.of(context).accentColor,
                              fontSize: 18),
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
                        label: Text(
                          'g',
                          style:
                          TextStyle(color: Theme.of(context).accentColor,
                              fontSize: 18),
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
