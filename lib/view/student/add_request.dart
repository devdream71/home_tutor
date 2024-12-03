import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/view/student/request_pending.dart';
import 'package:education_home_tutor/widget/custom_button.dart';
import 'package:education_home_tutor/widget/custome_text_edit_form.dart';
import 'package:education_home_tutor/widget/lebel_with_asterisk.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddRequest extends StatefulWidget {
  const AddRequest({super.key});

  @override
  State<AddRequest> createState() => _AddRequestState();
}

class _AddRequestState extends State<AddRequest> {
  final List<String> _academic = ["Islam", "Hundu", "Chirtran", "Buddho"];
  String? _selectedAcademic;

  final List<String> _class = [
    "Class Six",
    "Class Seven",
    "Class Eight",
    "Class Nine"
  ];
  String? _selectedClass;

  final List<String> _session = [
    "2020/21",
    "2022/2023",
    "2023/2024",
  ];
  String? _selectedSession;

  final List<String> _admission = ["2020", "2022", "2023", "2024"];
  String? _selectedadmission;

  final List<String> _academicID = [
    "ID: 1: ABC School",
    "ID: 2: BCD School",
    "ID: 3: CDE School",
    "ID: 4: AAA School"
  ];
  String? _selectedAcademicID;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Center(
                child: Text(
                  'Add Request',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: LabelWithAsterisk(labelText: "Academic ID or Name"),
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
                value: _selectedAcademic,
                items: _academicID.map((AcademicID) {
                  return DropdownMenuItem<String>(
                    value: AcademicID,
                    child: Text(AcademicID),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedAcademic = value;
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: LabelWithAsterisk(labelText: "Class"),
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
                value: _selectedClass,
                items: _class.map((className) {
                  return DropdownMenuItem<String>(
                    value: className,
                    child: Text(className),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedClass = value;
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: LabelWithAsterisk(labelText: "Session"),
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
                value: _selectedSession,
                items: _session.map((session) {
                  return DropdownMenuItem<String>(
                    value: session,
                    child: Text(session),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedSession = value;
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: LabelWithAsterisk(labelText: "Admission"),
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
                value: _selectedadmission,
                items: _admission.map((admission) {
                  return DropdownMenuItem<String>(
                    value: admission,
                    child: Text(admission),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedadmission = value;
                  });
                },
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                onPressed: () {
                  Get.to(const RequestPending(),
                      transition: Transition.rightToLeftWithFade);
                },
                text: "Request",
                color: AppColor.primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
