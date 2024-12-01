import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/view/academic/teacher/teacher_individual_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllTeacher extends StatelessWidget {
  const AllTeacher({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        foregroundColor: Colors.white,
        title: const Text('All Teacher'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //total teacher ===>
                SizedBox(
                  width: 120,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.school, color: Colors.white),
                    onPressed: () {},
                    label: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Teachers",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '30',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.primaryColor, // Button fill color
                      padding:
                          const EdgeInsets.all(8), // Padding inside the button
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(15), // Circular border
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),

                //male teacher ====>
                SizedBox(
                  width: 120,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.male, color: Colors.white),
                    onPressed: () {},
                    label: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Male",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '15',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.primaryColor,  
                      padding:
                          const EdgeInsets.all(8), 
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(15),  
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  width: 10,
                ),

                //female teacher
                SizedBox(
                  width: 120,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.female, color: Colors.white),
                    onPressed: () {},
                    label: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Female",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '15',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.primaryColor,  
                      padding:
                          const EdgeInsets.all(8), 
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(15), 
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Get.to(const TeacherIndividualDetails(),
                    transition: Transition.rightToLeft);
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
