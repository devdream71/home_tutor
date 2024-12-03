import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/view/student/student_bottom_page/fee/fee_report.dart';
import 'package:education_home_tutor/view/student/student_bottom_page/fee/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StudentFeeView extends StatelessWidget {
  const StudentFeeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    // Handle pay button action
                    Get.to(const PaymentTableScreen(),
                        transition: Transition.rightToLeftWithFade);
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
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    // Handle pay button action
                    Get.to(const FeeReport(),
                        transition: Transition.rightToLeftWithFade);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      "Report",
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
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: DataTable(
                  headingRowColor: WidgetStateColor.resolveWith(
                      (states) => Colors.blue.shade100),
                  headingRowHeight: 28,
                  dataRowMinHeight: 26,
                  dataRowMaxHeight: 26,    
                  columns: const [
                    DataColumn(label: Text('Data')),
                    DataColumn(label: Text('Fee Type')),
                    DataColumn(label: Text('Amount'))
                    //annual Picnic Fee
                  ],
                  rows: [
                    buildNotesRow("12/09/2022", 'Exam Fee', '400'),
                    buildNotesRow("12/09/2022", "Annual Picnic Fee", '500'),
                    buildNotesRow("12/09/2022", "Sports Fee", '600'),
                    buildNotesRow("12/09/2022", "Annual Tour Fee", '500'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  DataRow buildNotesRow(
    String date,
    String type,
    String amount,
  ) {
    return DataRow(
      cells: [
        DataCell(Text(date)),
        DataCell(Text(type)),
        DataCell(Text(amount)),
      ],
    );
  }
}
