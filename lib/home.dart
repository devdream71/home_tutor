import 'dart:async';
import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/view/academic/academic_auth/academic_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:education_home_tutor/utils/images.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    // Auto-scroll timer
    _timer = Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      if (_currentIndex < 3) {
        _currentIndex++;
      } else {
        _currentIndex = 0;
      }

      _pageController.animateToPage(
        _currentIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.appBGColor,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Logo Section
                Column(
                  children: [
                    const SizedBox(height: 30),
                    // const Text(
                    //   'Lorgate Academy',
                    //   style: TextStyle(
                    //     fontSize: 24,
                    //     color: Colors.blue,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                    const SizedBox(height: 30),
                    // Image.asset(
                    //   'assets/education_logo.png',
                    //   height: 100,
                    // ),
                     const SizedBox(height: 100),
                    const SizedBox(height: 10),
                    Text(
                      'Welcome To Loregate',
                      style: textTheme.bodySmall!.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Open the gate to all education',
                      style: textTheme.bodySmall!.copyWith(
                        fontSize: 16,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 80),

                SizedBox(
                  height: 80,
                  width: 120,
                  child: Image.asset(AppImages.splashLogo)),

                // Image Slider with clickable icons
                // SizedBox(
                //   height: 200,
                //   child: Column(
                //     children: [
                //       Expanded(
                //         child: PageView(
                //           controller: _pageController,
                //           onPageChanged: (index) {
                //             setState(() {
                //               _currentIndex = index;
                //             });
                //           },
                //           children: [
                //             buildSliderItem('Academy', AppImages.splashLogo,
                //                 () {
                //               Get.to(
                //                 const AcademicLogin(),
                //                 arguments: 'Academy',
                //                 transition: Transition.rightToLeftWithFade,
                //               );
                //             }),
                //             buildSliderItem('Teacher', AppImages.splashLogo,
                //                 () {
                //               Get.to(const TeacherLoginView(),
                //                   arguments: 'Teacher',
                //                   transition: Transition.rightToLeftWithFade);
                //             }),
                //             buildSliderItem('Student', AppImages.splashLogo,
                //                 () {
                //               Get.to(const Login(),
                //                   arguments: 'Student',
                //                   transition: Transition.rightToLeftWithFade);
                //             }),
                //             buildSliderItem('Home Tutor', AppImages.splashLogo,
                //                 () {
                //               Get.to(const HomeTutorPage(),
                //                   transition: Transition.rightToLeftWithFade);
                //             }),
                //           ],
                //         ),
                //       ),

                //       // Dot Indicator for the slider
                //       Padding(
                //         padding: const EdgeInsets.symmetric(vertical: 16),
                //         child: SmoothPageIndicator(
                //           controller: _pageController,
                //           count: 4, // Number of pages
                //           effect: const ExpandingDotsEffect(
                //             activeDotColor: AppColor.primaryColor,
                //             dotColor: Colors.grey,
                //             dotHeight: 8,
                //             dotWidth: 15,
                //             expansionFactor: 3,
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),

                const SizedBox(height: 20),

                // Chip Row
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColor.appWhiteColor),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        // const Padding(
                        //   padding: EdgeInsets.only(left: 28.0),
                        //   child: Align(
                        //       alignment: Alignment.centerLeft,
                        //       child: Text("Quick LInks")),
                        // ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Get.to(
                                  const AcademicLogin(),
                                  arguments: 'Academy',
                                  transition: Transition.rightToLeftWithFade,
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColor.primaryColor,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0, vertical: 3.0),
                                child: const Text(
                                  "Academy",
                                  style: TextStyle(
                                    color: AppColor.appWhiteColor,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            // InkWell(
                            //   onTap: () {
                            //     Get.to(
                            //       const TeacherLoginView(),
                            //       arguments: 'Academy',
                            //       transition: Transition.rightToLeftWithFade,
                            //     );
                            //   },
                            //   child: Container(
                            //     decoration: BoxDecoration(
                            //       color: AppColor.primaryColor,
                            //       border: Border.all(
                            //         color: Colors.white,
                            //         width: 1.5,
                            //       ),
                            //       borderRadius: BorderRadius.circular(20.0),
                            //     ),
                            //     padding: const EdgeInsets.symmetric(
                            //         horizontal: 25.0, vertical: 3.0),
                            //     child: const Text(
                            //       "Teacher",
                            //       style: TextStyle(
                            //         color: AppColor.appWhiteColor,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            const SizedBox(width: 10),
                            // InkWell(
                            //   onTap: () {
                            //     Get.to(const StudentLogIn(),
                            //         arguments: 'Student',
                            //         transition: Transition.rightToLeftWithFade);
                            //   },
                            //   child: Container(
                            //     decoration: BoxDecoration(
                            //       color: AppColor.primaryColor,
                            //       border: Border.all(
                            //         color: Colors.white,
                            //         width: 1.5,
                            //       ),
                            //       borderRadius: BorderRadius.circular(20.0),
                            //     ),
                            //     padding: const EdgeInsets.symmetric(
                            //         horizontal: 25.0, vertical: 3.0),
                            //     child: const Text(
                            //       "Student",
                            //       style: TextStyle(
                            //         color: AppColor.appWhiteColor,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // InkWell(
                            //   onTap: () {
                            //     Get.to(const ParentsLogin(),
                            //         arguments: 'Parents',
                            //         transition: Transition.rightToLeftWithFade);
                            //   },
                            //   child: Container(
                            //     decoration: BoxDecoration(
                            //       color: AppColor.primaryColor,
                            //       border: Border.all(
                            //         color: Colors.white,
                            //         width: 1.5,
                            //       ),
                            //       borderRadius: BorderRadius.circular(20.0),
                            //     ),
                            //     padding: const EdgeInsets.symmetric(
                            //         horizontal: 25.0, vertical: 3.0),
                            //     child: const Text(
                            //       "Parents",
                            //       style: TextStyle(
                            //         color: AppColor.appWhiteColor,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            SizedBox(width: 10),
                            // InkWell(
                            //   onTap: () => Get.to(const HomeTutorPage(),
                            //       transition: Transition.rightToLeftWithFade),
                            //   child: Container(
                            //     decoration: BoxDecoration(
                            //       color: AppColor.primaryColor,
                            //       border: Border.all(
                            //         color: Colors.white,
                            //         width: 1.5,
                            //       ),
                            //       borderRadius: BorderRadius.circular(20.0),
                            //     ),
                            //     padding: const EdgeInsets.symmetric(
                            //         horizontal: 25.0, vertical: 3.0),
                            //     child: const Text(
                            //       "Home Tutor",
                            //       style: TextStyle(
                            //         color: AppColor.appWhiteColor,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),

                const Spacer(),

                // Social Media Icons (bottom section)
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Image.asset(AppImages.whatsLogo,
                //         height: 40), // Replace with correct image paths
                //     const SizedBox(width: 20),
                //     Image.asset(AppImages.telegramLogo, height: 40),
                //     const SizedBox(width: 20),
                //     Image.asset(AppImages.youtubeLogo, height: 40),
                //   ],
                // ),

                const SizedBox(height: 55),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Slider item with a clickable icon and label
  Widget buildSliderItem(String label, String imagePath, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap, // Handle tap
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, height: 100), // Adjust the size of the image
          const SizedBox(height: 20),
          Text(
            label,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColor.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
