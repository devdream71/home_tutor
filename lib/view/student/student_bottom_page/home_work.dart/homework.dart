
import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/view/student/student_bottom_page/home_work.dart/home_work_details.dart';
import 'package:education_home_tutor/widget/custome_text_edit_form.dart';
import 'package:education_home_tutor/widget/lebel_with_asterisk.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class StudentHomeworkView extends StatefulWidget {
  const StudentHomeworkView({super.key});

  @override
  State<StudentHomeworkView> createState() => _StudentHomeworkViewState();
}

class _StudentHomeworkViewState extends State<StudentHomeworkView> {

  final TextEditingController _dateController = TextEditingController();

  
  final List<String> _period = ["1st", "2nd", "3rd",  ];
  String? _selectedperiod;

   @override
  void initState() {
    super.initState();
    
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
                  Expanded(
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
                  SizedBox(
                    width: 10,
                  ),
                   Expanded(
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child:
                                LabelWithAsterisk(labelText: "Period"),
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
                            value: _selectedperiod,
                            items: _period.map((period) {
                              return DropdownMenuItem<String>(
                                value: period,
                                child: Text(period),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                _selectedperiod = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              DataTable(
                headingRowColor: WidgetStateColor.resolveWith(
                    (states) => Colors.blue.shade100),
                    headingRowHeight: 28,
                    dataRowMaxHeight: 26,
                    dataRowMinHeight: 26,
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
              // Navigate to a new page
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => HomeWorkDetails(),
              //   ),
              // );
              Get.to(const HomeWorkDetails(),
                  transition: Transition.rightToLeftWithFade);
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
