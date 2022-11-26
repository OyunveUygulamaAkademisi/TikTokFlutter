import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';
import 'package:tiktok_flutter/ui/splash/splash_view_model.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
        onModelReady: (model) => model.initialize(),
        viewModelBuilder: () => SplashViewModel(),
        builder: (context, model, widget) {
          return const Scaffold(body: Center(child: Text("Splash View")));
        });
  }
}
