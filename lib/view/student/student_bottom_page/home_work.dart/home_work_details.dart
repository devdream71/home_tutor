import 'package:flutter/material.dart';

class HomeWorkDetails extends StatelessWidget {
  const HomeWorkDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Homework',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Table for date, subject, teacher, and period

          const Card(
            child: ListTile(
              title: Text('Date: May 12, 2024, 11:12 AM '),
              subtitle: Text('Subject: Bangla, Teacher - Shakib, Period: 3rd'),
            ),
          ),
            const SizedBox(height: 10,),
            // Table(
            //   border: TableBorder.all(color: Colors.black, width: 1),
            //   children: const [
            //     TableRow(children: [
            //       Padding(
            //         padding: EdgeInsets.all(8.0),
            //         child: Text("Date",
            //             style: TextStyle(fontWeight: FontWeight.bold)),
            //       ),
            //       Padding(
            //         padding: EdgeInsets.all(8.0),
            //         child: Text(""),
            //       ),
            //     ]),
            //     TableRow(children: [
            //       Padding(
            //         padding: EdgeInsets.all(8.0),
            //         child: Text("Subject",
            //             style: TextStyle(fontWeight: FontWeight.bold)),
            //       ),
            //       Padding(
            //         padding: EdgeInsets.all(8.0),
            //         child: Text(""),
            //       ),
            //     ]),
            //     TableRow(children: [
            //       Padding(
            //         padding: EdgeInsets.all(8.0),
            //         child: Text("Teacher",
            //             style: TextStyle(fontWeight: FontWeight.bold)),
            //       ),
            //       Padding(
            //         padding: EdgeInsets.all(8.0),
            //         child: Text(""),
            //       ),
            //     ]),
            //     TableRow(children: [
            //       Padding(
            //         padding: EdgeInsets.all(8.0),
            //         child: Text("Period",
            //             style: TextStyle(fontWeight: FontWeight.bold)),
            //       ),
            //       Padding(
            //         padding: EdgeInsets.all(8.0),
            //         child: Text(""),
            //       ),
            //     ]),
            //   ],
            // ),
            const SizedBox(height: 20),
            // Write Homework Section
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(4),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: const Text(
                "Write Homework",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            const SizedBox(height: 20),
            // Notes Section
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(4),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: const Text(
                "Note",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
