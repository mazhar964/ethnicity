import 'package:ethnicity/splashScreen/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../strings/string.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  final controller = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181829),
      body: Center(
        child: Hero(
          tag: "fromSplash",
          child: Image.asset(
            appLogo,
            height: 331,
            width: 331,
          ),
        ),
      ),
    );
  }
}
