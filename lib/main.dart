import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tiktok_flutter/app/tiktok_app.dart';
import 'package:tiktok_flutter/di/locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const TikTokApp());
}
