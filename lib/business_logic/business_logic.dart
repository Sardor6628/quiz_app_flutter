import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app_flutter/model/question_model.dart';
import 'package:quiz_app_flutter/presentation/congratulatory_page.dart';
import 'package:quiz_app_flutter/presentation/quiz_type_list_page.dart';

class BusinessLogic extends GetxController {
  TextEditingController nameController = TextEditingController();
  RxList<Question> listQuestions = allQuestions.obs;
  Rx<Question> currentQuestion = allQuestions[0].obs;
  Rx<Option> selectedOption = Option('', false, false).obs;
  RxInt questionNumber = 1.obs;
  RxInt correctAns = 0.obs;
  RxBool isSelectionComplete = false.obs;

  void checkAnswer(bool value) {
    isSelectionComplete.value = true;
    if (value) {
      correctAns++;
    }
  }

  void nextQuestion() {
    isSelectionComplete.value = false;
    if (questionNumber.value != listQuestions.length) {
      questionNumber++;
      currentQuestion.value = listQuestions[questionNumber.value - 1];
      selectedOption.value = Option('', false, false);
    } else {
      Get.offAll(() => CongratulationsPage(
          name: "${nameController.text}",
          score: correctAns.value,
          totalQuestions: listQuestions.length));
    }
  }

  void nameSubmitForwardToNextPage() {
    if (nameController.text.isNotEmpty) {
      Get.offAll(() => const QuizTypeListPage());
    } else {
      Get.snackbar('Error', 'Please enter your name');
    }
  }
void resetQuiz() {
    correctAns.value = 0;
    questionNumber.value = 1;
    currentQuestion.value = listQuestions[0];
    selectedOption.value = Option('', false, false);
  }

}
