import 'package:flutter/foundation.dart';

class SidebarProvider with ChangeNotifier {
  int _id = 0;
  int get id => _id;

  setId(int i) {
    _id = i;
    notifyListeners();
  }

  int _expandId = 0;
  int get expandId => _expandId;

  setExpandId(int i) {
    _expandId = i;
    notifyListeners();
  }

  int _subId = 0;
  int get subId => _subId;

  setSubId(int i) {
    _subId = i;
    notifyListeners();
  }
}
