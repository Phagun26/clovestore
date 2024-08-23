import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project/partner/start_booking.dart';

import '../functionalities/search_like_filter_share.dart';

class TodaysBookings extends StatelessWidget {
  const TodaysBookings({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
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
                    'Today’s Bookings',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 15,horizontal: 20),
              child: slfs(),
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
                    'Booking details',
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
                                  Get.to(()=>start_booking());
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
            SizedBox(
              height: 15,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 78,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xffE7E7E7),
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
