import 'package:get/get.dart';

import '../wellcomScreen/wellcomscreen.dart';

class SplashScreenController extends GetxController {
  @override
  Future<void> onInit() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.to(const Wellcom());
    super.onInit();
  }
}
