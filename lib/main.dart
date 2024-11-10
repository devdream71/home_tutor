import 'package:education_home_tutor/home.dart';
import 'package:education_home_tutor/view/academic/academic_sign_up.dart';
import 'package:education_home_tutor/view/sign_up/sign_up.dart';
import 'package:education_home_tutor/view/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Splash(),
     //home: const AcademicSignUp(),
    );
  }
}

