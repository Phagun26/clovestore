import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/partner/enter_code.dart';

class start_booking extends StatefulWidget {
  const start_booking({super.key});

  @override
  State<start_booking> createState() => _start_bookingState();
}

class _start_bookingState extends State<start_booking> {
  double ww = Get.width;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: SingleChildScrollView(
          child: Column(
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
                        Container(height: 16, width: ww*0.6,color: Color(0xff472723),)
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
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 1 ,),
                          Image.asset(
                            'assets/images/img_7.png',
                            height: 23,
                            width: 43,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Heading',
                                style: TextStyle(
                                  color: Color(0xff472723),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width*0.67,
                                child: Center(
                                  child: Text(
                                    'Lorem ipsum dolor sit amet consectetur. Phasellus morbi sit mattis viverra a.' ,
                                    maxLines: 2,
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 24,
                                width: 115,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  gradient: RadialGradient(
                                    colors: [
                                      Color(0xffEEE5DB),
                                      Color(0xffD1B8A2),
                                    ],
                                    center: Alignment.center,
                                    radius: 0,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Sat, Apr 12 @ 7:30 PM',
                                    style: TextStyle(
                                      color: Color(0xff472723),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/splash_img.png',
                            height: 23,
                            width: 43,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Requirement',
                                style: TextStyle(
                                  color: Color(0xff472723),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width*0.67,
                                child: Center(
                                  child: Text(
                                    'Lorem ipsum dolor sit amet consectetur. Sed sit feugiat pulvinar phasellus. Massa praesent porta nam cum fermentum sem sed mollis. ' ,
                                    maxLines: 4,
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/schedule.png',
                            height: 23,
                            width: 43,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Schedule',
                                style: TextStyle(
                                  color: Color(0xff472723),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width*0.67,
                                child: Center(
                                  child: Text(
                                    'Lorem ipsum dolor sit amet consectetur. Sed sit feugiat pulvinar phasellus. Massa praesent porta nam cum fermentum sem sed mollis. ' ,
                                    maxLines: 4,
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 8,),
                              InkWell(
                                onTap: (){
                                  Get.to(()=>enter_code(
                                    aa: "Upload Closet before",
                                  ));
                                },
                                child: Container(
                                  height: 24,
                                  width: 115,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    gradient: RadialGradient(
                                      colors: [
                                        Color(0xffEEE5DB),
                                        Color(0xffD1B8A2),
                                      ],
                                      center: Alignment.center,
                                      radius: 0,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Enter Code',
                                      style: TextStyle(
                                        color: Color(0xff472723),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
