import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/screens/login.dart';


class OnBoardingPg3 extends StatelessWidget {
  const OnBoardingPg3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              child: Center(
                child: Image.asset(
                  "assets/OnBoard01.png",
                  height: MediaQuery.of(context).size.height*0.8,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ),
            Positioned(
              right: MediaQuery.of(context).size.width*0.1,
              top: MediaQuery.of(context).size.height*0.07,
              child: InkWell(
                onTap: (){
                  Get.to(()=>login());
                },
                child: Text(
                  "Skip",
                  style: TextStyle(
                      color: Color(0xff472723),
                      fontWeight: FontWeight.w700,
                      fontSize: MediaQuery.of(context).size.height*0.015,
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xff472723),
                      decorationThickness: 3
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height:MediaQuery.of(context).size.height*0.4,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35),
                  ), // Semi-transparent white background
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.03,
                      ),
                      Text(
                        'Headline 1',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.height*0.035,
                        ),
                      ),
                      Text(
                        'Important Text',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.height*0.035,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.025,
                      ),
                      Container(
                        width:MediaQuery.of(context).size.width*0.9,
                        child: Text("orem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos",
                          maxLines: 4,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xff3F434A),
                              fontWeight: FontWeight.w300,
                              fontSize: MediaQuery.of(context).size.height*0.014
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.035,
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.06),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              child: Container(
                                width: MediaQuery.of(context).size.height*0.032,
                                height:MediaQuery.of(context).size.height*0.032,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Color(0xff472723)),
                                ),
                                child: Icon(
                                  Icons.arrow_back,
                                  size: MediaQuery.of(context).size.height*0.018,
                                  color: Color(0xff472723),
                                ),
                              ),
                              onTap: (){
                                Get.back();
                              },
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.height*0.006,
                                  height:  MediaQuery.of(context).size.height*0.006,
                                  decoration: BoxDecoration(
                                    color: Color(0xff444444).withOpacity(0.25),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(width: MediaQuery.of(context).size.height*0.01),
                                Container(
                                  width: MediaQuery.of(context).size.height*0.006,
                                  height:  MediaQuery.of(context).size.height*0.006,
                                  decoration: BoxDecoration(
                                    color: Color(0xff444444).withOpacity(0.25),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(width: MediaQuery.of(context).size.height*0.01),
                                Container(
                                  width:  MediaQuery.of(context).size.height*0.01,
                                  height:  MediaQuery.of(context).size.height*0.01,
                                  decoration: BoxDecoration(
                                    color: Color(0xff472723), // Different color for the first dot
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Container(
                              width: MediaQuery.of(context).size.height*0.032,
                              height:MediaQuery.of(context).size.height*0.032,
                              decoration: BoxDecoration(
                                color: Color(0xff472723),
                                shape: BoxShape.circle,
                                border: Border.all(color: Color(0xff472723)),
                              ),
                              child: InkWell(
                                onTap: (){
                                  Get.to(()=>login());
                                },
                                child: Icon(
                                  Icons.arrow_forward,
                                  size: MediaQuery.of(context).size.height*0.018,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
              ),
            ),
          ],
        )
    );
  }
}
