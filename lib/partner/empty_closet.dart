import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project/partner/add_item_partner.dart';

class empty_class extends StatefulWidget {
  const empty_class({super.key});

  @override
  State<empty_class> createState() => _empty_classState();
}

class _empty_classState extends State<empty_class> {
  double ww = Get.width;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 320,
          child: FloatingActionButton.extended(
            label: Text("Add Items",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.white)),
            icon: Icon(CupertinoIcons.plus,size: 14,color: Colors.white,),

            backgroundColor: Colors.black,

            onPressed: (){
              Get.to(()=>add_item_partner());
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
          child: Text("Booking ID: BE123456", style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Total space:100, Used: 60, Available:40",  style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12)),
                SizedBox(height: 12,),
                Stack(
                  children: [
                    Container(height: 16,width: ww,color: Color(0xffD9D9D9)),
                    Container(height: 16, width: ww*0,color: Color(0xff472723),)
                  ],
                ),
                SizedBox(height: 15,),
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
                    mainAxisAlignment: MainAxisAlignment.end,
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
                SizedBox(height: 20,),
                Align(
                    alignment: Alignment.center ,
                    child: Image(image: AssetImage('assets/images/img_9.png'),height: 172,))

              ],
            ),
          ),
        ],
      ),
    );
  }
}
