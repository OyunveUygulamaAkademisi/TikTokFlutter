import 'package:stacked/stacked_annotations.dart';
import 'package:tiktok_flutter/ui/detail/detail_view.dart';
import 'package:tiktok_flutter/ui/home/home_view.dart';
import 'package:tiktok_flutter/ui/splash/splash_view.dart';

@StackedApp(routes: [
  MaterialRoute(page: HomeView),
  MaterialRoute(page: DetailView),
  MaterialRoute(page: SplashView, initial: true),
])
class App {}
