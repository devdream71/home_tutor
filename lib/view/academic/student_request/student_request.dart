import 'package:education_home_tutor/view/academic/student_request/new_student_request_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StudentRequest extends StatelessWidget {
  const StudentRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text(
          "New Student Request",
        ),
      ),
      body:   Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                
                 Get.to(const NewStudentRequestDetails());
              },
              child: const Card(
                
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text('1'),
                  ),
                  title: Text("Md. Jasim Uddin"),
                  subtitle: Text('Class: Two'),
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
                subtitle: Text('Class: Five'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),

            const Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Text('3'),
                ),
                title: Text("Miss. Salma Begum"),
                subtitle: Text('Class: Seven'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
