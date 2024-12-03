import 'package:education_home_tutor/utils/colors.dart';
import 'package:flutter/material.dart';

class StudentExamView extends StatelessWidget {
  const StudentExamView({super.key});

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
                      headingRowHeight: 28,
                      dataRowMaxHeight: 26,
                      dataRowMinHeight: 26,
                  columns: const[
                     DataColumn(label: Text("Routine Name")),
                     DataColumn(label: Text("Exam Name")),
                     DataColumn(label: Text("View")),
                  ],
                  rows: [
                    buildNotesRow(
                      "12/09/2022",
                      'P',
                    ),
                    buildNotesRow(
                      "12/09/2022",
                      "A",
                    ),
                    buildNotesRow(
                      "12/09/2022",
                      "P",
                    ),
                    buildNotesRow(
                      "12/09/2022",
                      "P",
                    ),
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
    String routine,
    String exam,
  ) {
    return DataRow(
      cells: [
        DataCell(Text(routine)),
        DataCell(Text(exam)),
        const DataCell(
          Icon(
            Icons.download,
            color: AppColor.primaryColor,
          ),
        ),
      ],
    );
  }
}

