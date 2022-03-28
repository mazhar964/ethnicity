import 'package:ethnicity/splash_Screen/splash_screen.dart';
import 'package:ethnicity/strings/color_string.dart';
import 'package:ethnicity/strings/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: sourceSansRegular,
            ),
        scaffoldBackgroundColor: ColorString.theamColor,
      ),
      home: SplashScreen(),
    );
  }
}
