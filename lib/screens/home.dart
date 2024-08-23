import 'dart:io';

import 'package:appwrite/models.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:project/functionalities/appwrite_data.dart';
import 'package:project/functionalities/calendar.dart';
import 'package:project/screens/Notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

import '../functionalities/image.dart';
import 'chooseservices.dart';
import 'closetroveservice.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
   DateTime today = DateTime.now();
   appwritedata ap = appwritedata();
   User? curr;
   Document? doc;
   File? photo;
   void getusr() async{

     SharedPreferences ss = await SharedPreferences.getInstance();
     // curr = await ap.account!.get();
     print(ss.getString("userid"));
     //  doc = await ap.databases!.getDocument(databaseId: ap.databaseid, collectionId: ap.usercollectionid, documentId: "66983ae1ac743a95d4d9");
     // print(doc?.data);
     // photo = await ap.storage?.getFile(bucketId: ap.bucketid, fileId: doc!.data["imageid"]);


   }
   @override
  void initState() {
    // TODO: implement initState
    getusr();
     super.initState();

  }
  @override
  Widget build(BuildContext context) {
     getusr();




    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
              children: [
               // Image.file(photo!),
              //   SizedBox(
              //     child :CachedNetworkImage(
              //       // httpHeaders: {
              //       //   'X-Appwrite-Project': ap.client.config['project']!,
              //       // },
              //       imageUrl: "http://192.168.0.105/v1/storage/buckets/66982c9c001004dfdb52/files/66983ae191def53e3d6a/view",),
              // height: 100,
              //     width: 100,
              //   ),
                CircleAvatar(
                  backgroundImage: NetworkImage("https://cloud.appwrite.io/v1/storage/buckets/${ap.bucketid}/files/6699634441fc62dea562/view?project=66992f2b000f88ffab1c&mode=admin"),
                ),
                SizedBox(width: 10,),
                Text("Welcome  " + (curr?.name??"user"),style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
                Spacer(),
                Row(
                  children: [
                    InkWell(
                      onTap: (){Get.to(()=>calender());},
                      child: Container(
                        padding: EdgeInsets.all(5),
                        height: 29,
                        width: 29,
                        color: Colors.white,
                        child: Image.asset('assets/calender.png',height: 18,width: 18,),
                      ),
                    ),
                    SizedBox(width: 14.4,),
                    InkWell(
                      onTap: (){
                        Get.to(()=>notifications());
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        height: 29,
                        width: 29,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Align(
                            alignment: Alignment.center,
                            child: Image.asset('assets/images/img_13.png',height: 18,width: 18,),
                      ),
                    ),
                      ),
                  ],
                )
              ],
            ),),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 15,horizontal: 20),
              child: InkWell(
                onTap: (){
                  Get.to(()=>ClosetroveServices());
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
                          child: InkWell(
                            onTap: (){
                              Get.to(()=>ChooseServices());
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
              padding:  EdgeInsets.symmetric(vertical: 10),
              child: Container(
                height: 198,
                width: 320,
                decoration: BoxDecoration(
                  color: Color(0xffFAFAFA),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Today’s Outfit',
                      style: TextStyle(
                        fontSize: 16
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            image_temp(width: 75,height: 75,),
                            image_temp(width: 75,height: 75,),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            image_temp(width: 75,height: 75,),
                            image_temp(width: 75,height: 75,),
                          ],
                        ),
                      ],
                    ),
        
                  ],
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Outfit Planner',
                    style: TextStyle(
                      color: Color(0xff111719),
                      fontSize: 16,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xff472723),
                    radius: 14,
                    child: Text(
                        '5',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Color(0xff472723).withOpacity(0.25),
                      thickness: 0.5,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Stack(
                children: [
                  Container(
                    height: 180,
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
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Event Name',
                            style: TextStyle(
                              color: Color(0xff472723),
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 18,
                            width: 108,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xffEEE5DB),
                                    Color(0xffD1B8A2),
                                  ],
                                  begin: Alignment.centerRight,
                                  end: Alignment.centerLeft
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
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              'Event Name',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff472723),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 10,
                    child: image_temp(
                      width: 110,
                      height: 135,
                    ),
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}


class DateTimelinePage extends StatefulWidget {
  @override
  _DateTimelinePageState createState() => _DateTimelinePageState();
}

class _DateTimelinePageState extends State<DateTimelinePage> {
  final DateTime today = DateTime.now();
  DateTime? selectedDate = DateTime.now();
  final ScrollController _scrollController = ScrollController();
  int selectedIndex = 30;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _centerSelectedDate();
    });
  }

  void _centerSelectedDate() {
    double screenWidth = MediaQuery.of(context).size.width;

    // if (selectedDate != null) {
    //   selectedIndex = today.difference(selectedDate!).inDays + 30;
    // }
    double itemWidth = 37;
    double targetOffset = selectedIndex!=30? (selectedIndex * itemWidth) - (screenWidth / 2) + (itemWidth / 2):(30 * itemWidth) - (screenWidth / 2) + (itemWidth / 2);
    _scrollController.animateTo(targetOffset,
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(61, (index) {
            DateTime date = today.subtract(Duration(days: 30 - index));
            bool isToday = date.year == today.year &&
                date.month == today.month &&
                date.day == today.day;
            bool isSelected = selectedDate != null &&
                date.year == selectedDate!.year &&
                date.month == selectedDate!.month &&
                date.day == selectedDate!.day;

            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedDate = date;
                  selectedIndex = index;
                  print(selectedIndex);
                });
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  _centerSelectedDate();
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                margin: EdgeInsets.symmetric(horizontal: 4.0),
                width: isSelected ? 100.0 : 27,
                height: 48,
                decoration: BoxDecoration(
                  color: isToday || isSelected ? Color(0xff472723) : null,
                  gradient: isToday || isSelected ? null : LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xffEEE5DB),
                      Color(0xffD1B8A2),
                    ],
                  ),
                  borderRadius: isSelected ? BorderRadius.circular(7.5) : BorderRadius.circular(75),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (!isToday)
                      Text(
                        isSelected
                            ? DateFormat('EEEE').format(date)
                            : DateFormat('EEEE').format(date).substring(0, 1), // Day of the week or full date
                        style: TextStyle(
                          color: isToday || isSelected ? Colors.white : Color(0xff3F434A),
                          fontSize: 9,
                        ),
                      ),
                    if (isToday && isSelected)
                      Text(
                        'Today', // Day of the month
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                          color: isToday || isSelected ? Colors.white : Color(0xff3F434A),
                        ),
                      ),
                    Text(
                      isSelected
                          ? DateFormat('dd').format(date) + " " + DateFormat('MMMM').format(date).substring(0, 3) + "," + date.year.toString()
                          : DateFormat('dd').format(date), // Day of the month
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: isToday || isSelected ? Colors.white : Color(0xff3F434A),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}


