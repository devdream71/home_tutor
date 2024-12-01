import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/widget/custome_text_edit_form.dart';
import 'package:education_home_tutor/widget/lebel_with_asterisk.dart';
import 'package:flutter/material.dart';

class TeacherAttendanceCreate extends StatefulWidget {
  const TeacherAttendanceCreate({super.key});

  @override
  TeacherAttendanceCreateState createState() =>
      TeacherAttendanceCreateState();
}

class TeacherAttendanceCreateState extends State<TeacherAttendanceCreate> {
  // Dynamic data for rows
  final List<Map<String, dynamic>> paymentData = [
    {'billDate': '01', 'feeType': 'Md. A', 'amount': '500'},
    {'billDate': '02', 'feeType': 'Md. B', 'amount': '300'},
    {'billDate': '03', 'feeType': 'Md. C', 'amount': '200'},
  ];

  // Track checkbox states for each row
  List<bool> selectedRows = [];

  @override
  void initState() {
    super.initState();
    // Initialize selectedRows with false for each entry in paymentData
    selectedRows = List<bool>.filled(paymentData.length, false);
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
                      const Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: LabelWithAsterisk(
                                        labelText: "Session/Class")),
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
                                    child: LabelWithAsterisk(
                                        labelText: "Teacher")),
                                CustomTextFormField(
                                  hintText: "",
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child:
                                        LabelWithAsterisk(labelText: "Shift")),
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
                                    child: LabelWithAsterisk(
                                        labelText: "Section")),
                                CustomTextFormField(
                                  hintText: "",
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child:
                                        LabelWithAsterisk(labelText: "Date")),
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
                                    child:
                                        LabelWithAsterisk(labelText: "Days")),
                                CustomTextFormField(
                                  hintText: "",
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
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
                            decoration: BoxDecoration(color: AppColor.primaryColor),
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
                                  child: Text(paymentData[i]['billDate']),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(paymentData[i]['feeType']),
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
                      const SizedBox(height: 16),
                      const SizedBox(height: 16),
                      const SizedBox(height: 16),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.primaryColor,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 16),
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
