import 'package:flutter/material.dart';

class TeacherIndividualDetails extends StatelessWidget {
  const TeacherIndividualDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('Teacher Details'),
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
            customRowBuilder('Teacher Name', 'Md. Jasim Uddin Nazami'),
            customRowBuilder('Mobile', '-'),
            customRowBuilder('NID', '-'),
            customRowBuilder('Email', '-'),
            customRowBuilder('Education', '-'),
            
            const SizedBox(
              height: 40,
            ),
           
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
