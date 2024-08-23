import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/partner/feedback.dart';
class service_completed extends StatefulWidget {
  const service_completed({super.key});

  @override
  State<service_completed> createState() => _service_completedState();
}

class _service_completedState extends State<service_completed> {
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
            label: Text("Give Feedback",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.white)),


            backgroundColor: Colors.black,

            onPressed: (){
              Get.to(()=>feedback());
            },

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
          child: Text("Service Completed", style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Image(image: AssetImage('assets/images/img_11.png'),height: hh*0.7,),
      ),

    );
  }
}
