import 'package:flutter/material.dart';

class Floatscreen1Provider with ChangeNotifier {
  int _selectedIndex = -1; // Default: no item selected

  int get selectedIndex => _selectedIndex;

  void selectItem(int index) {
    if (_selectedIndex != index) {
      _selectedIndex = index; // Update the selected index
      notifyListeners(); // Notify listeners to rebuild widgets
    }
  }
}
