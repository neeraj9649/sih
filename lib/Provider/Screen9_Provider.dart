import 'package:flutter/material.dart';

class Screen9Provider extends ChangeNotifier {
  // Track the selection state of each checkbox
  List<bool> _checkboxStates = List.generate(10, (index) => false);

  List<bool> get checkboxStates => _checkboxStates;

  // Toggle the checkbox selection
  void toggleCheckbox(int index, bool value) {
    _checkboxStates[index] = value;
    notifyListeners(); // Notify listeners to update the UI
  }
}
