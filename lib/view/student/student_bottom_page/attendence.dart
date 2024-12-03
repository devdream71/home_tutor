import 'package:education_home_tutor/widget/custome_text_edit_form.dart';
import 'package:education_home_tutor/widget/lebel_with_asterisk.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class StudentAttendenceView extends StatefulWidget {
  const StudentAttendenceView({super.key});

  @override
  State<StudentAttendenceView> createState() => _StudentAttendenceViewState();
}

class _StudentAttendenceViewState extends State<StudentAttendenceView> {
  final TextEditingController _dateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Initialize selectedRows with false for each entry in paymentData
    _dateController.text = DateFormat('MMM d, yyyy').format(DateTime.now());
  }

  Future<void> _pickDate(BuildContext context) async {
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (date != null) {
      setState(() {
        _dateController.text = DateFormat('MMM d, yyyy').format(date);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                 
                  SizedBox(
                    width: 150,
                    child: Expanded(
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: LabelWithAsterisk(labelText: "Date"),
                          ),
                          GestureDetector(
                            onTap: () => _pickDate(context),
                            child: AbsorbPointer(
                              child: CustomTextFormField(
                                hintText: "Select Date",
                                controller: _dateController,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
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
                      headingRowHeight: 28,
                      dataRowMinHeight: 26,
                      dataRowMaxHeight: 26,
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
