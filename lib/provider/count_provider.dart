import 'package:flutter/material.dart';


class CountProvider with ChangeNotifier {

  int _count = 0 ;
  int get count => _count;

  void setCount() {
    _count++ ;
    notifyListeners();
  }

}