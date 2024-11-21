import 'package:education_home_tutor/view/student/student_bottom_nav.dart';
import 'package:education_home_tutor/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RequestPending extends StatelessWidget {
  const RequestPending({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Image.asset(
                  'assets/education_logo.png',
                  height: 100,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Dhaka Model School & College',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 300,
                child: CustomButton(
                  onPressed: () {
                    Get.offAll(const StudentHomeBottomNav(),
                        transition: Transition.rightToLeftWithFade);
                  },
                  text: "Pending",
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
