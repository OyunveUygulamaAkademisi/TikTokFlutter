import 'package:flutter/material.dart';
import 'package:tiktok_flutter/app/app_base_view_model.dart';
import 'package:tiktok_flutter/di/locator.dart';

class MyActionWidget extends StatelessWidget {
  void Function()? onPressed;
  MyActionWidget({
    Key? key,
    this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: locator<AppBaseViewMode>().theme == ThemeMode.light ? Icon(Icons.dark_mode) : Icon(Icons.light_mode));
  }
}
