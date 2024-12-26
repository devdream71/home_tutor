import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/view/student/student_bottom_page/fee/payment_page.dart';
import 'package:education_home_tutor/widget/custome_text_edit_form.dart';
import 'package:education_home_tutor/widget/lebel_with_asterisk.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class FeeReport extends StatefulWidget {
  const FeeReport({super.key});

  @override
  State<FeeReport> createState() => _FeeReportState();
}

class _FeeReportState extends State<FeeReport> {
  final TextEditingController _dateController = TextEditingController();

  final TextEditingController _endDateController = TextEditingController();

  final List<String> _feeType = ["Tution Fee", "Exam Fee", "General Fee"];
  String? _selectedFeeType;

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
         _endDateController.text = DateFormat('MMM d, yyyy').format(date);
      });
    }
  }

 
  @override
  void initState() {
    super.initState();
    // Set current date by default
    _dateController.text = DateFormat('MMM d, yyyy').format(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Report Fee',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppColor.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                Expanded(
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: LabelWithAsterisk(labelText: "End Date"),
                      ),
                      GestureDetector(
                        onTap: () => _pickDate(context),
                        child: AbsorbPointer(
                          child: CustomTextFormField(
                            hintText: "Select Date",
                            controller:
                                _endDateController, 
                          ),
                        ),
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: LabelWithAsterisk(labelText: "Fee Type"),
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
                        value: _selectedFeeType,
                        items: _feeType.map((feeType) {
                          return DropdownMenuItem<String>(
                            value: feeType,
                            child: Text(feeType),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedFeeType = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Expanded(child: SizedBox()),
                const SizedBox(
                  width: 10,
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
