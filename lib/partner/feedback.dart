import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/partner/partnerhome.dart';

import 'filled_closet.dart';

class feedback extends StatefulWidget {
  const feedback({super.key});

  @override
  State<feedback> createState() => _feedbackState();
}

class _feedbackState extends State<feedback> {
  double hh = Get.height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 320,
          child: FloatingActionButton.extended(
            label: Text("Submit",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.white)),


            backgroundColor: Colors.black,

            onPressed: (){Get.offAll(()=>PartnerHome());},

          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        title: Container(
          width: 270,
          height: 42,
          color: Colors.white,
          alignment: Alignment.center,
          child: Text("Feedback", style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 40,),
            Container(
              height: 250,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xffEEE5DB),
                    Color(0xffD1B8A2),
                  ],


                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Share your views",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
                  SizedBox(height: 10,),
                  Text("Lorem ipsum dolor sit amet consectetur?",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
                  SizedBox(height: 10,),
                  Container(
                    height: 132,
                    color: Colors.white,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
