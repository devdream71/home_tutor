import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/utils/validator.dart';
import 'package:education_home_tutor/view/teacher/teacher_auth/teacher_login.dart';
import 'package:education_home_tutor/widget/custom_button.dart';
import 'package:education_home_tutor/widget/custome_text_edit_form.dart';
import 'package:education_home_tutor/widget/lebel_with_asterisk.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TeacherSignUp extends StatelessWidget {
  const TeacherSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController numberController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    TextEditingController countryController = TextEditingController();
    TextEditingController zipController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController passwordConformationController =
        TextEditingController();

    final formkey = GlobalKey<FormState>();

    final appValidator = AppValidation();

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Form(
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
                      'Education Management Software ',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColor.primaryColor,
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
                        children: [],
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
                  CustomTextFormField(
                    hintText: " ",
                    controller: nameController,
                    validator: (value) =>
                        appValidator.validateCantBeEmpty(value),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const LabelWithAsterisk(
                    labelText: "Your Email",
                    isRequired: true,
                  ),
                  CustomTextFormField(
                    hintText: " ",
                    controller: emailController,
                    validator: (value) => appValidator.validateEmail(value),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const LabelWithAsterisk(
                    labelText: "Mobile Number",
                    isRequired: true,
                  ),
                  CustomTextFormField(
                    hintText: " ",
                    showDropdownIcon: true,
                    controller: numberController,
                    validator: (value) =>
                        appValidator.validatePhoneNumber(value),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const LabelWithAsterisk(
                    labelText: "Address",
                    isRequired: true,
                  ),
                  CustomTextFormField(
                    hintText: " ",
                    controller: addressController,
                    validator: (value) => appValidator.validateName(value),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const LabelWithAsterisk(
                    labelText: "Country",
                    isRequired: true,
                  ),
                  CustomTextFormField(
                    hintText: " ",
                    controller: countryController,
                    validator: (value) => appValidator.validateName(value),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const LabelWithAsterisk(
                    labelText: "Zip code",
                    isRequired: true,
                  ),
                  CustomTextFormField(
                    hintText: "  ",
                    //maxLines: 2,
                    controller: zipController,
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
                              hintText: "",
                              controller: passwordController,
                              validator: (value) =>
                                  appValidator.validatePassword(value),
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
                              hintText: "",
                              controller: emailController,
                              validator: (value) =>
                                  appValidator.validatePassword(value),
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
                      Get.to(const TeacherLoginView(),
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
