import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app_flutter/presentation/splash_screen.dart';

import 'presentation/quiz_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return hideKeyboardWhileTapOnScreen(context,
        child: GetMaterialApp(
          home: SplashScreen(),
          // home: QuizPage(),
        ));
  }

  Widget hideKeyboardWhileTapOnScreen(BuildContext context,
      {required GetMaterialApp child}) {
    return Listener(
        onPointerUp: (_) {
          if (Platform.isIOS || Platform.isAndroid) {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus &&
                currentFocus.focusedChild != null) {
              FocusManager.instance.primaryFocus?.unfocus();
            }
          }
        },
        child: child);
  }
}
