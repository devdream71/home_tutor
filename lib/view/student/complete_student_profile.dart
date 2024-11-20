import 'dart:io';

import 'package:education_home_tutor/utils/images.dart';
import 'package:education_home_tutor/view/student/add_request_online_admission.dart';
import 'package:education_home_tutor/widget/custom_button.dart';
import 'package:education_home_tutor/widget/custome_text_edit_form.dart';
import 'package:education_home_tutor/widget/lebel_with_asterisk.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:image_picker/image_picker.dart';

class CompleteStudentProfile extends StatefulWidget {
  const CompleteStudentProfile({super.key});

  @override
  State<CompleteStudentProfile> createState() => _CompleteStudentProfileState();
}

class _CompleteStudentProfileState extends State<CompleteStudentProfile> {
  final ImagePicker _picker = ImagePicker();

  XFile? _logoImageFile;
  XFile? _coverImageFile;

  Future<void> _pickImage(ImageSource source, String imageType) async {
    final XFile? pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        if (imageType == 'logo') {
          _logoImageFile = pickedFile;
        } else if (imageType == 'cover') {
          _coverImageFile = pickedFile;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: Image.asset(
                    'assets/bookicon.png',
                    height: 100,
                  ),
                ),
                const Center(
                  child: Text(
                    "Student Information",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const LabelWithAsterisk(
                  labelText: "Email or Mobile Number",
                ),
                const CustomTextFormField(
                  hintText: "Email or Mobile Number",
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: LabelWithAsterisk(labelText: "Religion")),
                          CustomTextFormField(
                            hintText: "  ",
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
                              labelText: "Gender",
                              isRequired: true,
                            ),
                          ),
                          CustomTextFormField(
                            hintText: " ",
                          ),
                        ],
                      ),
                    )

                    // const SizedBox(height: 8,),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: LabelWithAsterisk(
                                labelText: "Date of Birth",
                                isRequired: true,
                              )),
                          CustomTextFormField(
                            hintText: "  ",
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
                              labelText: "Blood Group",
                              isRequired: true,
                            ),
                          ),
                          CustomTextFormField(
                            hintText: " ",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const LabelWithAsterisk(
                  labelText: "Phone Number",
                  isRequired: true,
                ),
                const CustomTextFormField(
                  hintText: "",
                ),
                const SizedBox(
                  height: 10,
                ),
                const LabelWithAsterisk(
                  labelText: "Email",
                  isRequired: true,
                ),
                const CustomTextFormField(
                  hintText: "",
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  onPressed: () {
                    Get.to(const AddRequestOnlineAdmission(),
                        transition: Transition.rightToLeftWithFade);
                  },
                  text: "Submit",
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
