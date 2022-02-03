import 'package:flutter/material.dart';

class PageProvider with ChangeNotifier {
  int _page = 0;
  int get page => _page;

  newPage(int i) {
    _page = i;
    notifyListeners();
  }

  int _subPage = 0;
  int get subPage => _subPage;

  newSubPage(int i) {
    _subPage = i;
    notifyListeners();
  }
}
