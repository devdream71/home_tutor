// import 'package:device_preview/device_preview.dart';
import 'package:education_home_tutor/utils/colors.dart';

import 'package:education_home_tutor/view/splash/splash.dart';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
      //   DevicePreview(
      //     enabled: !kReleaseMode,
      //     builder: (context) => const MyApp(), // Wrap your app
      //   ),
      // );

      const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      useInheritedMediaQuery: true,
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
        //useMaterial3: true,
        textTheme: TextTheme(bodySmall: GoogleFonts.roboto()),
      ),
      home: const Splash(),
      // home: AcademicHome(),
    );
  }
}
