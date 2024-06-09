import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/constants/custom_colors.dart';
import 'package:quiz_app_flutter/constants/image_path.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.background,
      appBar: AppBar(
          backgroundColor: ConstantColors.background,
          title: const Text('Quiz App',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w700))),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Image.asset(
            ImagePath.brain,
            width: MediaQuery.of(context).size.width * 0.3,
          ),
        ],
      )
    );
  }
}
