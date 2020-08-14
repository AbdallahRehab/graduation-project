import 'package:cloud_firestore/cloud_firestore.dart';

class childService {
  Firestore _db = Firestore.instance;
  Future<void> addChild(
      String _national_id, String _parent_national_id, String _son_name) {
    var national_id = _national_id;
    var parent_national_id = _parent_national_id;
    var son_name = _son_name;
    var vaccination = {
      'vacc_1': false,
      'vacc_2': false,
      'vacc_3': false,
      'vacc_4': false,
      'vacc_5': false,
      'vacc_6': false,
      'vacc_7': false,
      'vacc_8': false,
    };
    var dataMap = Map<String, dynamic>();
    dataMap['national_id'] = national_id;
    dataMap['parent_national_id'] = parent_national_id;
    dataMap['son_name'] = son_name;
    dataMap['vaccination'] = vaccination;
    dataMap['date'] = DateTime.now().toIso8601String();
    return _db.collection('Son').add(dataMap);
  }
}
