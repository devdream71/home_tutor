import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/utils/validator.dart';
import 'package:education_home_tutor/view/academic/academic_auth/sign_up_awaiting.dart';
import 'package:education_home_tutor/widget/custom_button.dart';
import 'package:education_home_tutor/widget/custome_text_edit_form.dart';
import 'package:education_home_tutor/widget/lebel_with_asterisk.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AcademicSignUp extends StatefulWidget {
  const AcademicSignUp({super.key});

  @override
  State<AcademicSignUp> createState() => _AcademicSignUpState();
}

class _AcademicSignUpState extends State<AcademicSignUp> {
  @override
  Widget build(BuildContext context) {
    final appvalidator = AppValidation();
    final String title = Get.arguments is String ? Get.arguments : "Academic";
    TextEditingController academicTypeController = TextEditingController();
    TextEditingController totalStudentController = TextEditingController();
    TextEditingController totalTeacherController = TextEditingController();
    TextEditingController academyNameController = TextEditingController();
    TextEditingController idRegNoController = TextEditingController();
    TextEditingController eIINNOController = TextEditingController();
    TextEditingController founderController = TextEditingController();
    TextEditingController establishedController = TextEditingController();
    TextEditingController govPrivetController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    TextEditingController countryController = TextEditingController();
    TextEditingController cityController = TextEditingController();
    TextEditingController zipController = TextEditingController();
    TextEditingController primaryPhoneController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController conformPasswordController = TextEditingController();

    final formKey = GlobalKey<FormState>();

    bool passwordVisibilityOff = true; // Initially hidden
    bool passwordConfirmVisibilityOff = true; // Initially hidden

    bool isTermsAccepted = false;

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
                              color: AppColor.primaryColor,
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
                  CustomTextFormField(
                    hintText: " ",
                    controller: academicTypeController,
                    validator: (value) =>
                        appvalidator.validateCantBeEmpty(value),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const LabelWithAsterisk(
                    labelText: "Total Student",
                    isRequired: true,
                  ),
                  CustomTextFormField(
                    hintText: " ",
                    controller: totalStudentController,
                    validator: (value) =>
                        appvalidator.validateCantBeEmpty(value),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const LabelWithAsterisk(
                    labelText: "Total Teacher",
                    isRequired: true,
                  ),
                  CustomTextFormField(
                    hintText: " ",
                    controller: totalTeacherController,
                    validator: (value) =>
                        appvalidator.validateCantBeEmpty(value),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const LabelWithAsterisk(
                    labelText: "Academy Name",
                    isRequired: true,
                  ),
                  CustomTextFormField(
                    hintText: " ",
                    controller: academyNameController,
                    validator: (value) =>
                        appvalidator.validateCantBeEmpty(value),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const LabelWithAsterisk(
                    labelText: "Id/Reg/Index No",
                    isRequired: true,
                  ),
                  CustomTextFormField(
                    hintText: " ",
                    controller: idRegNoController,
                    validator: (value) =>
                        appvalidator.validateCantBeEmpty(value),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const LabelWithAsterisk(
                    labelText: "EIIN No",
                    isRequired: true,
                  ),
                  CustomTextFormField(
                    hintText: "  ",
                    //maxLines: 2,
                    controller: eIINNOController,
                    validator: (value) =>
                        appvalidator.validateCantBeEmpty(value),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const LabelWithAsterisk(
                    labelText: "Founder Name",
                    isRequired: true,
                  ),
                  CustomTextFormField(
                    hintText: "   ",
                    //maxLines: 2,
                    controller: founderController,
                    validator: (value) =>
                        appvalidator.validateCantBeEmpty(value),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const LabelWithAsterisk(
                    labelText: "Established Dat",
                    isRequired: true,
                  ),
                  CustomTextFormField(
                    hintText: " ",
                    //maxLines: 2,
                    controller: establishedController,
                    validator: (value) =>
                        appvalidator.validateCantBeEmpty(value),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const LabelWithAsterisk(
                    labelText: "Gov/Privet/Reg",
                    isRequired: true,
                  ),
                  CustomTextFormField(
                    hintText: "  ",
                    controller: govPrivetController,
                    validator: (value) =>
                        appvalidator.validateCantBeEmpty(value),
                    //maxLines: 2,
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
                    //maxLines: 2,
                    controller: addressController,
                    validator: (value) =>
                        appvalidator.validateCantBeEmpty(value),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const LabelWithAsterisk(
                    labelText: "Country",
                    isRequired: true,
                  ),
                  CustomTextFormField(
                    hintText: "  ",
                    controller: countryController,
                    validator: (value) =>
                        appvalidator.validateCantBeEmpty(value),
                    //maxLines: 2,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const LabelWithAsterisk(
                    labelText: "City",
                    isRequired: true,
                  ),
                  CustomTextFormField(
                    hintText: "  ",
                    //maxLines: 2,
                    controller: cityController,
                    validator: (value) =>
                        appvalidator.validateCantBeEmpty(value),
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
                    validator: (value) =>
                        appvalidator.validateCantBeEmpty(value),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text("Contract Information"),
                  const SizedBox(
                    height: 8,
                  ),
                  const LabelWithAsterisk(
                    labelText: "Primary Phone Number",
                    isRequired: true,
                  ),
                  CustomTextFormField(
                    hintText: "  ",
                    //maxLines: 2,
                    controller: primaryPhoneController,
                    validator: (value) =>
                        appvalidator.validatePhoneNumber(value),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const LabelWithAsterisk(
                    labelText: "Email",
                    isRequired: true,
                  ),
                  CustomTextFormField(
                    hintText: "  ",
                    //maxLines: 2,
                    controller: emailController,
                    validator: (value) => appvalidator.validateEmail(value),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: LabelWithAsterisk(labelText: "Password"),
                            ),
                            CustomTextFormField(
                              hintText: "",
                              controller: passwordController,
                              obscureText: passwordVisibilityOff,
                              suffixIcon: IconButton(
                                icon: Icon(
                                  passwordVisibilityOff
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                ),
                                onPressed: () {
                                  setState(() {
                                    passwordVisibilityOff =
                                        !passwordVisibilityOff;
                                  });
                                },
                              ),
                              validator: (value) =>
                                  appvalidator.validatePassword(value),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: LabelWithAsterisk(
                                  labelText: "Confirm Password"),
                            ),
                            CustomTextFormField(
                              hintText: " ",
                              controller: conformPasswordController,
                              obscureText: passwordConfirmVisibilityOff,
                              suffixIcon: IconButton(
                                icon: Icon(
                                  passwordConfirmVisibilityOff
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                ),
                                onPressed: () {
                                  setState(() {
                                    passwordConfirmVisibilityOff =
                                        !passwordConfirmVisibilityOff;
                                  });
                                },
                              ),
                              validator: (value) =>
                                  appvalidator.validatePassword(value),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isTermsAccepted,
                        onChanged: (bool? value) {
                          setState(() {
                            isTermsAccepted = value ?? false;
                          });
                        },
                      ),
                      const Expanded(
                        child: Text(
                          'I accept the Terms and Conditions',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),

                  //  Row(
                  //       children: [
                  //         Checkbox(
                  //           value: showFatherInfo,
                  //           onChanged: (bool? value) {
                  //             setState(() {
                  //               showFatherInfo = value ?? false;
                  //             });
                  //           },
                  //         ),
                  //         const Text("Father Info"),
                  //       ],
                  //     ),

                  const SizedBox(
                    height: 10,
                  ),
                  CustomButton(
                    onPressed: () {
                      if (formKey.currentState?.validate() ?? false) {
                        Get.to(
                          const SignUpAwaiting(),
                          transition: Transition.rightToLeftWithFade,
                        );
                      } else {
                        // Optionally, display an error message or highlight invalid fields
                        print("Form validation failed. Please fix the errors.");
                      }
                    },
                    text: "Submit",
                    color: AppColor.primaryColor,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
