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
  // final ImagePicker _picker = ImagePicker();

  // XFile? _imageFile;

  // Future<void> _pickImage(ImageSource source) async {
  //   final XFile? pickedFile = await _picker.pickImage(source: source);

  //   if (pickedFile != null) {
  //     setState(() {
  //       _imageFile = pickedFile;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
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
                child:  LabelWithAsterisk(
                  labelText: "Education Institute",
                ),
              ),
              const CustomTextFormField(
                hintText: "Education Institute",
              ),
              const SizedBox(
                height: 8,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child:  LabelWithAsterisk(
                  labelText: "Education Quality",
                ),
              ),
              const CustomTextFormField(
                hintText: "Education Quality",
              ),
              const SizedBox(
                height: 8,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child:  LabelWithAsterisk(
                  labelText: "Passing Year",
                ),
              ),
              const CustomTextFormField(
                hintText: "Passing Year",
              ),
              const SizedBox(
                height: 8,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child:  LabelWithAsterisk(
                  labelText: "Academy",
                ),
              ),
              const CustomTextFormField(
                hintText: "Academy",
              ),
              const SizedBox(
                height: 8,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child:  LabelWithAsterisk(
                  labelText: "Class",
                ),
              ),
              const CustomTextFormField(
                hintText: "Class",
              ),
              const SizedBox(
                height: 8,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child:  LabelWithAsterisk(
                  labelText: "Subject",
                ),
              ),
              const CustomTextFormField(
                hintText: "Subject",
              ),
              const SizedBox(
                height: 8,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child:  LabelWithAsterisk(
                  labelText: "District",
                ),
              ),
              const CustomTextFormField(
                hintText: "District",
              ),
              const SizedBox(
                height: 8,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child:  LabelWithAsterisk(
                  labelText: "Area",
                ),
              ),
              const CustomTextFormField(
                hintText: "Area",
              ),
              const SizedBox(
                height: 8,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child:  LabelWithAsterisk(
                  labelText: "Location",
                ),
              ),
              const CustomTextFormField(
                hintText: "Location",
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
                            child: LabelWithAsterisk(
                                labelText: "Salary Range From")),
                        CustomTextFormField(
                          hintText: " ",
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
                          child: LabelWithAsterisk(labelText: "To"),
                        ),
                        CustomTextFormField(
                          hintText: "",
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
                child:  LabelWithAsterisk(
                  labelText: "Details",
                ),
              ),
              const CustomTextFormField(
                hintText: "Details",
              ),
              const SizedBox(
                height: 8,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child:  LabelWithAsterisk(
                  labelText: "E-mail",
                ),
              ),
              const CustomTextFormField(
                hintText: "",
              ),
              const SizedBox(
                height: 8,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child:  LabelWithAsterisk(
                  labelText: "Mobile Number",
                ),
              ),
              const CustomTextFormField(
                hintText: "",
              ),
              const SizedBox(
                height: 8,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child:  LabelWithAsterisk(
                  labelText: "Mobile Number (Whats App)",
                ),
              ),
              const CustomTextFormField(
                hintText: "",
              ),
              const SizedBox(
                height: 8,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child:  LabelWithAsterisk(
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
                color: Colors.blue,
              ),
              const SizedBox(
                height: 8,
              ),
            ],
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
