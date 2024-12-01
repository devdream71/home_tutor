import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/view/teacher/teacher_homework.dart/home_work_view_deatils.dart';
import 'package:education_home_tutor/view/teacher/teacher_homework.dart/teacher_homework_create.dart';
import 'package:education_home_tutor/widget/custome_text_edit_form.dart';
import 'package:education_home_tutor/widget/lebel_with_asterisk.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TeacherHomeworkView extends StatelessWidget {
  const TeacherHomeworkView({super.key});

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
                    Get.to(const TeacherHomeworkCreateView(),
                        transition: Transition.rightToLeftWithFade);
                  },
                  child: Container(
                    width: 150,
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor,
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
                  Expanded(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: LabelWithAsterisk(labelText: "Period"),
                        ),
                        CustomTextFormField(
                          hintText: "",
                          showDropdownIcon: true,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              DataTable(
                headingRowColor: WidgetStateColor.resolveWith(
                    (states) => Colors.blue.shade100),
                columns: const [
                  DataColumn(label: Text("SL")),
                  DataColumn(label: Text("Date")),
                  DataColumn(label: Text("Period")),
                  DataColumn(label: Text("Subject")),
                ],
                rows: [
                  buildNotesRow(context, '1', "12/09/2022", '1st', "Bangla"),
                  buildNotesRow(context, '2', "12/09/2022", "2nd", 'Math'),
                  buildNotesRow(context, '3', "12/09/2022", "Note", 'd'),
                  buildNotesRow(context, '4', "12/09/2022", "Note", 'd'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  DataRow buildNotesRow(
    BuildContext context,
    String sl,
    String date,
    String period,
    String subject,
  ) {
    return DataRow(
      cells: [
        DataCell(Text(sl)),
        DataCell(Text(date)),
        DataCell(Text(period)),
        DataCell(
          GestureDetector(
            onTap: () {
              Get.to(const HomeWorkViewDeatils(),
                  transition: Transition.rightToLeftWithFade);
            },
            child: const Icon(
              Icons.edit_note,
              color: AppColor.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
