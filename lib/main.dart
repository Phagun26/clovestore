  import 'dart:math';

import 'package:animated_splash_screen/animated_splash_screen.dart';
  import 'package:flutter/material.dart';
  import 'package:get/get_navigation/src/root/get_material_app.dart';
  import 'package:project/onboarding/onboardin_pg1.dart';
import 'package:project/screens/home.dart';
import 'package:project/screens/homepage.dart';
  import 'package:project/screens/login.dart';
  import 'package:project/splashscreen.dart';
  import 'package:appwrite/appwrite.dart';
  void main() {

WidgetsFlutterBinding.ensureInitialized();
   // For self signed certificates, only use for development
    runApp(const MyApp());
  }

  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(

          fontFamily: 'aeonik',
          scaffoldBackgroundColor: Color(0xfff1efee),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          // useMaterial3: true,
        ),
        home: AnimatedSplashScreen(
          splash: 'assets/animation.gif',
          nextScreen: homepage(index: 1),
          duration: 2500,
        ),
      );
    }
  }
