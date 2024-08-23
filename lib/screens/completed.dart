import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project/functionalities/editreview.dart';


class CompletedPg extends StatelessWidget {
  const CompletedPg({super.key});

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
                    'Appointment Details',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
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
                              'Service Confirmed, April 20,2024',
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
                              'Stylist Visit, April 22, 2024',
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
                padding:  EdgeInsets.symmetric(horizontal: 10,vertical: 5),
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
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xffFAFAFA),
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                          color: Color(0xffE0E0E0)
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Your Review',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                Get.to(()=>EditReview());
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.edit_outlined,
                                    size: 12,
                                    color: Color(0xff000000),
                                  ),
                                  Text(
                                    'Edit Review',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff000000)
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 20.0, // Set a fixed height for the ListView
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5, // Set the number of stars to 5
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 2.0), // Add some padding between stars
                                child: Icon(
                                  Icons.star,
                                  size: 20, // Set the star size as needed
                                  color: Color(0xff472723),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Your Review Here text lorem ipsum',
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
