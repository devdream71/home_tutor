import 'package:education_home_tutor/utils/colors.dart';
import 'package:flutter/material.dart';

class Routine extends StatelessWidget {
  const Routine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Routine'),
        backgroundColor: AppColor.primaryColor,
        foregroundColor: Colors.white,
      ),
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            // Align(
            //   alignment: Alignment.center,
            //   child: ElevatedButton.icon(
            //     label: const Text(
            //       "Create Routine",
            //       style: TextStyle(color: Colors.white, fontSize: 16),
            //     ),
            //     icon: const Icon(
            //       Icons.add,
            //       color: Colors.white,
            //     ),
            //     onPressed: () {},
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: Colors.blueGrey,
            //       padding: const EdgeInsets.symmetric(
            //           vertical: 16.0, horizontal: 16.0),
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(8.0),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
