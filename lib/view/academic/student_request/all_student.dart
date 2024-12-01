import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/view/academic/student_request/all_student_individual_ldeatils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllStudent extends StatelessWidget {
  const AllStudent({super.key});

  @override
  Widget build(BuildContext context) {
    // Controllers for text fields
    final genderController = TextEditingController();
    final classController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        foregroundColor: Colors.white,
        title: const Text('All Student'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: genderController,
                        decoration: const InputDecoration(
                          labelText: 'Class',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        controller: classController,
                        decoration: const InputDecoration(
                          labelText: 'Gender',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(
                      const AllStudentIndividualDetails(),
                      transition: Transition.rightToLeft,
                    );
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
        ],
      ),
    );
  }
}
