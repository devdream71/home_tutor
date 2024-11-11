import 'package:education_home_tutor/view/academic/student_request/all_student_individual_ldeatils.dart';
import 'package:education_home_tutor/view/academic/teacher/teacher_individual_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AllTeacher extends StatelessWidget {
  const AllTeacher({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('All Teacher'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Get.to(const TeacherIndividualDetails(), transition: Transition.rightToLeft);
              },
              child: const Card(
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text('1'),
                  ),
                  title: Text("Md. Jasim Uddin"),
                  subtitle: Text('Designation: Ast Teacher'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
            const Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Text('2'),
                ),
                title: Text("Md. Hasan Gaffar"),
                subtitle: Text('Designation: Ast Teacher'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Text('3'),
                ),
                title: Text("Miss. Salma Begum"),
                subtitle: Text('Designation: Ast Teacher'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
