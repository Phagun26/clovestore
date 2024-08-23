import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../functionalities/search_like_filter_share.dart';
import 'acceptcancel.dart';

class NewBookings extends StatelessWidget {
  const NewBookings({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                    'New Bookings',
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
              padding:  EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Container(
                height: 161,
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
                child: Padding(
                  padding:  EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xffD9D9D9),
                        radius: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Client Name',
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
                            width: MediaQuery.of(context).size.width*0.65,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                                InkWell(
                                  onTap: (){
                                    Get.to(()=>AcceptCancel());
                                  },
                                  child: Container(
                                    width: 115,
                                    height: 24,
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
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
