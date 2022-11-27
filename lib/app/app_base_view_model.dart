import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tiktok_flutter/app/app.router.dart';
import 'package:tiktok_flutter/di/locator.dart';
import 'package:tiktok_flutter/services/firebase_service.dart';

class AppBaseViewMode extends BaseViewModel {
  final NavigationService navigationService = locator<NavigationService>();
  final FirebaseService firebaseService = locator<FirebaseService>();
  StreamSubscription<ConnectivityResult>? subscription;
  ThemeMode theme = ThemeMode.light;
  init() {
    listenConnectivity();
    firebaseService.init();
  }

  changeTheme() {
    if (theme == ThemeMode.dark) {
      theme = ThemeMode.light;
    } else {
      theme = ThemeMode.dark;
    }
    locator<AppBaseViewMode>().notifyListeners();
  }

  checkConnectivity() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      // I am connected to a mobile network.
    } else if (connectivityResult == ConnectivityResult.wifi) {
      // I am connected to a wifi network.
    } else {
      navigationService.replaceWith(Routes.noConnectionView);
    }
  }

  listenConnectivity() {
    subscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.wifi || result == ConnectivityResult.mobile) {
        navigationService.replaceWith(Routes.homeView);
      } else {
        navigationService.replaceWith(Routes.noConnectionView);
      }
      // Got a new connectivity status!
    });
  }
}
