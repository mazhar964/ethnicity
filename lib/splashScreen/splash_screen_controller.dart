import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../drawer/company_home_screen.dart';
import '../wellcomScreen/wellcom_screen.dart';

class SplashScreenController extends GetxController {
  @override
  Future<void> onInit() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offAll(CompanyHmeScreen(
      key: companyScaffoldKey,
    ));
    super.onInit();
  }
}
//CompanyHmeScreen,Wellcom