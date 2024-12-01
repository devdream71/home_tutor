import 'package:education_home_tutor/utils/colors.dart';
import 'package:flutter/material.dart';

class StudentDashBoardVIew extends StatelessWidget {
  const StudentDashBoardVIew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6FA),
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
                    const Row(
                      children: [
                        // Icon
                        // Icon(Icons.school, size: 48, color: AppColor.primaryColor),
                        // Image.asset("assets/people_one.png"),
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/people_one.png"),
                        ),
                        SizedBox(width: 10),
                        // Name
                        Text(
                          "Md. Jasim Uddin Nizami",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColor.primaryColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Class, Group, Shift, Section, Roll/UID
                    const SizedBox(
                      width: 8,
                    ),
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildInfoRow("Class", "Six"),
                            buildInfoRow("Group", 'A'),
                            buildInfoRow("Shift", 'Morning'),
                            buildInfoRow("Section", 'Section'),
                            buildInfoRow("Roll/UID", "12"),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),
                    // Payment Button
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          // Handle pay button action
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 16.0),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text(
                            "2451\nClick for Pay",
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
              const SizedBox(height: 16),
              // Date and Day
              const Text(
                "15.10.2022   Saturday",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              // Time Slots
              Wrap(
                spacing: 10,
                runSpacing: 10,
                alignment: WrapAlignment.center,
                children: [
                  buildTimeSlot("05:30 - 06:00\nAM 00.30"),
                  buildTimeSlot("06:00 - 07:30\nAM 01.00"),
                  buildTimeSlot("07:30 - 11:30\nAM 01.30"),
                ],
              ),

              const SizedBox(
                height: 10,
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
                color: AppColor.primaryColor,
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
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInfoRow(String label, String label2) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(
            "$label:",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(width: 8),
          // Expanded(
          //   child: Container(
          //     height: 25,
          //     decoration: BoxDecoration(
          //       color: Colors.grey.shade200,
          //       borderRadius: BorderRadius.circular(4),
          //     ),
          //   ),
          // ),
          Text(
            "$label2:",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTimeSlot(String time) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: AppColor.primaryColor,
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
            color: AppColor.primaryColor,
          ),
        ),
      ],
    );
  }
}
