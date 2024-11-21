import 'package:education_home_tutor/view/academic/academic_home/academic_homebottom_nav.dart';
import 'package:education_home_tutor/view/academic/academic_sign_up.dart';
import 'package:education_home_tutor/view/sign_up/sign_up.dart';
import 'package:education_home_tutor/widget/custom_button.dart';
import 'package:education_home_tutor/widget/custome_text_edit_form.dart';
import 'package:education_home_tutor/widget/lebel_with_asterisk.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AcademicLogin extends StatelessWidget {
  const AcademicLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final String title = Get.arguments is String ? Get.arguments : "Login";
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
                  height: 10,
                ),

                Center(
                  child: RichText(
                    text: TextSpan(
                      text: "Log in as a - ",
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: title.toUpperCase(),
                          style: const TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.to(() => const SignUp());
                            },
                        ),
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
                const LabelWithAsterisk(
                  labelText: "Email or Mobile Number",
                ),
                const CustomTextFormField(
                  hintText: "",
                ),

                const SizedBox(
                  height: 10,
                ),

                const LabelWithAsterisk(
                  labelText: "Password",
                ),
                const CustomTextFormField(
                  hintText: "",
                ),

                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  onPressed: () {
                    Get.offAll(const AcademicHomeBottomNav(),
                        transition: Transition.rightToLeftWithFade);
                  },
                  text: "Login",
                  color: Colors.blue,
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
                          color: Colors.blue,
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
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.to(
                                // () => const SignUp(),
                                () => const AcademicSignUp(),
                                arguments: title,
                                transition: Transition.rightToLeftWithFade,
                              );
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
