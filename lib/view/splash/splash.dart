import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/utils/images.dart';
import 'package:education_home_tutor/utils/strings.dart';
import 'package:education_home_tutor/view/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final splashController = Get.put(SplashController());

  @override
  void initState() {
    splashController.splashToLoginOrHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => AnimatedOpacity(
                opacity: splashController.textOpacity.value,
                duration: const Duration(seconds: 1),
                child: Text(
                  AppStrings.splashScreenIntro,
                  style: textTheme.bodySmall!.copyWith(
                    color: AppColor.appSplashScreenBG,
                    fontWeight: FontWeight.w500,
                    fontSize: 17.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Obx(
              () => AnimatedOpacity(
                opacity: splashController.imageOpacity.value,
                duration: const Duration(seconds: 1),
                child: Image.asset(
                  AppImages.splashLogo,
                  height: 353,
                  width: MediaQuery.of(context).size.width - 50,
                ),
              ),
            ),
            const SizedBox(height: 40),
            Obx(
              () => AnimatedOpacity(
                opacity: splashController.indicatorOpacity.value,
                duration: const Duration(seconds: 1),
                child: const CircularProgressIndicator(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
