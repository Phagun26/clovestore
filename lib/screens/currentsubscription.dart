import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project/screens/subscription.dart';

import 'addappointments.dart';


class CurrentSubscription extends StatelessWidget {
  const CurrentSubscription({super.key});

  @override
  Widget build(BuildContext context) {
    double percent=30;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
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
                      'Current Subscription and Usage',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                height: 320,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xffFAFAFA),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Subscription 1',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '21/4/2023',
                              style: TextStyle(
                                color: Color(0xff472723),
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 25,
                    width: 340,
                    decoration: BoxDecoration(
                      color: Color(0xffE9ECF1),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 25,
                          width: 83,
                          decoration: BoxDecoration(
                            color: Color(0xff472723),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Center(
                            child: Text(
                              '$percent% Used',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 5,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Text(
                          '${100-percent}% Used',
                          style: TextStyle(
                            color: Color(0xff472723),
                            fontWeight: FontWeight.w400,
                            fontSize: 5,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                        SizedBox(
                          height: 10,
                        ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "${percent}%",
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'Used of Total.',
                            style: TextStyle(
                              color: Color(0xff515151),
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                          ),
                          ),
                        ],
                      ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Details about the plan subscribed to um dolor sit amet, consectetur adipiscing elit.Torem ipsum dolor sit amet, consectetur adipiscing elit.',
                          style: TextStyle(
                            color: Color(0xff515151),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                          maxLines: 3,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: (){
                            Get.to(()=>AddAppointments());
                          },
                          child: DottedBorder(
                            color:Color(0xff472723),
                            strokeWidth: 2,
                            dashPattern: [5, 3],
                            child: Container(
                              height: 36,
                              width: 320,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color:Color(0xff472723),
                                    ),
                                    Text(
                                      'Add Appointment',
                                      style: TextStyle(
                                        color:Color(0xff472723),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: (){
                            Get.to(()=>Subscriptions());
                          },
                          child: Container(
                            height: 45 ,
                            width: 330,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color(0xff472723).withOpacity(0.075),
                              borderRadius: BorderRadius.circular(4),),
                            child: Center(
                              child: Text(
                                'Renew Subscription',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff472723),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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
