import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app_flutter/business_logic/business_logic.dart';
import 'package:quiz_app_flutter/constants/custom_colors.dart';
import 'package:quiz_app_flutter/constants/image_path.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  BusinessLogic businessLogic = Get.put(BusinessLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ConstantColors.background,
        appBar: AppBar(
            backgroundColor: ConstantColors.background,
            title: const Text('Quiz App',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w700))),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Image.asset(ImagePath.brain,
                  width: MediaQuery.of(context).size.width * 0.3),
              const SizedBox(height: 20),
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    children: [
                      const Text(("Welcome"),
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w700)),
                      const SizedBox(height: 20),
                      TextFormField(
                          controller: businessLogic.nameController,
                          decoration: const InputDecoration(
                              hintText: 'e.g Ron',
                              labelText: 'Name',
                              border: OutlineInputBorder())),
                      SizedBox(height: 20),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: ConstantColors.bottomColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                          onPressed: () {
                            businessLogic.nameSubmitForwardToNextPage();
                          },
                          child: const Text('START', style: TextStyle(color: Colors.white),))
                    ],
                  ))
            ],
          ),
        ));
  }
}
