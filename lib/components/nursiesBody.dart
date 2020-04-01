import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduteproject/components/basichospitalList.dart';
import 'package:graduteproject/components/hospitalCard.dart';
import 'package:graduteproject/components/hospitalsearchResult.dart';
import 'package:graduteproject/components/loadingSpin.dart';
import 'package:graduteproject/models/hospital.dart';
import 'package:graduteproject/services/hospitalservices.dart';
import 'package:provider/provider.dart';
import 'package:graduteproject/provider/settings_provider.dart';

class MyBody extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyBody> {
  TextEditingController _textFieldController = TextEditingController();
  bool isSerach = false;
  String city;

  @override
  Widget build(BuildContext context) {
    //final hospitals = Provider.of<List<Hospital>>(context);
    var settingsProvider = Provider.of<SettingsProdiver>(context);

    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFF015668),
//              gradient: LinearGradient(
//                begin: Alignment.topCenter,
//                  end: Alignment.bottomCenter,
//                  colors: [Color(0XFF00BBFF),Color(0XFF0098FF),Color(0XFF001255)],
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Governorate',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    SingleChildScrollView(
                      child: Container(
                        child: Wrap(
                          spacing: 5.0,
                          runSpacing: 5.0,
                          children: <Widget>[
                            FilterChip(
                              label: Text(
                                'المنوفية',
                                style: TextStyle(
                                    color: Theme.of(context).accentColor,
                                    fontSize: 18),
                              ),
                              selected:
                                  (settingsProvider.GovernorateLines.contains(
                                          'المنوفية'))
                                      ? true
                                      : false,
                              onSelected: (bool value) {
                                if (value == true) {
                                  settingsProvider.addWaxLine('المنوفية');
                                } else {
                                  settingsProvider.removeWaxLine('المنوفية');
                                }
                              },
                            ),
                            FilterChip(
                              label: Text(
                                'الغربية',
                                style: TextStyle(
                                    color: Theme.of(context).accentColor,
                                    fontSize: 18),
                              ),
                              selected:
                                  (settingsProvider.GovernorateLines.contains(
                                          'الغربية'))
                                      ? true
                                      : false,
                              onSelected: (bool value) {
                                if (value == true) {
                                  settingsProvider.addWaxLine('الغربية');
                                } else {
                                  settingsProvider.removeWaxLine('الغربية');
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
