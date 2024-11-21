
import 'package:education_home_tutor/view/student/start_student_profile_create.dart';
import 'package:education_home_tutor/view/student/student_sign_up.dart';
import 'package:education_home_tutor/view/teacher/teacher_bottom_nav.dart';
import 'package:education_home_tutor/view/teacher/teacher_signup.dart';
import 'package:education_home_tutor/widget/custom_button.dart';
import 'package:education_home_tutor/widget/custome_text_edit_form.dart';
import 'package:education_home_tutor/widget/lebel_with_asterisk.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TeacherLoginView extends StatelessWidget {
  const TeacherLoginView({super.key});

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
                
                const Center(
                  child: Text(
                    'Education Management Software',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
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
                    Get.offAll(const TeacherHomeBottomNav(),
                        transition: Transition.rightToLeftWithFade);
                  },
                  text: "Login",
                  color: Colors.blue,
                ),

                const SizedBox(
                  height: 15,
                ),

                
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
                      text: "Don't have a   account? ",
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
                                () => const TeacherSignUp(),
                                //arguments: title,
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
