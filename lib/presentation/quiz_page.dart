import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app_flutter/business_logic/business_logic.dart';
import 'package:quiz_app_flutter/constants/custom_colors.dart';
import 'package:quiz_app_flutter/constants/image_path.dart';
import 'package:quiz_app_flutter/model/question_model.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  BusinessLogic businessLogic = Get.put(BusinessLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.background,
      body: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        child: Obx(
              () => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              Image.asset(ImagePath.quiz, width: 100, height: 100),
              const SizedBox(height: 60),
              Text(businessLogic.currentQuestion.value.question,
                  style: const TextStyle(color: Colors.white, fontSize: 20)),
              const SizedBox(height: 40),
              Row(
                children: [
                  Expanded(
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.tealAccent,
                        inactiveTrackColor: Colors.deepPurple[900],
                        thumbColor: Colors.transparent,
                        overlayColor: Colors.transparent,
                        thumbShape:
                        const RoundSliderThumbShape(enabledThumbRadius: 0.0),
                        trackHeight: 5.0,
                      ),
                      child: Slider(
                        value: businessLogic.questionNumber.value.toDouble(),
                        min: 0,
                        max: businessLogic.listQuestions.length.toDouble(),
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                      '${businessLogic.questionNumber.value}/${businessLogic.listQuestions.length}',
                      style:
                      const TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
              const SizedBox(height: 20),
              itemOption(
                  color: ConstantColors.bg1,
                  option: businessLogic.currentQuestion.value.option1),
              itemOption(
                  color: ConstantColors.bg2,
                  option: businessLogic.currentQuestion.value.option2),
              itemOption(
                  color: ConstantColors.bg3,
                  option: businessLogic.currentQuestion.value.option3),
              itemOption(
                  color: ConstantColors.bg4,
                  option: businessLogic.currentQuestion.value.option4),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (businessLogic.isSelectionComplete.value) {
                    businessLogic.nextQuestion();
                  } else {
                    businessLogic.checkAnswer(businessLogic.selectedOption.value.isTrue);
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: ConstantColors.bg1,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Text(
                  businessLogic.isSelectionComplete.value ? 'Next' : 'Submit',
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container itemOption({required Color color, required Option option}) {
    Color _color = color;
    Color textColor = Colors.white;
    bool isChosen = option == businessLogic.selectedOption.value;

    if (businessLogic.isSelectionComplete.isTrue && isChosen) {
      if (option.isTrue) {
        _color = Colors.green;
      } else {
        _color = Colors.red;
      }
      textColor = Colors.white;
    } else if (isChosen) {
      textColor = Colors.black;
      _color = Colors.white;
    } else if (businessLogic.isSelectionComplete.isTrue) {
      _color = Colors.grey;
    }

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      height: 50,
      decoration:
      BoxDecoration(color: _color, borderRadius: BorderRadius.circular(10)),
      child: TextButton(
        onPressed: () {
          if (!businessLogic.isSelectionComplete.value) {
            businessLogic.selectedOption(option);
          }
        },
        child: Text(option.title,
            style: TextStyle(color: textColor, fontSize: 20)),
      ),
    );
  }
}
