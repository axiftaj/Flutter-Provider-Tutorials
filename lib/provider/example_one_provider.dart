import 'package:flutter/material.dart';

class ExampleOneProvider with ChangeNotifier {

   double _opacity = 1.0 ;
  double get opacity => _opacity;

  void setCount(double value) {
    _opacity = value ;
    notifyListeners();
  }

}