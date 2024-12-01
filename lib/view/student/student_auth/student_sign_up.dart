import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/utils/validator.dart';
import 'package:education_home_tutor/view/student/student_auth/student_log_in.dart';
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
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController mobileController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    TextEditingController countryController = TextEditingController();
    TextEditingController zipController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController conformController = TextEditingController();

    bool showPassword = true;
    bool showPasswordConform = true;


    final appValidation = AppValidation();

    final formKey = GlobalKey<FormState>();

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Form(
              key : formKey,
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
                  CustomTextFormField(
                    hintText: " ",
                    controller: nameController,
                    validator: (value) =>
                        appValidation.validateCantBeEmpty(value),
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
                    validator: (value) => appValidation.validateEmail(value),
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
                    controller: mobileController,
                    validator: (value) =>
                        appValidation.validatePhoneNumber(value),
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
                    validator: (value) => appValidation.validateName(value),
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
                    validator: (value) => appValidation.validateName(value),
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
                     controller: zipController,
                     validator: (value) =>  appValidation.validateName(value),
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
                                child: LabelWithAsterisk(labelText: "Password")),
                            CustomTextFormField(
                              hintText: "",
                              controller: passwordController,
                              validator: (value) => appValidation.validatePassword(value),
                              obscureText: showPassword,
                              suffixIcon: const Icon(Icons.visibility_off),
                              
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
                              controller: conformController,
                              validator: (value) => appValidation.validatePassword(value),
                              obscureText: showPasswordConform,
                              suffixIcon: const Icon(Icons.visibility_off),
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

                       if (formKey.currentState!.validate()) {
                        
                        Get.to(const StudentLogIn(),
                            transition: Transition.rightToLeftWithFade);

                      }
                          
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
