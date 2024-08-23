import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/partner/empty_closet.dart';
import 'package:project/partner/service_completed.dart';

class start_service extends StatefulWidget {
  bool aa;
   start_service({super.key, required this.aa});

  @override
  State<start_service> createState() => _start_serviceState();
}

class _start_serviceState extends State<start_service> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: Get.width*0.7,
          child: FloatingActionButton.extended(
            label: Text(widget.aa?"Start Service":"End Service",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white)),

            backgroundColor: Colors.black,

            onPressed: (){
              widget.aa?Get.to(()=>empty_class()):Get.to(()=>service_completed());
            },

          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Start Service",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14),),
        backgroundColor: Get.theme.scaffoldBackgroundColor,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xff472723),Color(0xff110302)]
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/img_4.png'),
                    radius: 32,
                  ),
                  SizedBox(height: 10,),
                  Text("Name Lorem", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700, color: Colors.white)),
                  SizedBox(height:4,),
                  Text("@userxyz",  style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500, color: Colors.white)),
                  SizedBox(height: 20,),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Image(image: AssetImage('assets/images/img_8.png'),height: 306,width: double.infinity,),
            SizedBox(height: 30,),

          ],
        ),
      ),
    );
  }
}
