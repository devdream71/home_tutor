import 'package:education_home_tutor/view/student/complete_student_profile.dart';
import 'package:education_home_tutor/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartStudentProfileCreate extends StatelessWidget {
  const StartStudentProfileCreate({super.key});

  @override
  Widget build(BuildContext context) {
    final String title = Get.arguments is String ? Get.arguments : "Login";
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              Image.asset(
                'assets/education_logo.png',
                height: 100,
              ),
              const Text(
                'Please Create Student Profile',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Click Start Button to create Academy',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                onPressed: () {
                  Get.to(const CompleteStudentProfile(),
                      transition: Transition.rightToLeftWithFade);
                },
                text: "Start",
                color: Colors.blue,
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
