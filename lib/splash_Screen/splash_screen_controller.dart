import 'package:get/get.dart';

import '../wellcom_Screen/wellcom_screen.dart';

class SplashScreenController extends GetxController {
  @override
  Future<void> onInit() async {
    await Future.delayed(const Duration(seconds: 1));
    Get.offAll(const Wellcom());
    super.onInit();
  }
}
//CompanyHmeScreen,Wellcom