

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SettingsProdiver with ChangeNotifier{

  List<String> _waxLines;

  SettingsProdiver(){

    _waxLines=['m','g'];
    loadPreferences();
  }

  //getter

  List<String> get waxLines=>_waxLines;

  //setter
  void setUnits(String units){

    notifyListeners();
    savePreferences();
  }
  void _SetWaxLines(List<String> waxLines){
    _waxLines=waxLines;
    notifyListeners();
  }

  void addWaxLine(String waxLine){
    if(_waxLines.contains(waxLine)==false){
      _waxLines.add(waxLine);
      notifyListeners();
      savePreferences();
    }
  }
  void removeWaxLine(String waxLine){
    if(_waxLines.contains(waxLine)==true){
      _waxLines.remove(waxLine);
      notifyListeners();
      savePreferences();
    }
  }


  savePreferences()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();

    prefs.setStringList('waxLines', _waxLines);
  }

  loadPreferences()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    String units=prefs.getString('units');
    List<String> waxLines=prefs.getStringList('waxLines');
    if(units!=null)setUnits(units);
    if(waxLines!=null)_SetWaxLines(waxLines);
  }

}