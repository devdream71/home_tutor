import 'package:education_home_tutor/widget/custome_text_edit_form.dart';
import 'package:education_home_tutor/widget/lebel_with_asterisk.dart';
import 'package:flutter/material.dart';

class MarkEntryDetails extends StatelessWidget {
  const MarkEntryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mark Entry Deatils ',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
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
                          child: LabelWithAsterisk(labelText: "Exam Routine")),
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
                          child: LabelWithAsterisk(labelText: "Subject")),
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
                          child: LabelWithAsterisk(labelText: "Exam Type")),
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
                          child: LabelWithAsterisk(labelText: "Teacher")),
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
                0: FlexColumnWidth(1),
                1: FlexColumnWidth(1),
                2: FlexColumnWidth(1),
                3: FlexColumnWidth(1),
                4: FlexColumnWidth(1),
                5: FlexColumnWidth(1),
              },
              children: [
                // Header Row
                const TableRow(
                  decoration: BoxDecoration(color: Colors.blue),
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Mark',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'P. Mark',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Absent',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Present',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                // Data Rows
                _buildTableRow([
                  '50',
                  '13',
                  '0',
                  '10',
                ]),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Table(
              border: TableBorder.all(color: Colors.black, width: 1),
              columnWidths: const {
                0: FlexColumnWidth(1), // Subject Exam Type
                1: FlexColumnWidth(2), // E.A.
                2: FlexColumnWidth(1), // Opt.
                3: FlexColumnWidth(1), // Gre.
                4: FlexColumnWidth(1), // Total
                5: FlexColumnWidth(1), // Result
              },
              children: [
                // Header Row
                const TableRow(
                  decoration: BoxDecoration(color: Colors.blue),
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Roll/ID',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'S. Name',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Att.',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Op.',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Gr.',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Totall',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                // Data Rows
                _buildTableRow(['01', 'Md. A', '10', '10', 'A', '500']),
                _buildTableRow(['02', 'Md. C', '15', '02', 'B', '489']),
                _buildTableRow(['', '', '', '', '', '']),
                _buildTableRow(['', '', '', '', '', '']),
                _buildTableRow(['', '', '', '', '', '']),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  //Handle pay button action
                  // Get.to(const MarkEntryDetails(),
                  //     transition: Transition.rightToLeftWithFade);
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
                    "Save",
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

  TableRow _buildTableRow(List<String> cells) {
    return TableRow(
      children: cells
          .map(
            (cell) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                cell,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14),
              ),
            ),
          )
          .toList(),
    );
  }
}
