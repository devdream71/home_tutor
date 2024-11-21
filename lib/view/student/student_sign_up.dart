import 'package:education_home_tutor/view/student/student_log_in.dart';
import 'package:education_home_tutor/widget/custom_button.dart';
import 'package:education_home_tutor/widget/custome_text_edit_form.dart';
import 'package:education_home_tutor/widget/lebel_with_asterisk.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StudentSignUp extends StatelessWidget {
  const StudentSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final String title = Get.arguments is String ? Get.arguments : "Academic";
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
                // const SizedBox(height: 10),
                // const Center(
                //   child: Text(
                //     'Welcome To Lorgate',
                //     style: TextStyle(
                //       fontSize: 20,
                //       fontWeight: FontWeight.bold,
                //     ),
                //   ),
                // ),
                const Center(
                  child: Text(
                    'Education Management Software ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),

                Center(
                  child: RichText(
                    text: const TextSpan(
                      text: "Welcome to Sign up ",
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
                        //       //Get.to(() => const SignUp());
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
                const LabelWithAsterisk(
                  labelText: "Your Name",
                  isRequired: true,
                ),
                const CustomTextFormField(
                  hintText: " ",
                ),
                const SizedBox(
                  height: 8,
                ),
                const LabelWithAsterisk(
                  labelText: "Your Email",
                  isRequired: true,
                ),
                const CustomTextFormField(
                  hintText: " ",
                ),
                const SizedBox(
                  height: 8,
                ),
                const LabelWithAsterisk(
                  labelText: "Mobile Number",
                  isRequired: true,
                ),
                const CustomTextFormField(
                  hintText: " ",
                  showDropdownIcon: true,
                ),
                const SizedBox(
                  height: 8,
                ),
                const LabelWithAsterisk(
                  labelText: "Address",
                  isRequired: true,
                ),
                const CustomTextFormField(hintText: " "),
                const SizedBox(
                  height: 8,
                ),

                const LabelWithAsterisk(
                  labelText: "Country",
                  isRequired: true,
                ),
                const CustomTextFormField(hintText: " "),
                const SizedBox(
                  height: 8,
                ),

                const LabelWithAsterisk(
                  labelText: "Zip code",
                  isRequired: true,
                ),
                const CustomTextFormField(
                  hintText: "  ",
                  //maxLines: 2,
                ),

                const SizedBox(
                  height: 8,
                ),

                const Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: LabelWithAsterisk(labelText: "Password")),
                          CustomTextFormField(
                            hintText: "",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: LabelWithAsterisk(
                                labelText: "Conform Password"),
                          ),
                          CustomTextFormField(
                            hintText: "",
                          ),
                        ],
                      ),
                    )

                    // const SizedBox(height: 8,),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  onPressed: () {
                    Get.to(const StudentLogIn(),
                        transition: Transition.rightToLeftWithFade);
                  },
                  text: "Submit",
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
