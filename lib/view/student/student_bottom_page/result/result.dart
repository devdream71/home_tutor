import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/view/student/student_bottom_page/result/result_details_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StudentResultView extends StatelessWidget {
  const StudentResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: DataTable(
                  headingRowColor: WidgetStateColor.resolveWith(
                      (states) => Colors.blue.shade100),
                  columns: const [
                     DataColumn(label: Text("Publish Date")),
                     DataColumn(label: Text("Exam Routine")),
                     DataColumn(label: Text("Action")),
                  ],
                  rows: [
                    buildNotesRow(
                      "12/09/2022",
                      'Yearly Exam',
                    ),
                    buildNotesRow(
                      "12/09/2022",
                      "Class Test",
                    ),
                    buildNotesRow(
                      "12/09/2022",
                      "Class Text",
                    ),
                  ],
                ),
              ),

              
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  DataRow buildNotesRow(
    String routine,
    String exam,
  ) {
    return DataRow(
      cells: [
        DataCell(Text(routine)),
        DataCell(Text(exam)),
          DataCell(
          InkWell(
            onTap: (){
              Get.to(const PopupExample(), transition: Transition.rightToLeftWithFade);
            },
            child: const Icon(
              Icons.visibility,
              color: AppColor.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
