import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/widget/custome_text_edit_form.dart';
import 'package:education_home_tutor/widget/lebel_with_asterisk.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class TeacherHomeworkCreateView extends StatefulWidget {
  const TeacherHomeworkCreateView({super.key});

  @override
  State<TeacherHomeworkCreateView> createState() =>
      _TeacherHomeworkCreateViewState();
}

class _TeacherHomeworkCreateViewState extends State<TeacherHomeworkCreateView> {
  final List<String> _sessions = ["Morning", "Afternoon", "Evening"];
  String? _selectedSession;

  final List<String> _teachers = ["MD. A", "MD. B", "Md. C", "Mrs. D"];
  String? _selectedTeacher;

  final List<String> _shift = [
    "Morning",
    "Day",
  ];
  String? _selectedShift;

  final List<String> _section = ["A", "B", "C", "D"];
  String? _selectedSection;

  final List<String> _period = ["1st ", "2nd", "3rd", "4th"];
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

  final TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Work Creat',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppColor.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                ////===>Session
                Expanded(
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: LabelWithAsterisk(labelText: "Session/Class"),
                      ),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          // hintText: "Select Session/Class",
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
                ////==>Teacher
                Expanded(
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: LabelWithAsterisk(labelText: "Teachers"),
                      ),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          //hintText: "Select Teacher",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          isDense: true,
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 5,
                          ),
                        ),
                        value: _selectedTeacher,
                        items: _teachers.map((teacher) {
                          return DropdownMenuItem<String>(
                            value: teacher,
                            child: Text(teacher),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedTeacher = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
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
                        child: LabelWithAsterisk(labelText: "Shift"),
                      ),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          //hintText: "Select Shift",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          isDense: true,
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 5,
                          ),
                        ),
                        value: _selectedShift,
                        items: _shift.map((shift) {
                          return DropdownMenuItem<String>(
                            value: shift,
                            child: Text(shift),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedShift = value;
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
                        child: LabelWithAsterisk(labelText: "Section"),
                      ),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          //hintText: "Select Section",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          isDense: true,
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 5,
                          ),
                        ),
                        value: _selectedSection,
                        items: _section.map((section) {
                          return DropdownMenuItem<String>(
                            value: section,
                            child: Text(section),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedSection = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
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
                      Align(
                          alignment: Alignment.centerLeft,
                          child: LabelWithAsterisk(labelText: "Days")),
                      CustomTextFormField(
                        hintText: "",
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
                          isDense: true,
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 5,
                          ),
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

            const SizedBox(
              height: 20,
            ),

            Container(
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(4),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: const Text(
                "Write Homework",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(4),
              ),
              child: const CustomTextFormField(
                hintText: "",
                maxLines: 5,
              ),
            ),

            const SizedBox(height: 20),
            // Notes Section
            Container(
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(4),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: const Text(
                "Note",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(4),
              ),
              child: const CustomTextFormField(
                hintText: "",
                maxLines: 5,
              ),
            ),

            const SizedBox(
              height: 15,
            ),

            Align(
              alignment: Alignment.center,
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
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    "Submit",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
