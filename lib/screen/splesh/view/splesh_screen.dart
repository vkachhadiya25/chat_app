import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () => Get.toNamed('signIn'),
    );
    return Scaffold(
      body: Center(
        child: LottieBuilder.asset(
          "assets/json/Animation - 1708424882713.json",
          height: 150,
          width: 150,
        ),
      ),
    );
  }
}
