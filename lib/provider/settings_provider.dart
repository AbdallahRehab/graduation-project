

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProdiver with ChangeNotifier{

  List<String> _GovernorateLines;

  SettingsProdiver(){

    _GovernorateLines=['المنوفية','الغربية'];
    loadPreferences();
  }

  //getter

  List<String> get GovernorateLines=>_GovernorateLines;

  //setter

  void _SetGovernorateLines(List<String> GovernorateLines){
    _GovernorateLines=GovernorateLines;
    notifyListeners();
  }

  void addWaxLine(String governorateLine){
    if(_GovernorateLines.contains(governorateLine)==false){
      _GovernorateLines.add(governorateLine);
      notifyListeners();
      savePreferences();
    }
  }
  void removeWaxLine(String governorateLine){
    if(_GovernorateLines.contains(governorateLine)==true){
      _GovernorateLines.remove(governorateLine);
      notifyListeners();
      savePreferences();
    }
  }


  savePreferences()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();

    prefs.setStringList('GovernorateLines', _GovernorateLines);
  }

  loadPreferences()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();

    List<String> GovernorateLines=prefs.getStringList('GovernorateLines');

    if(GovernorateLines!=null)_SetGovernorateLines(GovernorateLines);
  }

}