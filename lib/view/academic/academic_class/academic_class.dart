import 'package:education_home_tutor/utils/colors.dart';
import 'package:flutter/material.dart';

class AcademicClass extends StatelessWidget {
  const AcademicClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Academic Class'),
        backgroundColor: AppColor.primaryColor,
        foregroundColor: Colors.white,
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
