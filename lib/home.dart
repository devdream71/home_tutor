import 'dart:async';
import 'package:education_home_tutor/view/home_tutor/home_tutor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:education_home_tutor/utils/images.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        duration: Duration(milliseconds: 300),
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[50],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Logo Section
                Column(
                  children: [
                    const SizedBox(height: 30),
                    const Text(
                      'Lorgate Academy',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Image.asset(
                      'assets/education_logo.png',
                      height: 100,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Welcome To Lorgate',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'open the gate to all education',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 80),

                // Image Slider with clickable icons
                SizedBox(
                  height: 200,
                  child: Column(
                    children: [
                      Expanded(
                        child: PageView(
                          controller: _pageController,
                          onPageChanged: (index) {
                            setState(() {
                              _currentIndex = index;
                            });
                          },
                          children: [
                            buildSliderItem('Academy', AppImages.splashLogo,
                                () {
                              print("Academy clicked");
                            }),
                            buildSliderItem('Teacher', AppImages.splashLogo,
                                () {
                              print("Teacher clicked");
                            }),
                            buildSliderItem('Student', AppImages.splashLogo,
                                () {
                              print("Student clicked");
                            }),
                            buildSliderItem('Home Tutor', AppImages.splashLogo,
                                () {
                              print("Home Tutor clicked");
                              Get.to(const HomeTutorPage(),
                                  transition: Transition.rightToLeftWithFade);
                            }),
                          ],
                        ),
                      ),

                      // Dot Indicator for the slider
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: SmoothPageIndicator(
                          controller: _pageController,
                          count: 4, // Number of pages
                          effect: const ExpandingDotsEffect(
                            activeDotColor: Colors.blue,
                            dotColor: Colors.grey,
                            dotHeight: 10,
                            dotWidth: 10,
                            expansionFactor: 3,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Chip Row
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Chip(label: Text("Academy")),
                    SizedBox(width: 10),
                    Chip(label: Text("Teacher")),
                    SizedBox(width: 10),
                    Chip(label: Text("Student")),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Chip(label: Text("Parents")),
                    const SizedBox(width: 10),
                    InkWell(
                        onTap: () => Get.to(const HomeTutorPage(),
                            transition: Transition.rightToLeftWithFade),
                        child: const Chip(label: Text("Home Tutor"))),
                  ],
                ),

                const Spacer(),

                // Social Media Icons (bottom section)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.whatsLogo,
                        height: 40), // Replace with correct image paths
                    const SizedBox(width: 20),
                    Image.asset(AppImages.telegramLogo, height: 40),
                    const SizedBox(width: 20),
                    Image.asset(AppImages.youtubeLogo, height: 40),
                  ],
                ),

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
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
