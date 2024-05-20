import 'package:flutter/material.dart';

class SearchAppController with ChangeNotifier {
  String _search = "";
  String get seatch => _search;

  void searchIcon(String search) {
    _search = search;
    notifyListeners();
  }
}
