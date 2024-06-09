import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app_flutter/constants/custom_colors.dart';
import 'package:quiz_app_flutter/model/quiz_types_model.dart';
class QuizTypeListPage extends StatelessWidget {
  const QuizTypeListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.background,
      appBar: AppBar(
        backgroundColor: ConstantColors.background,
        title: const Text('Quiz Type List',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700)),
      ),
      body: ListView.builder(
        itemCount: quizTypesList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: quizTypesList[index].color,
                borderRadius: BorderRadius.circular(16)),
            child: ListTile(
              title: Text(quizTypesList[index].title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w700)),
              leading: Image.asset(quizTypesList[index].imagePath,
                  width: 30, height: 30),
            onTap: () {
              showDialog(context: context, builder: (context) {
                return AlertDialog(
                  title: const Text('Attention!'),
                  content: const Text('Kindly read the following rules before you proceed -'),
                  actions: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("1. The Quiz will contain 10 random questions.", style: TextStyle(letterSpacing: -1)),
                        Text("2. Every correct answer scores you 1 point.", style: TextStyle(letterSpacing: -1)),
                        Text("3. Every wrong answer deducts 1 point.", style: TextStyle(letterSpacing: -1)),
                        Text("4. Results are available at the end of the quiz.", style: TextStyle(letterSpacing: -1)),
                       SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: ConstantColors.bottomColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30))),
                                onPressed: () {
                                  Get.back();
                                },
                                child: const Text('Cancel',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700))),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: ConstantColors.bottomColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30))),
                                onPressed: () {
                                  Get.back();
                                },
                                child: const Text('OK',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700))),
                          ],
                        ),
                      ],
                    )
                  ],
                );
              });
            },
            ),
          );
        },
      ),
    );
  }
}
