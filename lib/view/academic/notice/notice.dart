import 'package:education_home_tutor/utils/colors.dart';
import 'package:flutter/material.dart';

class AcademicNoticePage extends StatelessWidget {
  const AcademicNoticePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notice'),
        backgroundColor: AppColor.primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Notes Board",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: DataTable(
                headingRowColor: WidgetStateColor.resolveWith(
                    (states) => Colors.blue.shade100),
                columns: const [
                  DataColumn(label: Text("Publish Date")),
                  DataColumn(label: Text("Headline")),
                  DataColumn(label: Text("View")),
                ],
                rows: [
                  buildNotesRow("12/09/2022", "Note 1"),
                  buildNotesRow("12/09/2022", "Note 2"),
                  buildNotesRow("12/09/2022", "Note 3"),
                ],
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  DataRow buildNotesRow(String date, String headline) {
    return DataRow(
      cells: [
        DataCell(Text(date)),
        DataCell(Text(headline)),
        const DataCell(
          Icon(
            Icons.visibility,
            color: AppColor.primaryColor,
          ),
        ),
      ],
    );
  }
}
