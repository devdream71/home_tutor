import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/utils/validator.dart';

import 'package:education_home_tutor/widget/custom_button.dart';
import 'package:education_home_tutor/widget/custome_text_edit_form.dart';
import 'package:education_home_tutor/widget/lebel_with_asterisk.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ParentsLogin extends StatelessWidget {
  const ParentsLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final String title = Get.arguments is String ? Get.arguments : "Login";
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    final appValidator = AppValidation();

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

                const Center(
                  child: Text(
                    'Education Management Software',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor.primaryColor,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                Center(
                  child: RichText(
                    text: const TextSpan(
                      text: "Welcome To Login ",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      children: [
                        // TextSpan(
                        //   text: title.toUpperCase(),
                        //   style: const TextStyle(
                        //     color: Colors.blue,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        //   recognizer: TapGestureRecognizer()
                        //     ..onTap = () {
                        //       Get.to(() => const SignUp());
                        //     },
                        // ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                const SizedBox(
                  height: 20,
                ),

                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppColor.appWhiteColor),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const LabelWithAsterisk(
                          labelText: "Email or Mobile Number",
                        ),
                        CustomTextFormField(
                          hintText: "",
                          controller: emailController,
                          validator: (value) =>
                              appValidator.validateEmail(value),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const LabelWithAsterisk(
                          labelText: "Password",
                        ),
                        CustomTextFormField(
                          hintText: "",
                          controller: passwordController,
                          validator: (value) =>
                              appValidator.validatePassword(value),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  onPressed: () {
                    // Get.to(const StartStudentProfileCreate(),
                    //     transition: Transition.rightToLeftWithFade);
                  },
                  text: "Login",
                  color: AppColor.primaryColor,
                ),

                const SizedBox(
                  height: 15,
                ),

                // const LabelWithAsterisk(
                //   labelText: "Forget Password? reset here",
                // ),

                RichText(
                  text: TextSpan(
                    text: "Forget Password? ",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: "reset here".toUpperCase(),
                        style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            //Get.to(() => MerchantSignupPage());
                          },
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(
                  height: 30,
                ),

                Center(
                  child: RichText(
                    text: TextSpan(
                      text: "Don't have a $title account? ",
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: "sign-up".toUpperCase(),
                          style: const TextStyle(
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Get.to(

                              //   () => const StudentSignUp(),
                              //   arguments: title,
                              //   transition: Transition.rightToLeftWithFade,
                              // );
                            },
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
