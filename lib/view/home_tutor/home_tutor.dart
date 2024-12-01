import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/utils/images.dart';
import 'package:education_home_tutor/view/home_tutor/become_tutor.dart';
import 'package:education_home_tutor/view/home_tutor/tutor_deatils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeTutorPage extends StatelessWidget {
  const HomeTutorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[50],
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // Top Section with Dropdowns
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                      Row(
                      children: [
                        const Icon(Icons.person_search,
                            color: Colors.white, size: 40),
                        const SizedBox(width: 10),
                        const Text(
                          'Home Tutor',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                            onTap: () {
                              Get.to(const BecomeTutor(), transition: Transition.rightToLeftWithFade);
                            },
                          child: const Text(
                            "Become a Tutor?",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: buildDropdown('Class'),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: buildDropdown('Subject'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: buildDropdown('District'),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: buildDropdown('Area'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),

              // Tutor List
              Expanded(
                child: ListView.builder(
                  itemCount: 10, // Number of tutors
                  itemBuilder: (context, index) {
                    return buildTutorCard();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget for the dropdown menu
  Widget buildDropdown(String hint) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey),
      ),
      child: DropdownButton<String>(
        hint: Text(hint),
        underline: const SizedBox(), // Removes underline
        isExpanded: true, // Makes the dropdown expand to full width
        icon: const Icon(Icons.arrow_drop_down),
        items: ['Option 1', 'Option 2', 'Option 3'].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (newValue) {
          // Handle change
        },
      ),
    );
  }

  // Widget for the tutor card
  Widget buildTutorCard() {
    return InkWell(
      onTap: () =>   Get.to(const TutorProfile()),
      child: const Card(
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                    AppImages.splashLogo), 
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Md. Jasim Uddin Nizami',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColor.primaryColor,
                      ),
                    ),
                    SizedBox(height: 5),
      
                    Text(
                      'One, Six, Alim, BBA\nEnglish, Bangla, Math\nDhaka - Sahabag\nHatirpool, Karwanbazar, Panthapoth',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 10,),
      
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
