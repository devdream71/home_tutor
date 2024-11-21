import 'package:education_home_tutor/view/student/student_bottom_page/fee/payment_page.dart';
import 'package:education_home_tutor/widget/custome_text_edit_form.dart';
import 'package:education_home_tutor/widget/lebel_with_asterisk.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeeReport extends StatelessWidget {
  const FeeReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Report Fee',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Center(
              child: GestureDetector(
                onTap: () {
                  // Handle pay button action
                  Get.to(PaymentTableScreen(),
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: LabelWithAsterisk(labelText: "Start Date")),
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
                        child: LabelWithAsterisk(labelText: "End Date"),
                      ),
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
                          child: LabelWithAsterisk(labelText: "Fee Type")),
                      CustomTextFormField(
                        hintText: "",
                        showDropdownIcon: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            FittedBox(
              child: DataTable(
                headingRowColor: WidgetStateColor.resolveWith(
                    (states) => Colors.blue.shade100),
                columns: const [
                  DataColumn(label: Text("Fee Type")),
                  DataColumn(label: Text("Payment")),
                  DataColumn(label: Text("Date")),
                  DataColumn(label: Text("Bill No")),
                  DataColumn(label: Text("Amount")),
                ],
                rows: [
                  buildNotesRow(
                    "Exam",
                    'Due',
                    "12/09/2022",
                    'ADf25hg',
                    "500",
                  ),
                  buildNotesRow(
                    "Annual Tour",
                    'Paid',
                    "12/09/2022",
                    'ADf25hg',
                    "500",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  DataRow buildNotesRow(
    String fee,
    String payment,
    String date,
    String billNo,
    String amount,
  ) {
    return DataRow(
      cells: [
        DataCell(Text(fee)),
        DataCell(Text(payment)),
        DataCell(Text(date)),
        DataCell(Text(billNo)),
        DataCell(Text(amount)),
      ],
    );
  }
}
