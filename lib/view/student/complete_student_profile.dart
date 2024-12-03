import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/utils/validator.dart';

import 'package:education_home_tutor/view/student/add_request_online_admission.dart';
import 'package:education_home_tutor/widget/custom_button.dart';
import 'package:education_home_tutor/widget/custome_text_edit_form.dart';
import 'package:education_home_tutor/widget/lebel_with_asterisk.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CompleteStudentProfile extends StatefulWidget {
  const CompleteStudentProfile({super.key});

  @override
  State<CompleteStudentProfile> createState() => _CompleteStudentProfileState();
}

class _CompleteStudentProfileState extends State<CompleteStudentProfile> {
  final List<String> _religion = ["Islam", "Hundu", "christian", "Buddho"];
  String? _selectedReligion;

  final List<String> _gender = [
    "Male",
    "Female",
  ];
  String? _selectedgender;

  final List<String> _bloodgroup = [
    "A +",
    "A -",
    "B +",
    "B -",
    "O +",
    "O -",
  ];
  String? _selectedbloodgroup;

  final TextEditingController _dateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Initialize selectedRows with false for each entry in paymentData

    _dateController.text = DateFormat('MMM d, yyyy').format(DateTime.now());
  }

  Future<void> _pickDate(BuildContext context) async {
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (date != null) {
      setState(() {
        _dateController.text = DateFormat('MMM d, yyyy').format(date);
      });
    }
  }

  bool showFatherInfo = false;
  bool showMotherInfo = false;
  bool showMoreInfo = false;

  //basic controller
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController religionController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController dateofBathController = TextEditingController();
  TextEditingController bloodGroupController = TextEditingController();
  TextEditingController birthCertificateController = TextEditingController();
  TextEditingController nIDController = TextEditingController();
  TextEditingController presendAddressController = TextEditingController();
  TextEditingController zipController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController permanentAddressController = TextEditingController();

  //father info
  TextEditingController fatherNameController = TextEditingController();
  TextEditingController fatherOccupationController = TextEditingController();
  TextEditingController fatherReligionController = TextEditingController();
  TextEditingController fatherPhoneController = TextEditingController();
  TextEditingController fatherNidController = TextEditingController();

  //mother info
  TextEditingController motherNameController = TextEditingController();
  TextEditingController motherOccupationController = TextEditingController();
  TextEditingController motherReligionController = TextEditingController();
  TextEditingController motherPhoneController = TextEditingController();
  TextEditingController motherNIdController = TextEditingController();

  //guardian info
  TextEditingController guardianNameController = TextEditingController();
  TextEditingController guardianOccupationController = TextEditingController();
  TextEditingController guardionRelationController = TextEditingController();
  TextEditingController guardinaPhoneController = TextEditingController();
  TextEditingController guardianNidController = TextEditingController();
  TextEditingController relationOfStudentController = TextEditingController();

  final appValidator = AppValidation();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Center(
                    child: Image.asset(
                      'assets/bookicon.png',
                      height: 60,
                    ),
                  ),
                  const Center(
                    child: Text(
                      "Student Information",
                      style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildBasicInfoForm(),
                  Column(
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: showFatherInfo,
                            onChanged: (bool? value) {
                              setState(() {
                                showFatherInfo = value ?? false;
                              });
                            },
                          ),
                          const Text("Father Info"),
                        ],
                      ),
                      if (showFatherInfo) _buildFatherInfoForm(),
                      Row(
                        children: [
                          Checkbox(
                            value: showMotherInfo,
                            onChanged: (bool? value) {
                              setState(() {
                                showMotherInfo = value ?? false;
                              });
                            },
                          ),
                          const Text("Mother Info"),
                        ],
                      ),
                      if (showMotherInfo) _buildMotherInfoForm(),
                      Row(
                        children: [
                          Checkbox(
                            value: showMoreInfo,
                            onChanged: (bool? value) {
                              setState(() {
                                showMoreInfo = value ?? false;
                              });
                            },
                          ),
                          const Text("Guardian Info"),
                        ],
                      ),
                      if (showMoreInfo) _buildMoreInfoForm(),
                    ],
                  ),
                  CustomButton(
                    onPressed: () {
                      Get.to(const AddRequestOnlineAdmission(),
                          transition: Transition.rightToLeftWithFade);
                      //     if (formKey.currentState?.validate() ?? false) {
                      //   Get.to(
                      //     const SignUpAwaiting(),
                      //     transition: Transition.rightToLeftWithFade,
                      //   );
                      // } else {
                      //   // Optionally, display an error message or highlight invalid fields
                      //   print("Form validation failed. Please fix the errors.");
                      // }
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

  Widget _buildBasicInfoForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LabelWithAsterisk(labelText: "Full Name"),
        CustomTextFormField(
          hintText: " ",
          controller: nameController,
          validator: (value) => appValidator.validateName(value),
        ),
        const SizedBox(height: 10),
        const LabelWithAsterisk(labelText: "Phone Number", isRequired: true),
        CustomTextFormField(
          hintText: " ",
          controller: phoneController,
          validator: (value) => appValidator.validatePhoneNumber(value),
        ),
        const SizedBox(height: 10),
        const LabelWithAsterisk(labelText: "Email"),
        CustomTextFormField(
            hintText: " ",
            controller: emailController,
            validator: (value) => appValidator.validateEmail(value)),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: LabelWithAsterisk(labelText: "Religion"),
                  ),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      //hintText: "Select Session/Class",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 5,
                      ),
                    ),
                    value: _selectedReligion,
                    items: _religion.map((religion) {
                      return DropdownMenuItem<String>(
                        value: religion,
                        child: Text(religion),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedReligion = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: LabelWithAsterisk(labelText: "Gender"),
                  ),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      //hintText: "Select Session/Class",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 5,
                      ),
                    ),
                    value: _selectedgender,
                    items: _gender.map((gender) {
                      return DropdownMenuItem<String>(
                        value: gender,
                        child: Text(gender),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedgender = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: LabelWithAsterisk(labelText: "Date"),
                  ),
                  GestureDetector(
                    onTap: () => _pickDate(context),
                    child: AbsorbPointer(
                      child: CustomTextFormField(
                        hintText: "Select Date",
                        controller: _dateController,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: LabelWithAsterisk(labelText: "Blood Group"),
                  ),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      //hintText: "Select Session/Class",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 5,
                      ),
                    ),
                    value: _selectedbloodgroup,
                    items: _bloodgroup.map((blood) {
                      return DropdownMenuItem<String>(
                        value: blood,
                        child: Text(blood),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedbloodgroup = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const LabelWithAsterisk(labelText: "Birth Certificate"),
        CustomTextFormField(
          hintText: " ",
          controller: birthCertificateController,
          validator: (value) => appValidator.validateCantBeEmpty(value),
        ),
        const SizedBox(height: 10),
        const LabelWithAsterisk(labelText: "NID"),
        CustomTextFormField(
          hintText: " ",
          controller: nIDController,
          validator: (value) => appValidator.validateCantBeEmpty(value),
        ),
        const SizedBox(height: 10),
        const LabelWithAsterisk(labelText: "Persent address"),
        CustomTextFormField(
          hintText: " ",
          controller: presendAddressController,
          validator: (value) => appValidator.validateCantBeEmpty(value),
        ),
        const LabelWithAsterisk(labelText: "Zip Code"),
        CustomTextFormField(
          hintText: " ",
          controller: zipController,
          validator: (value) => appValidator.validateCantBeEmpty(value),
        ),
        const SizedBox(height: 10),
        const LabelWithAsterisk(labelText: "Country"),
        CustomTextFormField(
          hintText: " ",
          controller: countryController,
          validator: (value) => appValidator.validateCantBeEmpty(value),
        ),
        const SizedBox(height: 10),
        const LabelWithAsterisk(labelText: "Permanent address"),
        CustomTextFormField(
          hintText: " ",
          controller: permanentAddressController,
          validator: (value) => appValidator.validateCantBeEmpty(value),
        ),
        const LabelWithAsterisk(labelText: "Zip Code"),
        CustomTextFormField(
          hintText: " ",
          controller: zipController,
          validator: (value) => appValidator.validateCantBeEmpty(value),
        ),
        const SizedBox(height: 10),
        const LabelWithAsterisk(labelText: "Country"),
        CustomTextFormField(
          hintText: " ",
          controller: countryController,
          validator: (value) => appValidator.validateCantBeEmpty(value),
        ),
        const SizedBox(height: 30),
      ],
    );
  }

  ///===>father info
  Widget _buildFatherInfoForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LabelWithAsterisk(labelText: "Father's Name"),
        CustomTextFormField(
          hintText: " ",
          controller: fatherNameController,
          validator: (value) => appValidator.validateCantBeEmpty(value),
        ),
        const SizedBox(height: 10),
        const LabelWithAsterisk(
          labelText: "Father's Occupation",
        ),
        CustomTextFormField(
          hintText: " ",
          showDropdownIcon: true,
          controller: fatherOccupationController,
          validator: (value) => appValidator.validateCantBeEmpty(value),
        ),
        const SizedBox(height: 10),
        const LabelWithAsterisk(
          labelText: "Father's Religion",
        ),
        CustomTextFormField(
          hintText: " ",
          showDropdownIcon: true,
          controller: fatherReligionController,
          validator: (value) => appValidator.validateCantBeEmpty(value),
        ),
        const SizedBox(height: 10),
        const LabelWithAsterisk(labelText: "Father's Phone Number"),
        CustomTextFormField(
          hintText: " ",
          controller: fatherPhoneController,
          validator: (value) => appValidator.validatePhoneNumber(value),
        ),
        const SizedBox(height: 10),
        const LabelWithAsterisk(labelText: "Father's NID"),
        CustomTextFormField(
          hintText: " ",
          controller: fatherNidController,
          validator: (value) => appValidator.validateCantBeEmpty(value),
        ),
        const SizedBox(height: 30),
      ],
    );
  }

  //====>mother info
  Widget _buildMotherInfoForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LabelWithAsterisk(labelText: "Mother's Name"),
        CustomTextFormField(
          hintText: " ",
          controller: motherNameController,
          validator: (value) => appValidator.validateCantBeEmpty(value),
        ),
        const SizedBox(height: 10),
        const LabelWithAsterisk(labelText: "Mother's Occupation"),
        CustomTextFormField(
          hintText: " ",
          showDropdownIcon: true,
          controller: motherOccupationController,
          validator: (value) => appValidator.validateCantBeEmpty(value),
        ),
        const SizedBox(height: 10),
        const LabelWithAsterisk(labelText: "Mother's Religion"),
        CustomTextFormField(
          hintText: " ",
          showDropdownIcon: true,
          controller: motherReligionController,
          validator: (value) => appValidator.validateCantBeEmpty(value),
        ),
        const SizedBox(height: 10),
        const LabelWithAsterisk(labelText: "Mother's Phone Number"),
        CustomTextFormField(
          hintText: " ",
          controller: motherPhoneController,
          validator: (value) => appValidator.validatePhoneNumber(value),
        ),
        const SizedBox(height: 10),
        const LabelWithAsterisk(labelText: "Mother's NID"),
        CustomTextFormField(
          hintText: " ",
          controller: motherNIdController,
          validator: (value) => appValidator.validateCantBeEmpty(value),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  ///===>Guardian info
  Widget _buildMoreInfoForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LabelWithAsterisk(labelText: "Guardian Name"),
        CustomTextFormField(
          hintText: "",
          controller: guardianNameController,
          validator: (value) => appValidator.validateCantBeEmpty(value),
        ),
        const SizedBox(height: 10),
        const LabelWithAsterisk(labelText: "Guardian's Occupation"),
        CustomTextFormField(
          hintText: " ",
          controller: guardianOccupationController,
          validator: (value) => appValidator.validateCantBeEmpty(value),
        ),
        const SizedBox(height: 10),
        const LabelWithAsterisk(
          labelText: "Guardian's Religion",
        ),
        CustomTextFormField(
          hintText: " ",
          showDropdownIcon: true,
          controller: guardianOccupationController,
          validator: (value) => appValidator.validateCantBeEmpty(value),
        ),
        const SizedBox(height: 10),
        const LabelWithAsterisk(labelText: "Guardian's Phone Number"),
        CustomTextFormField(
          hintText: " ",
          controller: guardinaPhoneController,
          validator: (value) => appValidator.validatePhoneNumber(value),
        ),
        const SizedBox(height: 10),
        const LabelWithAsterisk(labelText: "Guardian's NID"),
        CustomTextFormField(
          hintText: " ",
          controller: guardianNidController,
          validator: (value) => appValidator.validateCantBeEmpty(value),
        ),
        const SizedBox(height: 10),
        const LabelWithAsterisk(
          labelText: "Relation of Student",
        ),
        CustomTextFormField(
          hintText: " ",
          showDropdownIcon: true,
          controller: guardionRelationController,
          validator: (value) => appValidator.validateCantBeEmpty(value),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
