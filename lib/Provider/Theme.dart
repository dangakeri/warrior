import 'package:flutter/material.dart';

import 'shared_preference.dart';

class DarkThemeProvider with ChangeNotifier {
  DarkThemePreferences darkThemePreferences = DarkThemePreferences();

  bool _darkTheme = true;

  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;

    darkThemePreferences.setDarkTheme(value);

    notifyListeners();
  }
}
