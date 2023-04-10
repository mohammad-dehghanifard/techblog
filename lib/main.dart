import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/routes/screen_routes.dart';
import 'package:flutter_techblog/core/controller_binding/app_controller_binding.dart';
import 'package:flutter_techblog/view/home_screen/screens/home_screen.dart';
import 'package:flutter_techblog/view/main_screen/screens/main_screen.dart';
import 'package:flutter_techblog/view/profile_screen/screens/profile_screen.dart';
import 'package:flutter_techblog/view/splash_screen/screen/splash_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllerBinding(),
      locale: const Locale('fa'),
      initialRoute: ScreenRouts.splashRoute,
      getPages: [
        GetPage(name: ScreenRouts.splashRoute, page: () => const SplashScreen()),
        GetPage(name: ScreenRouts.homeRoute, page: () => const HomeScreen()),
        GetPage(name: ScreenRouts.mainScreenRoute, page: () =>  MainScreen()),
        GetPage(name: ScreenRouts.profileScreenRoute, page: () => const ProfileScreen()),
      ],
      title: 'TechBlog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

