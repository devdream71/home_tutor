import 'package:education_home_tutor/widget/custome_text_edit_form.dart';
import 'package:education_home_tutor/widget/lebel_with_asterisk.dart';
import 'package:flutter/material.dart';

class StudentHomeworkView extends StatelessWidget {
  const StudentHomeworkView({super.key});

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
                height: 10,
              ),
              DataTable(
                headingRowColor: MaterialStateColor.resolveWith(
                    (states) => Colors.blue.shade100),
                columns: [
                    const DataColumn(label: Text("SL")),
                    const DataColumn(label: Text("Date")),
                    const DataColumn(label: Text("Period")),
                    const DataColumn(label: Text("Shubject")),
                ],
                rows: [
                  buildNotesRow('1', "12/09/2022", '1st', "Bangla"),
                  buildNotesRow('2', "12/09/2022", "2nd", 'Math' ),
                  buildNotesRow('3', "12/09/2022", "Note", 'd'),
                  buildNotesRow('3', "12/09/2022", "Note", 'd'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  DataRow buildNotesRow(String sl, String date, String period, String subject) {
    return DataRow(
      cells: [
        DataCell(Text(sl)),
        DataCell(Text(date)),
        DataCell(Text(period)),
        //DataCell(Text(subject)),
        const DataCell(
          Icon(
            Icons.visibility,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
