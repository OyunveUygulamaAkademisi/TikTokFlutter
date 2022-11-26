import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tiktok_flutter/app/app.router.dart';
import 'package:tiktok_flutter/app/app_base_view_model.dart';
import 'package:tiktok_flutter/constants/theme.dart';
import 'package:tiktok_flutter/di/locator.dart';
import 'package:tiktok_flutter/ui/home/home_view.dart';

class TikTokApp extends StatelessWidget {
  const TikTokApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AppBaseViewMode>.reactive(
        viewModelBuilder: () => locator<AppBaseViewMode>(),
        onModelReady: (model) => model.init(),
        builder: (context, model, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              navigatorKey: StackedService.navigatorKey,
              onGenerateRoute: StackedRouter().onGenerateRoute,
              navigatorObservers: const <NavigatorObserver>[],
              theme: ThemeConst.light,
              darkTheme: ThemeConst.dark,
              themeMode: locator<AppBaseViewMode>().theme,
            ));
  }
}
