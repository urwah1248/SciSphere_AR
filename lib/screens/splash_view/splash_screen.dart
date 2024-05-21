import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:scisphere/screens/splash_view/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff66328E),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder(
                init: Get.put<SplashController>(SplashController()),
                builder: (controller) {
                  return const SizedBox(
                    height: 200,
                    width: 190,
                    child: Image(
                      image: AssetImage('assets/main-logo.png'),
                    ),
                  );
                }),
            const Image(image: AssetImage('assets/SciSphere.png'))
          ],
        ),
      ),
    );
  }
}
