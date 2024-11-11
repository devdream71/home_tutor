import 'package:dotted_line/dotted_line.dart';
import 'package:education_home_tutor/widget/custom_button.dart';
import 'package:flutter/material.dart';

class AllStudentIndividualDetails extends StatelessWidget {
  const AllStudentIndividualDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('Student Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 37,
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/dream_tech.jpg'),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            customRowBuilder('Student Name', 'Md. Jasim Uddin Nazami'),
            customRowBuilder('Class', 'Class Six'),
            customRowBuilder('Session', 'Class Six, 2024 B 06'),
            customRowBuilder('Admission', 'Ad Class Six, 2024 B 06'),
            customRowBuilder('Section', 'A'),
            customRowBuilder('Shift', 'Morning'),
            customRowBuilder('Group', ' - '),
            customRowBuilder('Seats', '20/10'),
            customRowBuilder('Availavel', '10'),
            customRowBuilder('Admiussion Date', ' - '),
            customRowBuilder('Roll/ UID', ' - '),
            const SizedBox(
              height: 10,
            ),
            const Text('Father Info', style: TextStyle(fontWeight: FontWeight.bold),),
            const SizedBox(
              height: 10,
            ),
            customRowBuilder('Father Name', '-'),
            customRowBuilder('Father Phone Number:', '-'),
            customRowBuilder('Father NID', ' - '),
            const SizedBox(
              height: 10,
            ),
            const Text('Mother Info', style: TextStyle(fontWeight: FontWeight.bold),),
            const SizedBox(
              height: 10,
            ),
            customRowBuilder('Mother Name', '-'),
            customRowBuilder('Mother Phone Number:', '-'),
            customRowBuilder('Mother NID', '-'),
          ],
        ),
      ),
    );
  }

  Widget customRowBuilder(String text, String text2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(text2)
      ],
    );
  }
}
