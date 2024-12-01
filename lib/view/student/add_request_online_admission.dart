import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/view/student/add_request.dart';
import 'package:education_home_tutor/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddRequestOnlineAdmission extends StatelessWidget {
  const AddRequestOnlineAdmission({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 250,
            ),

            const Text(
              'Your are in no Academy',
              style: TextStyle(color: AppColor.primaryColor),
            ),

             const SizedBox(height: 15,),
 
            CustomButton(
              onPressed: () {
                Get.to(const AddRequest(),
                    transition: Transition.rightToLeftWithFade);
              },
              text: "Add Request",
              color: AppColor.primaryColor,
            ),
            const SizedBox(width: 10,),
             

            const SizedBox(height: 15,),
            
             
            
            RichText(
              text: const TextSpan(
                text: 'Please',
                style: TextStyle(),
                children: [
                  TextSpan(
                    text: 'Please',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColor.primaryColor
                    ),
                  ),
                  TextSpan(
                      text: ' Add Request',
                      style: TextStyle(fontWeight: FontWeight.bold, color: AppColor.primaryColor)),
                   
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
