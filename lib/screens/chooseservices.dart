import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project/screens/already_sub.dart';
import 'package:project/screens/home.dart';
import 'package:project/screens/homepage.dart';

import 'closetroveservice.dart';


class ChooseServices extends StatelessWidget {
  const ChooseServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15,),
              child: Row(
                children: [
                  Container(
                    width: 35,
                    height:35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xff472723)),
                    ),
                    child: InkWell(
                      onTap: (){
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 14,
                        color: Color(0xff472723),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Choose service',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              height: 414,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.4,
                    child: Text(
                      'Yay! Lets Digitize Your Wardobe',
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff16151A),
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(()=>homepage(index: 1));
                    },
                    child: Container(
                      height: 95,
                      width: 310,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffEEE5DB),
                              Color(0xffD1B8A2),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                              Icons.warehouse
                          ),
                          Text(
                            'DIY: Digite-It-Yourself',
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(()=>ClosetroveServices());
                    },
                    child: Container(
                      height: 95,
                      width: 310,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff472723).withOpacity(0.9),
                              Color(0xff110302).withOpacity(0.9),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/points_img.png'
                          ),
                          Text(
                            'Book a Service with Us',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
