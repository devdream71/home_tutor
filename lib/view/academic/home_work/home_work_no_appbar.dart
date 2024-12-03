import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/view/teacher/teacher_homework.dart/home_work_view_deatils.dart';
import 'package:education_home_tutor/view/teacher/teacher_homework.dart/teacher_homework_create.dart';
import 'package:education_home_tutor/widget/custome_text_edit_form.dart';
import 'package:education_home_tutor/widget/lebel_with_asterisk.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AcademicHomeworkNoAppBarView extends StatefulWidget {
  const AcademicHomeworkNoAppBarView({super.key});

  @override
  State<AcademicHomeworkNoAppBarView> createState() =>
      _AcademicHomeworkNoAppBarViewState();
}

class _AcademicHomeworkNoAppBarViewState
    extends State<AcademicHomeworkNoAppBarView> {
  final TextEditingController _dateController = TextEditingController();

  final List<String> _sessions = ["Morning", "Afternoon", "Evening"];
  String? _selectedSession;

  final List<String> _period = ['1st', '2nd', '3rd', '4th'];
  String? _selectedPeriod;

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
  void initState() {
    super.initState();
    // Set current date by default
    _dateController.text = DateFormat('MMM d, yyyy').format(DateTime.now());
  }

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
            const SizedBox(
              height: 20,
            ),
            Column(
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
                     const SizedBox(
                      width: 10,
                    ),
                    const Expanded(
                      child: Column(
                        children: [
                          SizedBox()
                           
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    
                    Expanded(
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child:
                                LabelWithAsterisk(labelText: "Session/Class"),
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
                            value: _selectedSession,
                            items: _sessions.map((session) {
                              return DropdownMenuItem<String>(
                                value: session,
                                child: Text(session),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                _selectedSession = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: LabelWithAsterisk(labelText: "Period"),
                          ),
                          DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              //hintText: "Select Period",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              isDense: true, // Makes the field more compact
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 5,
                                  vertical: 5), // Removes all padding
                            ),
                            value: _selectedPeriod,
                            items: _period.map((period) {
                              return DropdownMenuItem<String>(
                                value: period,
                                child: Text(period),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                _selectedPeriod = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            FittedBox(
              child: DataTable(
                dataRowMaxHeight: 26,
                headingRowHeight: 28,
                dataRowMinHeight: 15,
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
