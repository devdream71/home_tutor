import 'package:education_home_tutor/widget/custom_button.dart';
import 'package:flutter/material.dart';

class NewStudentRequestDetails extends StatelessWidget {
  const NewStudentRequestDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('Student Request Details'),
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
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 120,
                  child: CustomButton(
                    onPressed: () {
                      //Get.to(const OTPSignUp(), transition: Transition.rightToLeftWithFade);
                    },
                    text: "Accept",
                    color: Colors.green,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 120,
                  child: CustomButton(
                    onPressed: () {
                      //Get.to(const OTPSignUp(), transition: Transition.rightToLeftWithFade);
                    },
                    text: "Reject",
                    color: Colors.red,
                  ),
                ),
              ],
            )
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
