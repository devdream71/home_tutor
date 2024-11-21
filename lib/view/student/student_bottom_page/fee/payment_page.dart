import 'package:flutter/material.dart';

class PaymentTableScreen extends StatefulWidget {
  @override
  _PaymentTableScreenState createState() => _PaymentTableScreenState();
}

class _PaymentTableScreenState extends State<PaymentTableScreen> {
  // Dynamic data for rows
  final List<Map<String, dynamic>> paymentData = [
    {'billDate': '12-12-24', 'feeType': 'Monthly Tuition', 'amount': '500'},
    {'billDate': '11-11-24', 'feeType': 'Exam Fee', 'amount': '300'},
    {'billDate': '10-10-24', 'feeType': 'Library Fee', 'amount': '200'},
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
          'Payment',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
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
                      Table(
                        border: TableBorder.all(color: Colors.black, width: 1),
                        columnWidths: const {
                          0: FixedColumnWidth(40), // Checkbox column
                          1: FlexColumnWidth(),
                          2: FlexColumnWidth(),
                          3: FixedColumnWidth(80), // Amount column
                        },
                        children: [
                          // Header Row
                          const TableRow(
                            decoration: BoxDecoration(color: Colors.blue),
                            children: [
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
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Bill Date',
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Fee Type',
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Amount',
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          // Dynamic Rows
                          for (int i = 0; i < paymentData.length; i++)
                            TableRow(
                              children: [
                                Checkbox(
                                  value: selectedRows[i],
                                  onChanged: (bool? value) {
                                    setState(() {
                                      selectedRows[i] = value ?? false;
                                    });
                                  },
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(paymentData[i]['billDate']),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(paymentData[i]['feeType']),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(paymentData[i]['amount']),
                                ),
                              ],
                            ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            'Total',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            color: Colors.red,
                            child: Text(
                              calculateTotal(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Text.rich(
                        TextSpan(
                          text: 'Please click ',
                          children: [
                            TextSpan(
                              text: 'Green',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: ' pay Button For Online Payment'),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
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
                          Icons.payment,
                          color: Colors.white,
                        ),
                        label: const Text(
                          'Pay',
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
