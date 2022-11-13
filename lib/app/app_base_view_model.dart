import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AppBaseViewMode extends BaseViewModel {
  ThemeMode theme = ThemeMode.dark;
  init() {}

  changeTheme() {
    if (theme == ThemeMode.dark) {
      theme = ThemeMode.light;
    } else {
      theme = ThemeMode.dark;
    }
    notifyListeners();
  }
}
