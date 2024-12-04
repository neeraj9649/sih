import 'package:flutter/material.dart';

class Screen9Provider extends ChangeNotifier {
  // Track the selected age group as a string, initially empty
  String _selectedAgeGroup = '';

  String get selectedAgeGroup => _selectedAgeGroup;

  // Set the selected age group and notify listeners
  void selectAgeGroup(String value) {
    _selectedAgeGroup = value;
    notifyListeners(); // Notify listeners to update the UI
  }
}
