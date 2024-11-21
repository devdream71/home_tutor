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

// class CompleteStudentProfile extends StatefulWidget {
//   const CompleteStudentProfile({super.key});

//   @override
//   State<CompleteStudentProfile> createState() => _CompleteStudentProfileState();
// }

// class _CompleteStudentProfileState extends State<CompleteStudentProfile> {
//   final ImagePicker _picker = ImagePicker();

//   XFile? _logoImageFile;
//   XFile? _coverImageFile;

//   Future<void> _pickImage(ImageSource source, String imageType) async {
//     final XFile? pickedFile = await _picker.pickImage(source: source);
//     if (pickedFile != null) {
//       setState(() {
//         if (imageType == 'logo') {
//           _logoImageFile = pickedFile;
//         } else if (imageType == 'cover') {
//           _coverImageFile = pickedFile;
//         }
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const SizedBox(
//                   height: 40,
//                 ),
//                 Center(
//                   child: Image.asset(
//                     'assets/bookicon.png',
//                     height: 100,
//                   ),
//                 ),
//                 const Center(
//                   child: Text(
//                     "Student Information",
//                     style: TextStyle(
//                         color: Colors.blue, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 const LabelWithAsterisk(
//                   labelText: "Email or Mobile Number",
//                 ),
//                 const CustomTextFormField(
//                   hintText: "Email or Mobile Number",
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Row(
//                   children: [
//                     Expanded(
//                       child: Column(
//                         children: [
//                           Align(
//                               alignment: Alignment.centerLeft,
//                               child: LabelWithAsterisk(labelText: "Religion")),
//                           CustomTextFormField(
//                             hintText: "  ",
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Expanded(
//                       child: Column(
//                         children: [
//                           Align(
//                             alignment: Alignment.centerLeft,
//                             child: LabelWithAsterisk(
//                               labelText: "Gender",
//                               isRequired: true,
//                             ),
//                           ),
//                           CustomTextFormField(
//                             hintText: " ",
//                           ),
//                         ],
//                       ),
//                     )

//                     // const SizedBox(height: 8,),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Row(
//                   children: [
//                     Expanded(
//                       child: Column(
//                         children: [
//                           Align(
//                               alignment: Alignment.centerLeft,
//                               child: LabelWithAsterisk(
//                                 labelText: "Date of Birth",
//                                 isRequired: true,
//                               )),
//                           CustomTextFormField(
//                             hintText: "  ",
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Expanded(
//                       child: Column(
//                         children: [
//                           Align(
//                             alignment: Alignment.centerLeft,
//                             child: LabelWithAsterisk(
//                               labelText: "Blood Group",
//                               isRequired: true,
//                             ),
//                           ),
//                           CustomTextFormField(
//                             hintText: " ",
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 const LabelWithAsterisk(
//                   labelText: "Phone Number",
//                   isRequired: true,
//                 ),
//                 const CustomTextFormField(
//                   hintText: "",
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const LabelWithAsterisk(
//                   labelText: "Email",
//                   isRequired: true,
//                 ),
//                 const CustomTextFormField(
//                   hintText: "",
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 CustomButton(
//                   onPressed: () {
//                     Get.to(const AddRequestOnlineAdmission(),
//                         transition: Transition.rightToLeftWithFade);
//                   },
//                   text: "Submit",
//                   color: Colors.blue,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }




// class CompleteStudentProfile extends StatefulWidget {
//   const CompleteStudentProfile({super.key});

//   @override
//   State<CompleteStudentProfile> createState() => _CompleteStudentProfileState();
// }

// class _CompleteStudentProfileState extends State<CompleteStudentProfile> {
//   final ImagePicker _picker = ImagePicker();

//   XFile? _logoImageFile;
//   XFile? _coverImageFile;
//   String selectedInfo = "basic"; // Default selected section

//   Future<void> _pickImage(ImageSource source, String imageType) async {
//     final XFile? pickedFile = await _picker.pickImage(source: source);
//     if (pickedFile != null) {
//       setState(() {
//         if (imageType == 'logo') {
//           _logoImageFile = pickedFile;
//         } else if (imageType == 'cover') {
//           _coverImageFile = pickedFile;
//         }
//       });
//     }
//   }

  

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const SizedBox(height: 40),
//                 Center(
//                   child: Image.asset(
//                     'assets/bookicon.png',
//                     height: 100,
//                   ),
//                 ),
//                 const Center(
//                   child: Text(
//                     "Student Information",
//                     style: TextStyle(
//                         color: Colors.blue, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 _buildBasicInfoForm(),
//                 Row(
//                   children: [
//                     Radio<String>(
//                       value: "father",
//                       groupValue: selectedInfo,
//                       onChanged: (value) {
//                         setState(() {
//                           selectedInfo = value!;
//                         });
//                       },
//                     ),
//                     const Text("Father Info"),
//                     Radio<String>(
//                       value: "mother",
//                       groupValue: selectedInfo,
//                       onChanged: (value) {
//                         setState(() {
//                           selectedInfo = value!;
//                         });
//                       },
//                     ),
//                     const Text("Mother Info"),
//                     Radio<String>(
//                       value: "more",
//                       groupValue: selectedInfo,
//                       onChanged: (value) {
//                         setState(() {
//                           selectedInfo = value!;
//                         });
//                       },
//                     ),
//                     const Text("More Info"),
//                   ],
//                 ),
//                 if (selectedInfo == "father") _buildFatherInfoForm(),
//                 if (selectedInfo == "mother") _buildMotherInfoForm(),
//                 if (selectedInfo == "more") _buildMoreInfoForm(),
//                 CustomButton(
//                   onPressed: () {
//                     Get.to(const AddRequestOnlineAdmission(),
//                         transition: Transition.rightToLeftWithFade);
//                   },
//                   text: "Submit",
//                   color: Colors.blue,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildBasicInfoForm() {
//     return const Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         LabelWithAsterisk(labelText: "Full Name"),
//         CustomTextFormField(hintText: "Full Name"),
//         SizedBox(height: 10),
//          LabelWithAsterisk(labelText: "Phone Number", isRequired: true),
//         CustomTextFormField(hintText: "Phone"),
//         SizedBox(height: 10),
//         LabelWithAsterisk(labelText: "Email"),
//         CustomTextFormField(hintText: "Email"),
        
       
//         SizedBox(height: 10),
//         Row(
//           children: [
//             Expanded(
//               child: Column(
//                 children: [
//                   Align(
//                     alignment: Alignment.centerLeft,
//                     child: LabelWithAsterisk(labelText: "Religion"),
//                   ),
//                   CustomTextFormField(hintText: "Religion"),
//                 ],
//               ),
//             ),
//             SizedBox(width: 10),
//             Expanded(
//               child: Column(
//                 children: [
//                   Align(
//                     alignment: Alignment.centerLeft,
//                     child: LabelWithAsterisk(labelText: "Gender"),
//                   ),
//                   CustomTextFormField(hintText: "Enter gender"),
//                 ],
//               ),
//             ),
//           ],
//         ),
//         SizedBox(height: 10),
//         Row(
//           children: [
//             Expanded(
//               child: Column(
//                 children: [
//                   Align(
//                     alignment: Alignment.centerLeft,
//                     child: LabelWithAsterisk(labelText: "Date of Birth"),
//                   ),
//                   CustomTextFormField(hintText: "Enter date of birth"),
//                 ],
//               ),
//             ),
//             SizedBox(width: 10),
//             Expanded(
//               child: Column(
//                 children: [
//                   Align(
//                     alignment: Alignment.centerLeft,
//                     child: LabelWithAsterisk(labelText: "Blood Group"),
//                   ),
//                   CustomTextFormField(hintText: "Blood Group"),
//                 ],
//               ),
//             ),
//           ],
//         ),
//         SizedBox(height: 20),
//       ],
//     );
//   }

//   Widget _buildFatherInfoForm() {
//     return const Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         LabelWithAsterisk(labelText: "Father's Name"),
//         CustomTextFormField(hintText: "Enter father's name"),
//         SizedBox(height: 10),
//         LabelWithAsterisk(labelText: "Father's Occupation"),
//         CustomTextFormField(hintText: "Enter father's occupation"),
//         SizedBox(height: 20),
//       ],
//     );
//   }

//   Widget _buildMotherInfoForm() {
//     return const Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         LabelWithAsterisk(labelText: "Mother's Name"),
//         CustomTextFormField(hintText: "Enter mother's name"),
//         SizedBox(height: 10),
//         LabelWithAsterisk(labelText: "Mother's Occupation"),
//         CustomTextFormField(hintText: "Enter mother's occupation"),
//         SizedBox(height: 20),
//       ],
//     );
//   }

//   Widget _buildMoreInfoForm() {
//     return const Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         LabelWithAsterisk(labelText: "Additional Info"),
//         CustomTextFormField(hintText: "Enter additional info"),
//         SizedBox(height: 10),
//         LabelWithAsterisk(labelText: "Remarks"),
//         CustomTextFormField(hintText: "Enter remarks"),
//         SizedBox(height: 20),
//       ],
//     );
//   }
// }




 class CompleteStudentProfile extends StatefulWidget {
  const CompleteStudentProfile({super.key});

  @override
  State<CompleteStudentProfile> createState() => _CompleteStudentProfileState();
}

class _CompleteStudentProfileState extends State<CompleteStudentProfile> {
  bool showFatherInfo = false;
  bool showMotherInfo = false;
  bool showMoreInfo = false;

 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
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

   Widget _buildBasicInfoForm() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelWithAsterisk(labelText: "Full Name"),
        CustomTextFormField(hintText: " "),
        SizedBox(height: 10),
        LabelWithAsterisk(labelText: "Phone Number", isRequired: true),
        CustomTextFormField(hintText: " "),
        SizedBox(height: 10),
        LabelWithAsterisk(labelText: "Email"),
        CustomTextFormField(hintText: " "),
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: LabelWithAsterisk(labelText: "Religion"),
                  ),
                  CustomTextFormField(hintText: " ", showDropdownIcon: true,),
                ],
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: LabelWithAsterisk(labelText: "Gender"),
                  ),
                  CustomTextFormField(hintText: " ", showDropdownIcon: true,),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: LabelWithAsterisk(labelText: "Date of Birth"),
                  ),
                  CustomTextFormField(hintText: " "),
                ],
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: LabelWithAsterisk(labelText: "Blood Group"),
                  ),
                  CustomTextFormField(hintText: " ", showDropdownIcon: true,),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        LabelWithAsterisk(labelText: "Birth Certificate"),
        CustomTextFormField(hintText: " "),
        SizedBox(height: 10),
        LabelWithAsterisk(labelText: "NID"),
        CustomTextFormField(hintText: " "),
        SizedBox(height: 10),
        LabelWithAsterisk(labelText: "Persent address"),
        CustomTextFormField(hintText: " "),
        LabelWithAsterisk(labelText: "Zip Code"),
        CustomTextFormField(hintText: " "),
        SizedBox(height: 10),
        LabelWithAsterisk(labelText: "Country"),
        CustomTextFormField(hintText: " "),
        SizedBox(height: 10),
        LabelWithAsterisk(labelText: "Permanent address"),
        CustomTextFormField(hintText: " "),
         LabelWithAsterisk(labelText: "Zip Code"),
        CustomTextFormField(hintText: " "),
        SizedBox(height: 10),
        LabelWithAsterisk(labelText: "Country"),
        CustomTextFormField(hintText: " "),
        SizedBox(height: 10),
        SizedBox(height: 20),
      ],
    );
  }
  
  ///===>father info
  Widget _buildFatherInfoForm() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelWithAsterisk(labelText: "Father's Name"),
        CustomTextFormField(hintText: " "),
        SizedBox(height: 10),
        LabelWithAsterisk(labelText: "Father's Occupation",),
        CustomTextFormField(hintText: " ", showDropdownIcon: true,),
        SizedBox(height: 10),
        LabelWithAsterisk(labelText: "Father's Religion", ),
        CustomTextFormField(hintText: " ", showDropdownIcon: true,),
        SizedBox(height: 10),
        LabelWithAsterisk(labelText: "Father's Phone Number"),
        CustomTextFormField(hintText: " "),
        SizedBox(height: 10),
        LabelWithAsterisk(labelText: "Father's NID"),
        CustomTextFormField(hintText: " "),
        SizedBox(height: 10),
        SizedBox(height: 20),
      ],
    );
  }
  

  //====>mother info 
  Widget _buildMotherInfoForm() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelWithAsterisk(labelText: "Mother's Name"),
        CustomTextFormField(hintText: " "),
        SizedBox(height: 10),
        LabelWithAsterisk(labelText: "Mother's Occupation"),
        CustomTextFormField(hintText: " ", showDropdownIcon: true,),
        SizedBox(height: 10),
        LabelWithAsterisk(labelText: "Mother's Religion"),
        CustomTextFormField(hintText: " ", showDropdownIcon: true,),
        SizedBox(height: 10),
        LabelWithAsterisk(labelText: "Mother's Phone Number"),
        CustomTextFormField(hintText: " "),
        SizedBox(height: 10),
        LabelWithAsterisk(labelText: "Mother's NID"),
        CustomTextFormField(hintText: " "),
        
        SizedBox(height: 20),
      ],
    );
  }

  ///===>Guardian info  
  Widget _buildMoreInfoForm() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelWithAsterisk(labelText: "Guardian Name"),
        CustomTextFormField(hintText: ""),
        SizedBox(height: 10),
        LabelWithAsterisk(labelText: "Guardian's Occupation"),
        CustomTextFormField(hintText: " "),
        SizedBox(height: 10),
        LabelWithAsterisk(labelText: "Guardian's Religion",),
        CustomTextFormField(hintText: " ", showDropdownIcon: true,),
        SizedBox(height: 10),
        LabelWithAsterisk(labelText: "Guardian's Phone Number"),
        CustomTextFormField(hintText: " "),
        SizedBox(height: 10),
        LabelWithAsterisk(labelText: "Guardian's NID"),
        CustomTextFormField(hintText: " "),
        SizedBox(height: 10),
        LabelWithAsterisk(labelText: "Relation of Student",),
        CustomTextFormField(hintText: " ", showDropdownIcon: true,),
         
        SizedBox(height: 20),
      ],
    );
  }
}
