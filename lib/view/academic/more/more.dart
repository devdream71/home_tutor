import 'package:education_home_tutor/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                // Card(
                //   child: ListTile(
                //     title: const Text("Attendance"),
                //     leading: const Icon(Icons.note),
                //     trailing: const Icon(Icons.arrow_forward),
                //     onTap: () {
                //       Get.to(
                //         const AcademicAttendanceCreateView(),
                //         transition: Transition.cupertino,
                //       );
                //     },
                //   ),
                // ),
                // Card(
                //   child: ListTile(
                //     title: const Text("Home Work"),
                //     leading: const Icon(Icons.description),
                //     trailing: const Icon(Icons.arrow_forward),
                //     onTap: () {
                //       Get.to(const AcademicHomeworkView(),
                //           transition: Transition.cupertino);
                //     },
                //   ),
                // ),
                // Card(
                //   child: ListTile(
                //     title: const Text("Mark Entry"),
                //     leading: const Icon(Icons.edit_note),
                //     trailing: const Icon(Icons.arrow_forward),
                //     onTap: () {
                //       Get.to(const AcademicMarkEntryView(),
                //           transition: Transition.cupertino);
                //     },
                //   ),
                // ),
                // Card(
                //   child: ListTile(
                //     title: const Text("Notice"),
                //     leading: const Icon(Icons.note_alt),
                //     trailing: const Icon(Icons.arrow_forward),
                //     onTap: () {
                //       Get.to(const AcademicNoticePage(),
                //           transition: Transition.cupertino);
                //     },
                //   ),
                // ),
                // Card(
                //   child: ListTile(
                //     title: const Text("Result"),
                //     leading: const Icon(Icons.school),
                //     trailing: const Icon(Icons.arrow_forward),
                //     onTap: () {
                //       Get.to(const ResultPage(),
                //           transition: Transition.cupertino);
                //     },
                //   ),
                // ),
                // Card(
                //   child: ListTile(
                //     title: const Text("Routine"),
                //     leading: const Icon(Icons.file_present),
                //     trailing: const Icon(Icons.arrow_forward),
                //     onTap: () {
                //       Get.to(const Routine(), transition: Transition.cupertino);
                //     },
                //   ),
                // ),
                // Card(
                //   child: ListTile(
                //     title: const Text("New Student Request"),
                //     leading: const Icon(Icons.person),
                //     trailing: const Icon(Icons.arrow_forward),
                //     onTap: () {
                //       Get.to(const StudentRequest(),
                //           transition: Transition.cupertino);
                //     },
                //   ),
                // ),
                // Card(
                //   child: ListTile(
                //     title: const Text("Teacher"),
                //     leading: const Icon(Icons.history_edu),
                //     trailing: const Icon(Icons.arrow_forward),
                //     onTap: () {
                //       Get.to(const AllTeacher(),
                //           transition: Transition.cupertino);
                //     },
                //   ),
                // ),
                // Card(
                //   child: ListTile(
                //     title: const Text("Account"),
                //     leading: const Icon(Icons.history_edu),
                //     trailing: const Icon(Icons.arrow_forward),
                //     onTap: () {
                //       Get.to(const AcademicAccount(),
                //           transition: Transition.cupertino);
                //     },
                //   ),
                // ),
                Card(
                  child: ListTile(
                    title: const Text("log out"),
                    leading: const Icon(Icons.history_edu),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                       _logout(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Future<bool> _logout(context) async {
  final shouldClose = await showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Log out'),
      content: const Text('Are you sure you want to logout the app?'),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () =>
              Get.off(const Home(), transition: Transition.rightToLeftWithFade),
          child: const Text('logout'),
        ),
      ],
    ),
  );
  return shouldClose ?? false; // Prevent exiting if dialog is dismissed
}

}
