import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tiktok_flutter/di/locator.dart';

class AppBaseViewMode extends BaseViewModel {
  final NavigationService navigationService = locator<NavigationService>();
  ThemeMode theme = ThemeMode.dark;
  init() {}

  changeTheme() {
    if (theme == ThemeMode.dark) {
      theme = ThemeMode.light;
    } else {
      theme = ThemeMode.dark;
    }
    locator<AppBaseViewMode>().notifyListeners();
  }
}
