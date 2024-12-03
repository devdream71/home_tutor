import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/widget/custome_text_edit_form.dart';
import 'package:education_home_tutor/widget/lebel_with_asterisk.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TeacherAttendanceCreate extends StatefulWidget {
  const TeacherAttendanceCreate({super.key});

  @override
  TeacherAttendanceCreateState createState() => TeacherAttendanceCreateState();
}

class TeacherAttendanceCreateState extends State<TeacherAttendanceCreate> {
  // Dynamic data for rows
  final List<Map<String, dynamic>> paymentData = [
    {'roll': '01', 'name': 'Md. A', 'amount': '500'},
    {'roll': '02', 'name': 'Md. B', 'amount': '300'},
    {'roll': '03', 'name': 'Md. C', 'amount': '200'},
  ];

  // Track checkbox states for each row
  List<bool> selectedRows = [];

  final TextEditingController _dateController = TextEditingController();

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
    // Initialize selectedRows with false for each entry in paymentData
    selectedRows = List<bool>.filled(paymentData.length, false);
    _dateController.text = DateFormat('MMM d, yyyy').format(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Attendance ',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppColor.primaryColor,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                const Align(
                                  alignment: Alignment.centerLeft,
                                  child: LabelWithAsterisk(
                                      labelText: "Session/Class"),
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
                                  child:
                                      LabelWithAsterisk(labelText: "Teacher"),
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
                                  child:
                                      LabelWithAsterisk(labelText: "Section"),
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
                                    child:
                                        LabelWithAsterisk(labelText: "Days")),
                                CustomTextFormField(
                                  hintText: "",
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
                        height: 20,
                      ),
                      Table(
                        border: TableBorder.all(color: Colors.black, width: 1),
                        columnWidths: const {
                          0: FixedColumnWidth(80), // Checkbox column
                          1: FlexColumnWidth(),
                          2: FlexColumnWidth(),
                          //3: FixedColumnWidth(80), // Amount column
                        },
                        children: [
                          // Header Row
                          const TableRow(
                            decoration:
                                BoxDecoration(color: AppColor.primaryColor),
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Rolll/ID',
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Student Name',
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Select',
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // Dynamic Rows
                          for (int i = 0; i < paymentData.length; i++)
                            TableRow(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(paymentData[i]['roll']),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(paymentData[i]['name']),
                                ),
                                Checkbox(
                                  value: selectedRows[i],
                                  onChanged: (bool? value) {
                                    setState(() {
                                      selectedRows[i] = value ?? false;
                                    });
                                  },
                                ),
                              ],
                            ),
                        ],
                      ),
                      const SizedBox(height: 48),
                       
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.primaryColor,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {
                          // Handle Pay Button Press
                        },
                        icon: const Icon(
                          Icons.save,
                          color: Colors.white,
                        ),
                        label: const Text(
                          'Save',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  /// Calculate the total amount for selected rows
  String calculateTotal() {
    int total = 0;
    for (int i = 0; i < paymentData.length; i++) {
      if (selectedRows[i]) {
        total += int.parse(paymentData[i]['amount']);
      }
    }
    return total.toString();
  }
}
