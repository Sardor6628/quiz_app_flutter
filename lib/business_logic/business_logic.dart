import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app_flutter/presentation/quiz_type_list_page.dart';

class BusinessLogic extends GetxController {
  TextEditingController nameController = TextEditingController();

  void nameSubmitForwardToNextPage(){
    if(nameController.text.isNotEmpty){
      Get.offAll(() => const QuizTypeListPage());
    }
    else{
      Get.snackbar('Error', 'Please enter your name');
    }
  }
}