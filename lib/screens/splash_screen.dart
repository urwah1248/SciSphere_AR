import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff66328E),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 190,
              child: Image(
                image: AssetImage('assets/main-logo.png'),
              ),
            ),
            Image(image: AssetImage('assets/SciSphere.png'))
          ],
        ),
      ),
    );
  }
}
