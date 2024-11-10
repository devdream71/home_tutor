import 'package:education_home_tutor/view/academic/academic_home/AcademicHomeBottomNav.dart';
import 'package:education_home_tutor/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignUpAwaiting extends StatelessWidget {
  const SignUpAwaiting({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Image.asset(
                  'assets/education_logo.png',
                  height: 100,
                ),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  'Dhaka Model School & College',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              SizedBox(
                width: 200,
                child: CustomButton(
                  onPressed: () {
                    Get.offAll(AcademicHomeBottomNav());
                  },
                  text: "Pending",
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  textAlign: TextAlign.center,
                  'You’ll be able to log in once we’ve verified your account, which may take up to 24 hours.',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 250,
              ),
              const CircleAvatar(
                radius: 42,
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/dream_tech.jpg"),
                ),
              ),
              const Center(
                child: Text(
                  textAlign: TextAlign.center,
                  'Our contact information',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Center(
                child: Text(
                  textAlign: TextAlign.center,
                  '+880 1984 994406',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
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
