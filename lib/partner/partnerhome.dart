import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/partner/partnerprofile.dart';
import 'package:project/partner/todaysbookings.dart';

import '../screens/Notifications.dart';
import '../screens/home.dart';
import 'newbookings.dart';

class PartnerHome extends StatelessWidget {
  const PartnerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  InkWell(
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius:20,
                    ),
                    onTap: (){
                      Get.to(()=>PartnerProfile());
                    },
                  ),
                  SizedBox(width: 10,),
                  Text("Welcome Partner",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
                  Spacer(),
                  InkWell(
                    onTap: (){
                      Get.to(()=>notifications());
                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      height: 29,
                      width: 29,
                      child: Center(child: Icon(Icons.notifications, color: Colors.black,size: 20,)),
                    ),
                  )
                ],
              ),),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 15,horizontal: 20),
              child: InkWell(
                onTap: (){
                },
                child: Container(
                  height: 150,
                  width: double.infinity,
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
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            'How this works!',
                            style: TextStyle(
                                fontSize: 24,
                                color: Color(0xff472723),
                                fontWeight: FontWeight.w700
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.5,
                          child: Text(
                            'Lorem ipsum dolor sit amet consectetur. Phasellus morbi sit mattis viverra a.' ,
                            maxLines: 2,
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 12,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.symmetric(vertical: 10),
                          child: InkWell(
                            onTap: (){

                            },
                            child: Container(
                              width: 133,
                              height: 31,
                              decoration: BoxDecoration(
                                color: Color(0xff472723),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Center(
                                child: Text(
                                  'Let’s Get Started!',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            DateTimelinePage(),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 15,horizontal: 20),
              child: Container(
                height: 42,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xffFAFAFA),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: Text(
                    'Today’s Bookings',
                    style: TextStyle(
                      color: Color(0xff16151A),
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 78,
                width: MediaQuery.of(context).size.width,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xffD9D9D9),
                      radius: 27,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 18,
                          width: 108,
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
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Client Name',
                          style: TextStyle(
                            color: Color(0xff472723),
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.3,
                          child: Center(
                            child: Text(
                              'Lorem ipsum dolor sit amet consectetur. Phasellus morbi sit mattis viverra a.' ,
                              maxLines: 2,
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 8,
                                  fontWeight: FontWeight.w300
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        InkWell(
                          onTap: (){
                            Get.to(()=>TodaysBookings());
                          },
                          child: Container(
                            width: 105,
                            height: 18,
                            decoration: BoxDecoration(
                              color: Color(0xff472723),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Center(
                              child: Text(
                                'View Booking Details',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 8,
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
            ),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 15,horizontal: 20),
              child: Container(
                height: 42,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xffFAFAFA),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: Text(
                    'New Bookings',
                    style: TextStyle(
                        color: Color(0xff16151A),
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 78,
                width: MediaQuery.of(context).size.width,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xffD9D9D9),
                      radius: 27,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 18,
                          width: 108,
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
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Client Name',
                          style: TextStyle(
                            color: Color(0xff472723),
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.3,
                          child: Center(
                            child: Text(
                              'Lorem ipsum dolor sit amet consectetur. Phasellus morbi sit mattis viverra a.' ,
                              maxLines: 2,
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 8,
                                  fontWeight: FontWeight.w300
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        InkWell(
                          onTap: (){
                            Get.to(()=>NewBookings());
                          },
                          child: Container(
                            width: 105,
                            height: 18,
                            decoration: BoxDecoration(
                              color: Color(0xff472723),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Center(
                              child: Text(
                                'View Booking Details',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 8,
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
            ),
          ],
        ),
      ),
    );
  }
}
