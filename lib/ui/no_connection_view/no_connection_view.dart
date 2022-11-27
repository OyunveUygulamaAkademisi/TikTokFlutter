import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tiktok_flutter/app/app_base_view_model.dart';
import 'package:tiktok_flutter/di/locator.dart';
import 'package:tiktok_flutter/ui/home/home_view_model.dart';

class NoConnectionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Device has no Connection!",
        style: Theme.of(context).textTheme.headline2,
      )),
    );
  }
}
