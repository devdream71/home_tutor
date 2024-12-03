import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/view/teacher/mark/mark_entry_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MarkEntryView extends StatelessWidget {
  const MarkEntryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Get.to(const MarkEntryDetails(),
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
            const SizedBox(
              height: 40,
            ),
             
            SizedBox(
              width: double.infinity,
              child: FittedBox(
                child: DataTable(
                  headingRowColor: WidgetStateColor.resolveWith(
                      (states) => Colors.blue.shade100),
                  headingRowHeight: 28,
                  dataRowMinHeight: 26,
                  dataRowMaxHeight: 26,    
                  columns: const [
                    DataColumn(label: Text("Exam Routine")),
                    DataColumn(label: Text("Class")),
                    DataColumn(label: Text("Action")),
                  ],
                  rows: [
                    buildNotesRow(
                      context,
                      'Annual Exam',
                      "One",
                    ),
                    buildNotesRow(
                      context,
                      'Class Test',
                      "One",
                    ),
                    buildNotesRow(
                      context,
                      'Class Test',
                      "One",
                    ),
                    buildNotesRow(
                      context,
                      'Class Test',
                      "One",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  DataRow buildNotesRow(
    BuildContext context,
    String sl,
    String date,
  ) {
    return DataRow(
      cells: [
        DataCell(Text(sl)),
        DataCell(Text(date)),
        DataCell(
          GestureDetector(
            onTap: () {
              // Get.to(const HomeWorkDetails(),
              //     transition: Transition.rightToLeftWithFade);
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
