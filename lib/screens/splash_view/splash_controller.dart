import 'dart:async';

import 'package:get/get.dart';
// import 'package:scisphere/screens/auth_view/login_screen.dart';
import 'package:scisphere/screens/onboarding_view/intro_screen.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    route();
  }

  void route() async {
    Timer(const Duration(seconds: 3), () {
      Get.offAll(() => const IntroScreen());
    });
  }
}
