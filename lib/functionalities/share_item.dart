import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:intl/intl.dart';
import 'package:project/functionalities/image.dart';
import 'package:time_picker_spinner_pop_up/time_picker_spinner_pop_up.dart';

class share_item extends StatefulWidget {
  const share_item({super.key});

  @override
  State<share_item> createState() => _share_itemState();
}

class _share_itemState extends State<share_item> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 320,
          child: FloatingActionButton.extended(
              label: Text("Add Events",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.white)),


              backgroundColor: Colors.black,

              onPressed: (){Get.back();},

            ),
        ),
      ),

      appBar: AppBar(
        title: Text("Event Planner", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Text("Event Name", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
                SizedBox(height: 10,),
                Container(
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "All Items",
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Text("Date", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
                SizedBox(height: 10,),
                Container(
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "5/6/2024",
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Text("Time", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
                SizedBox(height: 10,),
                Container(
                  color: Colors.white,
                  child: TimePickerSpinnerPopUp(
                    initTime: DateTime.now(),

                  )
                ),
                SizedBox(height: 15,),
                Text("Event Type", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
                SizedBox(height: 10,),
                Container(
                  color: Colors.white,
                  child: TextField(
        
                  ),
                ),
                SizedBox(height: 15,),
              ],
            ),),
            Container(
        
              width: double.infinity,
              color: Colors.white,
              child: Padding(padding: EdgeInsets.symmetric(horizontal: 20),child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Choose Outfits", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
                  SizedBox(height: 13,),
                  Row(
                    children: [
                      Container(
                        width: 250,
                        height: 35,
                        padding: EdgeInsets.symmetric(horizontal: 10,),
                        decoration: BoxDecoration(
                          color: Get.theme.scaffoldBackgroundColor,
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(width: 1, color: Colors.grey.shade300)
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search,size: 15,),
                            hintText: "Search",
                            hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      SizedBox(width: 12,),
                      Container(
                        width: 35,
                        height: 35,
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: Get.theme.scaffoldBackgroundColor,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(width: 1, color: Colors.grey.shade300)
                        ),
                        child: Icon(CupertinoIcons.heart_fill,size: 17,),
                      ),
                      SizedBox(width: 12,),
                      Container(
                        width: 35,
                        height: 35,
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: Get.theme.scaffoldBackgroundColor,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(width: 1, color: Colors.grey.shade300)
                        ),
                        child: Icon(CupertinoIcons.slider_horizontal_3,size: 17,),
                      )
                    ],
                  ),
                  SizedBox(height: 13,),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey.shade300)
                        ),

        
                          child: Column(
                           children: [
                          image_temp(height: 100,width: 100,),
                          Text("Item 1",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700))
                        ],
                      )),
                      SizedBox(width: 13,),
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey.shade300)
                          ),


                          child: Column(
                            children: [
                              image_temp(height: 100,width: 100,),
                              Text("Item 1",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700))
                            ],
                          )),
                      SizedBox(width: 13,),
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey.shade300)
                          ),


                          child: Column(
                            children: [
                              image_temp(height: 100,width: 100,),
                              Text("Item 1",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700))
                            ],
                          )),
                      SizedBox(width: 13,),
                    ],
                  ),
                  SizedBox(height: 13,),
                  Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey.shade300)
                          ),


                          child: Column(
                            children: [
                              image_temp(height: 100,width: 100,),
                              Text("Item 1",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700))
                            ],
                          )),
                      SizedBox(width: 13,),
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey.shade300)
                          ),


                          child: Column(
                            children: [
                              image_temp(height: 100,width: 100,),
                              Text("Item 1",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700))
                            ],
                          )),
                      SizedBox(width: 13,),
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey.shade300)
                          ),


                          child: Column(
                            children: [
                              image_temp(height: 100,width: 100,),
                              Text("Item 1",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700))
                            ],
                          )),
                      SizedBox(width: 13,),
                    ],
                  ),
                  SizedBox(height: 13,),
                  Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey.shade300)
                          ),


                          child: Column(
                            children: [
                              image_temp(height: 100,width: 100,),
                              Text("Item 1",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700))
                            ],
                          )),
                      SizedBox(width: 13,),
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey.shade300)
                          ),


                          child: Column(
                            children: [
                              image_temp(height: 100,width: 100,),
                              Text("Item 1",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700))
                            ],
                          )),
                      SizedBox(width: 13,),
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey.shade300)
                          ),


                          child: Column(
                            children: [
                              image_temp(height: 100,width: 100,),
                              Text("Item 1",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700))
                            ],
                          )),
                      SizedBox(width: 13,),
                    ],
                  )
                ],
        
              ),),
            )
          ],
        ),
      ),
    );
  }
}
