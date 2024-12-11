import 'package:flutter/material.dart';

class IsAlcoholProvider extends ChangeNotifier {
  bool _isAlcohol = true;
  bool get isAlcohol => _isAlcohol;
  void checkAlcohol(bool check) {
    _isAlcohol = check;
    notifyListeners();
  }
}
