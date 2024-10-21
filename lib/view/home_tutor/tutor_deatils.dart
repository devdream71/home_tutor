
import 'package:education_home_tutor/utils/images.dart';
import 'package:education_home_tutor/view/sign_up/otp_sign_up.dart';
import 'package:education_home_tutor/view/sign_up/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class TutorProfile extends StatelessWidget {
  const TutorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[50],
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8.0,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Profile Image
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(AppImages.splashLogo), // Replace with the correct image path
                    ),
                    const SizedBox(width: 16),
                    
                    // Name and Contact Icons
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Md. Jasim Uddin Nizami",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            "jasim5816@gmail.com",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 8),
                          
                          // Contact Icons
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.send, color: Colors.green),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: const Icon(Icons.call, color: Colors.blue),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: const Icon(Icons.video_call, color: Colors.red),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                
                // Education and Other Details
                buildInfoRow("Education Institute", "Dhaka University BBA, 2024"),
                const SizedBox(height: 8),
                buildInfoRow("Class", "One, Six, Alim, BBA"),
                const SizedBox(height: 8),
                buildInfoRow("Subject", "English, Bangla, Math"),
                const SizedBox(height: 8),
                buildInfoRow("Location", "Dhaka - Sahabag Hatirpol, Karwanbazar, Panthapoth"),
                const SizedBox(height: 8),
                buildInfoRow("Salary Range", "1000 - 5000"),
                const SizedBox(height: 16),
                
                // Details Section
                const Text(
                  "Details",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  "I’m Jasim Uddin Nizami. Any subject tutor across Bangladesh. I’m available for tutoring in English, Bangla, and Math across all educational levels in Bangladesh.",
                  style: TextStyle(color: Colors.black87),
                ),
                const SizedBox(height: 16),
                
                // Contact Me Button
                Align(
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    onTap: () {
                      print("Contact button clicked");
                      Get.to(const SignUp(), transition: Transition.rightToLeftWithFade);

                    },
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Text Me",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(Icons.message, color: Colors.blue),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Method to build rows for labels and values
  Widget buildInfoRow(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "$label: ",
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          value,
          style: const TextStyle(color: Colors.black87),
        ),
      ],
    );
  }
}
 