import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:intl/intl.dart';
import 'package:project/functionalities/share_item.dart';

class calender extends StatefulWidget {
  const calender({super.key});

  @override
  State<calender> createState() => _calenderState();
}
class calendar_data extends GetxController{
  RxString date = "".obs;

}
class _calenderState extends State<calender> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(calendar_data());
    return Scaffold(

      appBar: AppBar(
        title: Text("Your Outfit Planner", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 13.6,bottom:  10.2, top:  10.2, right:  20.4),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Select Date", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700, color: Color(0xff49454F))),
                      SizedBox(height: 30.6),
                      Obx(()=> Text(controller.date.value, style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700)))
                    ],
                  ),
                  CalendarDatePicker2(config: CalendarDatePicker2Config(
                    selectedDayHighlightColor: Colors.black,

                  ), value: [],
                  onValueChanged: (List<DateTime?> aa){
                   controller.date.value =  DateFormat.MMMEd().format(aa[0]!);

                  },
                  ),

                ],
              ),
            ),
            SizedBox(height: 15,),
            InkWell(
              onTap: (){Get.to(()=>share_item());},
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 6),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 15,
                      child: Icon(CupertinoIcons.plus, color: Colors.white,),
                    ),
                    SizedBox(width: 13,),
                    Text("Add Outfit", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
