import 'package:education_home_tutor/utils/strings.dart';
import 'package:education_home_tutor/view/login/login.dart';
import 'package:education_home_tutor/widget/custom_button.dart';
import 'package:education_home_tutor/widget/custome_text_edit_form.dart';
import 'package:education_home_tutor/widget/lebel_with_asterisk.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OTPSignUp extends StatelessWidget {
  const OTPSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Center(
                  child: Image.asset(
                    'assets/education_logo.png',
                    height: 100,
                  ),
                ),
                const SizedBox(height: 10),
                const Center(
                  child: Text(
                    'Welcome To Lorgate',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    'open the gate to all education',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black45,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppStrings.otpText1),
                      Text(AppStrings.otpText2),
                      Text(AppStrings.otpText3),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const LabelWithAsterisk(
                  labelText: "OTP",
                ),
                const CustomTextFormField(
                  hintText: "",
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  onPressed: () {
                    Get.to(const Login(),
                        transition: Transition.rightToLeftWithFade);
                  },
                  text: "Login",
                  color: Colors.blue,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
