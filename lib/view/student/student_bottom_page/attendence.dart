import 'package:education_home_tutor/widget/custome_text_edit_form.dart';
import 'package:education_home_tutor/widget/lebel_with_asterisk.dart';
import 'package:flutter/material.dart';

class StudentAttendenceView extends StatelessWidget {
  const StudentAttendenceView({super.key});

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
                  SizedBox(
                    width: 150,
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: LabelWithAsterisk(labelText: "Date")),
                        CustomTextFormField(
                          hintText: "",
                          showDropdownIcon: true,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),

                  // const SizedBox(height: 8,),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: DataTable(
                  headingRowColor: WidgetStateColor.resolveWith(
                      (states) => Colors.blue.shade100),
                  columns: const [
                     DataColumn(label: Text("Date")),
                     DataColumn(label: Text("Attend")),
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
    String date,
    String attend,
  ) {
    return DataRow(
      cells: [
        DataCell(Text(date)),
        DataCell(Text(attend)),
      ],
    );
  }
}
