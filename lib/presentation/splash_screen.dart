import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app_flutter/constants/custom_colors.dart';
import 'package:quiz_app_flutter/constants/image_path.dart';
import 'package:quiz_app_flutter/presentation/welcome_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToNextPage();
  }

  void _navigateToNextPage() async {
    Timer(const Duration(seconds: 3), () => Get.offAll(() => const WelcomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ConstantColors.background,
        body: Container(
            child: Center(
                child: Image.asset(
                  ImagePath.brain,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.5,
                ))));
  }
}
