import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app_flutter/business_logic/business_logic.dart';
import 'package:quiz_app_flutter/constants/image_path.dart';
import 'package:quiz_app_flutter/presentation/welcome_page.dart';

class CongratulationsPage extends StatelessWidget {
  final String name;
  final int score;
  final int totalQuestions;

  const CongratulationsPage({
    Key? key,
    required this.name,
    required this.score,
    required this.totalQuestions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BusinessLogic businessLogic = Get.put(BusinessLogic());
    return Scaffold(
      backgroundColor: Color(0xFF2C0049),
      // Adjusted to match the dark purple background
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hey, Congratulations!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Image.asset(
               ImagePath.trophy, // Updated the path to the trophy image
                // Make sure to add your trophy image in the assets folder and update the path
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.width * 0.5,
              ),
              SizedBox(height: 20),
              Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'You scored $score out of $totalQuestions',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  businessLogic.resetQuiz();
                  Get.offAll(() => const WelcomePage()); // Go back or finish action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF6F35A5),
                  // Adjusted to match the button color
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'FINISH',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
