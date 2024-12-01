import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/view/academic/academic_home/academic_homebottom_nav.dart';
import 'package:education_home_tutor/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpAwaiting extends StatelessWidget {
  const SignUpAwaiting({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
                    Get.offAll(const AcademicHomeBottomNav());
                  },
                  text: "Pending",
                  color: AppColor.primaryColor,
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
                height: 40,
              ),
              const SizedBox(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 42,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/dream_tech.jpg"),
                      ),
                    ),
                    Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        'Our contact information',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Center(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
