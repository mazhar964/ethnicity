import 'package:get/get.dart';

import '../wellcomScreen/wellcom_screen.dart';

class SplashScreenController extends GetxController {
  @override
  Future<void> onInit() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offAll(const Wellcom());
    super.onInit();
  }
}
//CompanyHmeScreen,Wellcom