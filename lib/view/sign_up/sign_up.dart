import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/utils/validator.dart';
import 'package:education_home_tutor/view/sign_up/otp_sign_up.dart';
import 'package:education_home_tutor/widget/custom_button.dart';
import 'package:education_home_tutor/widget/custome_text_edit_form.dart';
import 'package:education_home_tutor/widget/lebel_with_asterisk.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final String title = Get.arguments is String ? Get.arguments : "Login";
    TextEditingController nameController = TextEditingController();
    TextEditingController genderController = TextEditingController();
    TextEditingController countryController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController passwordConformController = TextEditingController();

    final appValidator = AppValidation();

    final formKey = GlobalKey<FormState>();

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
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
                    height: 5,
                  ),
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
                  const LabelWithAsterisk(
                    labelText: "Your Name",
                  ),
                  CustomTextFormField(
                    hintText: "",
                    controller: nameController,
                    validator: (value) => appValidator.validateName(value),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const LabelWithAsterisk(labelText: "Country"),
                  CustomTextFormField(
                    hintText: "",
                    controller: countryController,
                    validator: (value) => appValidator.validateName(value),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const LabelWithAsterisk(labelText: "Gender"),
                  CustomTextFormField(
                    hintText: "",
                    showDropdownIcon: true,
                    controller: genderController,
                    validator: (value) => appValidator.validateName(value),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const LabelWithAsterisk(labelText: "Email"),
                  CustomTextFormField(
                    hintText: "",
                    controller: emailController,
                    validator: (value) => appValidator.validateName(value),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const LabelWithAsterisk(labelText: "Phone Number"),
                  CustomTextFormField(
                    hintText: "",
                    controller: phoneController,
                    validator: (value) => appValidator.validateName(value),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const LabelWithAsterisk(labelText: "Address"),
                  CustomTextFormField(
                    hintText: "",
                    maxLines: 2,
                    controller: addressController,
                    validator: (value) => appValidator.validateName(value),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            const Align(
                                alignment: Alignment.centerLeft,
                                child:
                                    LabelWithAsterisk(labelText: "Password")),
                            CustomTextFormField(
                              hintText: " ",
                              controller: passwordController,
                              validator: (value) =>
                                  appValidator.validateName(value),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: LabelWithAsterisk(
                                  labelText: "Conform Password"),
                            ),
                            CustomTextFormField(
                              hintText: " ",
                              controller: passwordConformController,
                              validator: (value) =>
                                  appValidator.validateName(value),
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
                      Get.to(const OTPSignUp(),
                          transition: Transition.rightToLeftWithFade);
                    },
                    text: "Submit",
                    color: AppColor.primaryColor,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
