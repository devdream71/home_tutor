import 'package:education_home_tutor/view/student/request_pending.dart';
import 'package:education_home_tutor/widget/custom_button.dart';
import 'package:education_home_tutor/widget/custome_text_edit_form.dart';
import 'package:education_home_tutor/widget/lebel_with_asterisk.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddRequest extends StatelessWidget {
  const AddRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Center(
                child: Text(
                  'Add Request',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const LabelWithAsterisk(
                labelText: "Academy ID or Name",
              ),
              const CustomTextFormField(
                hintText: "",
              ),
              const SizedBox(
                height: 10,
              ),
              const LabelWithAsterisk(
                labelText: "Class",
              ),
              const CustomTextFormField(
                hintText: "",
              ),
              const SizedBox(
                height: 10,
              ),
              const LabelWithAsterisk(
                labelText: "Session",
              ),
              const CustomTextFormField(
                hintText: "",
              ),
              const SizedBox(
                height: 10,
              ),
              const LabelWithAsterisk(
                labelText: "Admission",
              ),
              const CustomTextFormField(
                hintText: "",
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                onPressed: () {
                  Get.to(const RequestPending(),
                      transition: Transition.rightToLeftWithFade);
                },
                text: "Request",
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
