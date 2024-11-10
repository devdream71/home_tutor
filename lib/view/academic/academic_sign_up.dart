import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/utils/strings.dart';
import 'package:education_home_tutor/view/academic/sign_up_awaiting.dart';
import 'package:education_home_tutor/view/sign_up/otp_sign_up.dart';
import 'package:education_home_tutor/widget/custom_button.dart';
import 'package:education_home_tutor/widget/custome_text_edit_form.dart';
import 'package:education_home_tutor/widget/lebel_with_asterisk.dart';
import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_core/src/get_main.dart';

class AcademicSignUp extends StatelessWidget {
  const AcademicSignUp({super.key});

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
                const SizedBox(height: 5,),
                
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: "Sign up as a - ",
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: "$title".toUpperCase(),
                          style: const TextStyle(
                            color: Colors.blue,
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
                const LabelWithAsterisk(
                  labelText: "Academy Type",
                  isRequired: true,
                ),
                const CustomTextFormField(
                  hintText: " ",
                ),
                const SizedBox(
                  height: 8,
                ),
                const LabelWithAsterisk(labelText: "Total Student", isRequired: true,),
                const CustomTextFormField(
                  hintText: " ",
                ),
                const SizedBox(
                  height: 8,
                ),
                const LabelWithAsterisk(labelText: "Total Teacher", isRequired: true,),
                const CustomTextFormField(
                  hintText: " ",
                  showDropdownIcon: true,
                ),
                const SizedBox(
                  height: 8,
                ),
                const LabelWithAsterisk(labelText: "Academy Name", isRequired: true,),
                const CustomTextFormField(hintText: " "),
                const SizedBox(
                  height: 8,
                ),
                const LabelWithAsterisk(labelText: "Id/Reg/Index No",  isRequired: true,),
                const CustomTextFormField(
                  hintText: " ",
                ),
                const SizedBox(
                  height: 8,
                ),
                const LabelWithAsterisk(labelText: "EIIN No", isRequired: true,),
                const CustomTextFormField(
                  hintText: "  ",
                  //maxLines: 2,
                ),
                const SizedBox(
                  height: 8,
                ),

                const LabelWithAsterisk(labelText: "Founder Name", isRequired: true,),
                const CustomTextFormField(
                  hintText: "   ",
                  //maxLines: 2,
                ),
                const SizedBox(
                  height: 8,
                ),
                const LabelWithAsterisk(labelText: "Established Dat", isRequired: true,),
                const CustomTextFormField(
                  hintText: " ",
                  //maxLines: 2,
                ),
                const SizedBox(
                  height: 8,
                ),
                const LabelWithAsterisk(labelText: "Gov/Privet/Reg", isRequired: true,),
                const CustomTextFormField(
                  hintText: "  ",
                  //maxLines: 2,
                ),
                const SizedBox(
                  height: 8,
                ),
                const LabelWithAsterisk(labelText: "Address", isRequired: true,),
                const CustomTextFormField(
                  hintText: " ",
                  //maxLines: 2,
                ),
                const SizedBox(
                  height: 8,
                ),
                const LabelWithAsterisk(labelText: "Country", isRequired: true,),
                const CustomTextFormField(
                  hintText: "  ",
                  //maxLines: 2,
                ),
                const SizedBox(
                  height: 8,
                ),
                const LabelWithAsterisk(labelText: "City", isRequired: true,),
                const CustomTextFormField(
                  hintText: "  ",
                  //maxLines: 2,
                ),
                const SizedBox(
                  height: 8,
                ),
                const LabelWithAsterisk(labelText: "Zip code", isRequired: true,),
                const CustomTextFormField(
                  hintText: "  ",
                  //maxLines: 2,
                ),
                const SizedBox(
                  height: 8,
                ),

                Text("Contract Information"),

                const SizedBox(
                  height: 8,
                ),

                const LabelWithAsterisk(labelText: "Primary Phone Number", isRequired: true,),
                const CustomTextFormField(
                  hintText: "  ",
                  //maxLines: 2,
                ),
                const SizedBox(
                  height: 8,
                ),

                const LabelWithAsterisk(labelText: "Email", isRequired: true,),
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
                    Get.to(const SignUpAwaiting(), transition: Transition.rightToLeftWithFade);
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
