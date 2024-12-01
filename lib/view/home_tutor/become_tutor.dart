import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/utils/validator.dart';
import 'package:education_home_tutor/widget/custom_button.dart';
import 'package:education_home_tutor/widget/custome_text_edit_form.dart';
import 'package:education_home_tutor/widget/lebel_with_asterisk.dart';
import 'package:flutter/material.dart';

class BecomeTutor extends StatefulWidget {
  const BecomeTutor({super.key});

  @override
  State<BecomeTutor> createState() => _BecomeTutorState();
}

class _BecomeTutorState extends State<BecomeTutor> {
  TextEditingController educationInstituteController = TextEditingController();
  TextEditingController educationQualificationController =
      TextEditingController();
  TextEditingController passingYearController = TextEditingController();
  TextEditingController academicController = TextEditingController();
  TextEditingController classController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController areaController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController salaryRangeFormController = TextEditingController();
  TextEditingController salaryRangeToController = TextEditingController();
  TextEditingController detailsController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController whatsUpController = TextEditingController();
  TextEditingController youtubeController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  final appValidation = AppValidation();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const SizedBox(height: 10),
                // Center(
                //   child: Stack(
                //     alignment: Alignment.bottomRight,
                //     children: [
                //       CircleAvatar(
                //         radius: 65,
                //         backgroundColor: Colors.green[100],
                //         child: CircleAvatar(
                //           radius: 60,
                //           backgroundImage: _imageFile != null
                //               ? FileImage(File(_imageFile!.path))
                //               : const AssetImage(AppImages.splashLogo)
                //                   as ImageProvider,
                //         ),
                //       ),
                //       Positioned(
                //         bottom: 4,
                //         right: 4,
                //         child: GestureDetector(
                //           onTap: () {
                //             _showImageSourceActionSheet(context);
                //           },
                //           child: Container(
                //             decoration: const BoxDecoration(
                //               shape: BoxShape.circle,
                //               color: Colors.white,
                //             ),
                //             padding: const EdgeInsets.all(6),
                //             child: const Icon(
                //               Icons.camera_alt,
                //               size: 20,
                //               color: Colors.black,
                //             ),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                const SizedBox(height: 10),
                const Center(
                  child: Text(
                    'Home Tutor',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: LabelWithAsterisk(
                    labelText: "Education Institute",
                  ),
                ),
                CustomTextFormField(
                  hintText: "",
                  controller: educationInstituteController,
                  validator: (value) =>
                      appValidation.validateCantBeEmpty(value),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: LabelWithAsterisk(
                    labelText: "Education Qualification",
                  ),
                ),
                CustomTextFormField(
                  hintText: "",
                  controller: educationQualificationController,
                  validator: (value) =>
                      appValidation.validateCantBeEmpty(value),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: LabelWithAsterisk(
                    labelText: "Passing Year",
                  ),
                ),
                CustomTextFormField(
                  hintText: "",
                  controller: passingYearController,
                  validator: (value) =>
                      appValidation.validateCantBeEmpty(value),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: LabelWithAsterisk(
                    labelText: "Academy",
                  ),
                ),
                CustomTextFormField(
                  hintText: "",
                  controller: academicController,
                  validator: (value) =>
                      appValidation.validateCantBeEmpty(value),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: LabelWithAsterisk(
                    labelText: "Class",
                  ),
                ),
                CustomTextFormField(
                  hintText: "",
                  controller: classController,
                  validator: (value) =>
                      appValidation.validateCantBeEmpty(value),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: LabelWithAsterisk(
                    labelText: "Subject",
                  ),
                ),
                CustomTextFormField(
                  hintText: "",
                  controller: subjectController,
                  validator: (value) =>
                      appValidation.validateCantBeEmpty(value),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: LabelWithAsterisk(
                    labelText: "District",
                  ),
                ),
                CustomTextFormField(
                  hintText: "",
                  controller: districtController,
                  validator: (value) =>
                      appValidation.validateCantBeEmpty(value),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: LabelWithAsterisk(
                    labelText: "Area",
                  ),
                ),
                CustomTextFormField(
                  hintText: "",
                  controller: areaController,
                  validator: (value) =>
                      appValidation.validateCantBeEmpty(value),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: LabelWithAsterisk(
                    labelText: "Location",
                  ),
                ),
                CustomTextFormField(
                  hintText: "",
                  controller: locationController,
                  validator: (value) =>
                      appValidation.validateCantBeEmpty(value),
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
                              child: LabelWithAsterisk(
                                  labelText: "Salary Range From")),
                          CustomTextFormField(
                            hintText: " ",
                            controller: salaryRangeFormController,
                            validator: (value) =>
                                appValidation.validateCantBeEmpty(value),
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
                            child: LabelWithAsterisk(labelText: "To"),
                          ),
                          CustomTextFormField(
                            hintText: "",
                            controller: salaryRangeToController,
                            validator: (value) =>
                                appValidation.validateCantBeEmpty(value),
                          ),
                        ],
                      ),
                    )

                    // const SizedBox(height: 8,),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: LabelWithAsterisk(
                    labelText: "Details",
                  ),
                ),
                CustomTextFormField(
                  hintText: "",
                  controller: detailsController,
                  validator: (value) =>
                      appValidation.validateCantBeEmpty(value),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: LabelWithAsterisk(
                    labelText: "E-mail",
                  ),
                ),
                CustomTextFormField(
                  hintText: "",
                  controller: emailController,
                  validator: (value) => appValidation.validateEmail(value),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: LabelWithAsterisk(
                    labelText: "Mobile Number",
                  ),
                ),
                CustomTextFormField(
                  hintText: "",
                  controller: mobileController,
                  validator: (value) =>
                      appValidation.validatePhoneNumber(value),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: LabelWithAsterisk(
                    labelText: "Mobile Number (Whats App)",
                  ),
                ),
                CustomTextFormField(
                  hintText: "",
                  controller: whatsUpController,
                  validator: (value) =>
                      appValidation.validatePhoneNumber(value),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: LabelWithAsterisk(
                    labelText: "Youtube link",
                  ),
                ),
                const CustomTextFormField(
                  hintText: "",
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomButton(
                  onPressed: () {
                    //Get.to(const OTPSignUp(), transition: Transition.rightToLeftWithFade);
                  },
                  text: "Submit",
                  color: AppColor.primaryColor,
                ),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  // void _showImageSourceActionSheet(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return SafeArea(
  //         child: Wrap(
  //           children: [
  //             ListTile(
  //               leading: const Icon(Icons.photo_library),
  //               title: const Text('Gallery'),
  //               onTap: () {
  //                 Navigator.of(context).pop();
  //                 _pickImage(ImageSource.gallery);
  //               },
  //             ),
  //             ListTile(
  //               leading: const Icon(Icons.photo_camera),
  //               title: const Text('Camera'),
  //               onTap: () {
  //                 Navigator.of(context).pop();
  //                 _pickImage(ImageSource.camera);
  //               },
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }
}
