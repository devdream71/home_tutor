import 'package:education_home_tutor/utils/colors.dart';
import 'package:flutter/material.dart';

class PopupExample extends StatelessWidget {
  const PopupExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Result Details',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppColor.primaryColor,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Popup for Mark
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                   
                  const SizedBox(height: 4),
                  const Text(
                    'For Mark',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Class Test',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Table(
                    border: TableBorder.all(color: Colors.black, width: 1),
                    columnWidths: const {
                      0: FlexColumnWidth(2), // Subject Exam Type
                      1: FlexColumnWidth(1), // E.A.
                      2: FlexColumnWidth(1), // Opt.
                      3: FlexColumnWidth(1), // Gre.
                      4: FlexColumnWidth(1), // Total
                      5: FlexColumnWidth(1), // Result
                    },
                    children: [
                      // Header Row
                      const TableRow(
                        decoration: BoxDecoration(color: AppColor.primaryColor),
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Subject Exam Type',
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'E.A',
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Opt.',
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Gre.',
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Total',
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Result',
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      // Data Rows
                      _buildTableRow(['Written', 'P', '10', '10', '10', 'P']),
                      _buildTableRow(['MCQ', 'A', '05', '02', '07', 'F']),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            // Popup for Result
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  
                  const SizedBox(height: 4),
                  const Text(
                    'For Result',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Yearly Exam',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Table(
                    border: TableBorder.all(color: Colors.black, width: 1),
                    columnWidths: const {
                      0: FlexColumnWidth(3), // Label
                      1: FlexColumnWidth(2), // Value
                    },
                    children: [
                      // Data Rows
                      _buildTableRow(['GPA', '5.00']),
                      _buildTableRow(['LG', 'A+']),
                      _buildTableRow(['Mark', '900']),
                      _buildTableRow(['Merit List', '02']),
                    ],
                  ),
                ],
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
 
