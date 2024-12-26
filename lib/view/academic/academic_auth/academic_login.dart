import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/utils/images.dart';
import 'package:education_home_tutor/view/academic/academic_home/academic_homebottom_nav.dart';
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
    TextEditingController emailorPhone = TextEditingController();
    TextEditingController password = TextEditingController();
    final formKey = GlobalKey<FormState>();
    final String title = Get.arguments is String ? Get.arguments : "Login";
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Center(
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Center(
                      child: Image.asset(
                        AppImages.splashLogo,
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
                        'Open the gate to all education',
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
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  //Get.to(() => const SignUp());
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
                              labelText: "Email",
                            ),
                            CustomTextFormField(
                              controller: emailorPhone,
                              hintText: "",
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const LabelWithAsterisk(
                              labelText: "Password",
                            ),
                            CustomTextFormField(
                              controller: password,
                              hintText: "",
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
                    // CustomButton(
                    //   onPressed: () {
                    //     if (formKey.currentState!.validate()) {
                    //       Get.offAll(const AcademicHomeBottomNav(),
                    //           transition: Transition.rightToLeftWithFade);
                    //     }
                    //   },
                    //   text: "Login",
                    //   color: AppColor.primaryColor,
                    // ),

                    CustomButton(
  onPressed: () {
    if (formKey.currentState!.validate()) {
      // Define correct credentials
      const String correctEmail = 'dttest@gmail.com';
      const String correctPassword = '123456';

      // Access the form fields
      String enteredEmail = emailorPhone.text.trim();
      String enteredPassword = password.text.trim();

      // Validate credentials
      if (enteredEmail == correctEmail && enteredPassword == correctPassword) {
        // Navigate to the next page if credentials match
        Get.offAll(
          const AcademicHomeBottomNav(),
          transition: Transition.rightToLeftWithFade,
        );
      } else {
        // Show error message if credentials don't match
        Get.snackbar(
          "Login Failed",
          "Email or password does not match.",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red.withOpacity(0.7),
          colorText: Colors.white,
        );
      }
    }
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

                    // RichText(
                    //   text: TextSpan(
                    //     text: "Forget Password? ",
                    //     style: const TextStyle(
                    //       fontSize: 16,
                    //       color: Colors.black,
                    //     ),
                    //     children: [
                    //       TextSpan(
                    //         text: "reset here".toUpperCase(),
                    //         style: const TextStyle(
                    //           color: AppColor.primaryColor,
                    //           fontWeight: FontWeight.bold,
                    //         ),
                    //         recognizer: TapGestureRecognizer()
                    //           ..onTap = () {
                    //             //Get.to(() => MerchantSignupPage());
                    //           },
                    //       ),
                    //     ],
                    //   ),
                    //   textAlign: TextAlign.center,
                    // ),

                    const SizedBox(
                      height: 30,
                    ),

                    // Center(
                    //   child: RichText(
                    //     text: TextSpan(
                    //       text: "Don't have a $title account? ",
                    //       style: const TextStyle(
                    //         fontSize: 16,
                    //         color: Colors.black,
                    //       ),
                    //       children: [
                    //         TextSpan(
                    //           text: "sign-up".toUpperCase(),
                    //           style: const TextStyle(
                    //             color: AppColor.primaryColor,
                    //             fontWeight: FontWeight.bold,
                    //           ),
                    //           recognizer: TapGestureRecognizer()
                    //             ..onTap = () {
                    //               Get.to(
                    //                 // () => const SignUp(),
                    //                 () => const AcademicSignUp(),
                    //                 arguments: title,
                    //                 transition: Transition.rightToLeftWithFade,
                    //               );
                    //             },
                    //         ),
                    //       ],
                    //     ),
                    //     textAlign: TextAlign.center,
                    //   ),
                    // ),
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
                                  // Show an alert dialog
                                  Get.defaultDialog(
                                    title: "Sign-Up",
                                    middleText: "Sign-up not available now.",
                                    textConfirm: "OK",
                                    onConfirm: () {
                                      Get.back(); // Close the dialog
                                    },
                                    barrierDismissible: true,
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
        ),
      ),
    );
  }
}
