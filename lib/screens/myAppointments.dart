import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project/screens/completed.dart';
import 'package:project/screens/upcomingpg.dart';

import 'items.dart';

class MyAppointments extends StatefulWidget {
  const MyAppointments({super.key});

  @override
  State<MyAppointments> createState() => _MyAppointmentsState();
}

class _MyAppointmentsState extends State<MyAppointments> {
  var controllerMp=Get.put(selected());
  List<String> mp = ["All","UpComing","Complete"];
  final screens=[
    All(),
    Upcoming(),
    Completed()
  ];
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
                          child: InkWell(
                            onTap: (){
                              Get.back();
                            },
                            child: Container(
                                    width: 35,
                                     height:35,
                                decoration: BoxDecoration(
                                     color: Colors.white,
                                 shape: BoxShape.circle,
                                  border: Border.all(color: Color(0xff472723)),
                                  ),
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
              Container(
                height: 30,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context,index){
                      return Obx(
                            ()=> Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 7.5),
                          child: InkWell(
                            onTap: (){
                              controllerMp.sel.value  = index;
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: controllerMp.sel.value==index?Color(0xff472723):null,
                                gradient: controllerMp.sel.value==index?null: LinearGradient(
                                  colors: [
                                    Color(0xffEEE5DB),
                                    Color(0xffD1B8A2),
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                              ),
                              child: Text(mp[index],  style: TextStyle(fontSize: 11,fontWeight: FontWeight.w400, color: controllerMp.sel.value==index? Colors.white:Colors.black)),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              Obx(()=> screens[controllerMp.sel.value]),
            ],
          ),
        ),
      ),
    );
  }
}


class All extends StatelessWidget {
  const All({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 20),
      child: Container(
        height: 118,
        decoration: BoxDecoration(
          color: Color(0xffFAFAFA),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Wardrobe Stylist',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    height: 25,
                    width: 81,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xffEEE5DB),
                          Color(0xffD1B8A2),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Accepted',
                          style: TextStyle(fontSize: 11,fontWeight: FontWeight.w400, color:  Colors.black),
                      ),
                    ),
                  )
                ],
              ),
              Text(
                '6th April 2024, 4:00 pm',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                  color: Color(0xff000000)
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Paid INR 800.00',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                        color: Color(0xff000000)
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Color(0xff000000).withOpacity(0.15),
                    size: 15,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


class Upcoming extends StatelessWidget {
  const Upcoming({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 20),
      child: InkWell(
        onTap: (){
          Get.to(()=>UpComingPg());
        },
        child: Container(
          height: 118,
          decoration: BoxDecoration(
            color: Color(0xffFAFAFA),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wardrobe Stylist',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      height: 25,
                      width: 81,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffEEE5DB),
                            Color(0xffD1B8A2),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Scheduled',
                          style: TextStyle(fontSize: 11,fontWeight: FontWeight.w400, color:  Colors.black),
                        ),
                      ),
                    )
                  ],
                ),
                Text(
                  '6th April 2024, 4:00 pm',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: Color(0xff000000)
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Details Corem ipsum dolor sit amet, consectetur adipiscing elit.',
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000)
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class Completed extends StatelessWidget {
  const Completed({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 20),
      child: InkWell(
        onTap: (){
          Get.to(()=>CompletedPg());
        },
        child: Container(
          height: 118,
          decoration: BoxDecoration(
            color: Color(0xffFAFAFA),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wardrobe Stylist',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      height: 25,
                      width: 81,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffEEE5DB),
                            Color(0xffD1B8A2),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Completed',
                          style: TextStyle(fontSize: 11,fontWeight: FontWeight.w400, color:  Colors.black),
                        ),
                      ),
                    )
                  ],
                ),
                Text(
                  '6th April 2024, 4:00 pm',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: Color(0xff000000)
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Add a Review   ',
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff646464)
                      ),
                    ),
                    Icon(
                      Icons.edit_outlined,
                      size: 12,
                      color: Color(0xff646464),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
