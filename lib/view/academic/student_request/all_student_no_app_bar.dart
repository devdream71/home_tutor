import 'package:education_home_tutor/view/academic/student_request/all_student_individual_ldeatils.dart';
import 'package:education_home_tutor/widget/lebel_with_asterisk.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllStudentNoAppBar extends StatefulWidget {
  const AllStudentNoAppBar({super.key});

  @override
  State<AllStudentNoAppBar> createState() => _AllStudentNoAppBarState();
}

class _AllStudentNoAppBarState extends State<AllStudentNoAppBar> {
  @override
  Widget build(BuildContext context) {
    // Controllers for text fields
    final genderController = TextEditingController();
    final classController = TextEditingController();

    final List<String> _className = [
      "Class 6",
      "Class 7",
      "Class 8",
      "Class 9",
      "Class 10"
    ];
    String? _selectedClassName;

    final List<String> _gender = [
      'Male',
      'Female',
    ];
    String? _selectedGender;

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child:
                                LabelWithAsterisk(labelText: "Session/Class"),
                          ),
                          DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              //hintText: "Select Session/Class",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              isDense: true,
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                            ),
                            value: _selectedClassName,
                            items: _className.map((session) {
                              return DropdownMenuItem<String>(
                                value: session,
                                child: Text(session),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                _selectedClassName = value;
                              });
                            },
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
                            child: LabelWithAsterisk(labelText: "Gender"),
                          ),
                          DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              //hintText: "Select Period",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              isDense: true,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                            ),
                            value: _selectedGender,
                            items: _gender.map((period) {
                              return DropdownMenuItem<String>(
                                value: period,
                                child: Text(period),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                _selectedGender = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(
                        const AllStudentIndividualDetails(),
                        transition: Transition.rightToLeft,
                      );
                    },
                    child: const Card(
                      child: ListTile(
                        // contentPadding:
                        //     EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                        dense: true,
                        leading: CircleAvatar(
                          child: Text('1'),
                        ),
                        title: Text(
                          "Md. Jasim Uddind",
                        ),
                        subtitle: Text(
                          'Class: Two',
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                        ),
                      ),
                    ),
                  ),
                  // const Card(
                  //   child: ListTile(
                  //     // contentPadding: EdgeInsets.all(0),
                  //     // dense: true,
                  //     // Removes horizontal padding

                  //     leading: CircleAvatar(
                  //       child: Text('2'),
                  //     ),
                  //     title: Text(
                  //       "Md. Jasim Uddin",
                  //     ),
                  //     subtitle: Text(
                  //       'Class: Two',
                  //     ),
                  //     trailing: Icon(
                  //       Icons.arrow_forward_ios,
                  //     ),
                  //   ),
                  // ),
                  // const Card(
                  //   child: ListTile(
                  //     leading: CircleAvatar(
                  //       child: Text('3'),
                  //     ),
                  //     title: Text("Miss. Salma Begum"),
                  //     subtitle: Text('Class: Seven'),
                  //     trailing: Icon(Icons.arrow_forward_ios),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
