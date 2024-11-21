import 'package:flutter/material.dart';

class TeacherDashBoardVIew extends StatelessWidget {
  const TeacherDashBoardVIew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6FA), // Background color
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Section
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                            width: 80,
                            child: Image.asset('assets/people_one.png')),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildInfoRow(
                              "Md. Jasim Uddin",
                            ),
                            buildInfoRow(
                              "Assistant Teacher",
                            ),
                          ],
                        ),
                      ],
                    ),

                    // Payment Button
                  ],
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              const Text(
                "Saturday",
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
                    DataColumn(label: Text("Period")),
                    DataColumn(label: Text("Subject")),
                    DataColumn(label: Text("Teacher")),
                  ],
                  rows: [
                    buildDataRow("1st", "Bangla", ""),
                    buildDataRow("2nd", "English", ""),
                    buildDataRow("3rd", "Math", ""),
                    buildDataRow("4th", "IT", ""),
                    buildDataRow("5th", "Agriculture", ""),
                    buildDataRow("6th", "Science", ""),
                    buildDataRow("7th", "Health", ""),
                    buildDataRow("8th", "BBn", ""),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              // Notes Board Table
              const Divider(
                color: Colors.blue,
              ),
              const SizedBox(height: 16),
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
      ),
    );
  }

  Widget buildInfoRow(
    String label,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        children: [
          Text(
            "$label",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }

  Widget buildTimeSlot(String time) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        time,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  DataRow buildDataRow(String period, String subject, String teacher) {
    return DataRow(
      cells: [
        DataCell(Text(period)),
        DataCell(Text(subject)),
        DataCell(Text(teacher)),
      ],
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
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
