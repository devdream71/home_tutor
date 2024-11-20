import 'package:education_home_tutor/widget/custome_text_edit_form.dart';
import 'package:education_home_tutor/widget/lebel_with_asterisk.dart';
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
                          child: LabelWithAsterisk(labelText: "Period"),
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
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: DataTable(
                  headingRowColor: MaterialStateColor.resolveWith(
                      (states) => Colors.blue.shade100),
                  columns: [
                    const DataColumn(label: Text("Routine Name")),
                    const DataColumn(label: Text("Exam Name")),
                    const DataColumn(label: Text("View")),
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
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
