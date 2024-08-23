  import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/onboarding/onboardin_pg1.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
      Future.delayed(Duration(milliseconds: 5000),(){
      Get.to(OnBoardingPg1());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffEEE5DB),
              Color(0xffD1B8A2),
            ],
                begin: Alignment.centerLeft,
            end: Alignment.centerRight
          ),
        ),
        child: Center(
          child: Image.asset(
              'assets/splash_img.png',
          height: MediaQuery.of(context).size.height*0.1,
            width: MediaQuery.of(context).size.width*0.3,
          ),
        ),
      ),
    );
  }
}
