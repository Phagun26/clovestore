import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class UpComingPg extends StatelessWidget {
  const UpComingPg({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
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
                  ),
                  Text(
                    'My Appointments',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 20),
                child: Container(
                  height: 195,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffFAFAFA),
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: Color(0xffE0E0E0)
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Wardrobe Stylist',
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          '6th April 2024, 4:00 pm',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                              color: Color(0xff000000)
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 9,
                              child: Icon(
                                Icons.check_circle,
                                color: Color(0xff000000),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Service Confirmed, April 20',
                              style: TextStyle(
                                color: Color(0xff646464),
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 9,top: 1),
                          child: Container(
                            height: 30,
                            width: 2,
                            color: Color(0xff000000),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 20,
                              height:20,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 3,
                                    color: Color(0xff472723)),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Service Scheduled, April 22',
                              style: TextStyle(
                                color: Color(0xff646464),
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(),
                            )
                          ],
                        ),
                        Text(
                          'Appointment ID - 00000012347788',
                          style: TextStyle(
                            color: Color(0xff646464),
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(vertical: 10,horizontal: 10),
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
                            'NEW OFFER',
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
                            'Get upto 50% in in first subscription purchase' ,
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

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
