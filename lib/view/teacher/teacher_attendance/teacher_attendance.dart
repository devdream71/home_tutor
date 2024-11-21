import 'package:education_home_tutor/view/student/student_bottom_page/home_work.dart/home_work_details.dart';
import 'package:education_home_tutor/view/teacher/teacher_attendance/teacher_attendance_create.dart';
import 'package:education_home_tutor/view/teacher/teacher_homework.dart/teacher_homework_create.dart';
import 'package:education_home_tutor/widget/custome_text_edit_form.dart';
import 'package:education_home_tutor/widget/lebel_with_asterisk.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TeacherAttendanceCreateView extends StatelessWidget {
  const TeacherAttendanceCreateView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    //Handle pay button action
                    Get.to(  TeacherAttendanceCreate(),
                        transition: Transition.rightToLeftWithFade);
                  },
                  child: Container(
                    width: 150,
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      "Create",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: LabelWithAsterisk(labelText: "Date")),
                        CustomTextFormField(
                          hintText: "",
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
                            child: LabelWithAsterisk(labelText: "Session/Class")),
                        CustomTextFormField(
                          hintText: "",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              FittedBox(
                child: DataTable(
                  headingRowColor: WidgetStateColor.resolveWith(
                      (states) => Colors.blue.shade100),
                  columns: const [
                    DataColumn(label: Text("Date")),
                    DataColumn(label: Text("Class")),
                    DataColumn(label: Text("Student")),
                    DataColumn(label: Text("P")),
                    DataColumn(label: Text("A")),
                    DataColumn(label: Text("Action")),
                  ],
                  rows: [
                    buildNotesRow(context, "12/09/2022", 'One', '50', "48", '2'),
                    buildNotesRow(context, "12/09/2022", 'One', "50", '47', '3' ),
                    buildNotesRow(context, "12/09/2022", 'One', "50", '45', '5'),
                    buildNotesRow(context, "12/09/2022", 'One', "50", '49', '1'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  DataRow buildNotesRow(
    BuildContext context,
    String date,
    String tclass,
    String student,
    String p,
    String a,
  ) {
    return DataRow(
      cells: [
        DataCell(Text(date)),
        DataCell(Text(tclass)),
        DataCell(Text(student)),
        DataCell(Text(p)),
        DataCell(Text(a)),
        DataCell(
          GestureDetector(
            onTap: () {
              // Get.to(const HomeWorkDetails(),
              //     transition: Transition.rightToLeftWithFade);
            },
            child: const Icon(
              Icons.edit_note,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
