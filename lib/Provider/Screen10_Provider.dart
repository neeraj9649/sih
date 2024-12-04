import 'package:flutter/material.dart';

class Screen10Provider extends ChangeNotifier {
  // Track the selected option (0, 1, or 2)
  int _selectedOption = -1; // -1 means no option is selected

  int get selectedOption => _selectedOption;

  // Get the selected value as a string
  String getSelectedValue() {
    switch (_selectedOption) {
      case 0:
        return "Never, this is the first time";
      case 1:
        return "Between 1 and 4 times";
      case 2:
        return "More than 4 times";
      default:
        return "";
    }
  }

  // Select an option (0, 1, or 2) and notify listeners
  void selectOption(int option) {
    _selectedOption = option; // Set the selected option
    notifyListeners(); // Notify listeners to update the UI
  }
}
