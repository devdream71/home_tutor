import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/utils/strings.dart';
import 'package:education_home_tutor/view/sign_up/otp_sign_up.dart';
import 'package:education_home_tutor/widget/custom_button.dart';
import 'package:education_home_tutor/widget/custome_text_edit_form.dart';
import 'package:education_home_tutor/widget/lebel_with_asterisk.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
                const LabelWithAsterisk(
                  labelText: "Your Name",
                ),
                const CustomTextFormField(
                  hintText: "Md. Abc",
                ),
                const SizedBox(
                  height: 8,
                ),
                const LabelWithAsterisk(labelText: "Country"),
                const CustomTextFormField(
                  hintText: "Bangladesh",
                ),
                const SizedBox(
                  height: 8,
                ),
                const LabelWithAsterisk(labelText: "Gender"),
                const CustomTextFormField(
                  hintText: "Selecte",
                  showDropdownIcon: true,
                ),
                const SizedBox(
                  height: 8,
                ),
                const LabelWithAsterisk(labelText: "Email"),
                const CustomTextFormField(hintText: "realme@gmail.com"),
                const SizedBox(
                  height: 8,
                ),
                const LabelWithAsterisk(labelText: "Phone Number"),
                const CustomTextFormField(
                  hintText: "+880 ",
                ),
                const SizedBox(
                  height: 8,
                ),
                const LabelWithAsterisk(labelText: "Address"),
                const CustomTextFormField(
                  hintText: "Dhaka ",
                  maxLines: 2,
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
                            hintText: "Password ",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: LabelWithAsterisk(
                                labelText: "Conform Password"),
                          ),
                          CustomTextFormField(
                            hintText: "Conform Password ",
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
                    Get.to(const OTPSignUp(), transition: Transition.rightToLeftWithFade);
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
