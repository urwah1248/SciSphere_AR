import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:scisphere/screens/splash_view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
