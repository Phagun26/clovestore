import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project/screens/addaddress.dart';
import 'package:project/screens/me.dart';
import 'package:project/screens/myAppointments.dart';

class AddAppointments extends StatelessWidget {
  const AddAppointments({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        'Add Appointment',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Appointment Type',
                  style: TextStyle(
                    color: Color(0xff111719),
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 37,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xffFAFAFA),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Select Dropdown',
                          style: TextStyle(
                            color: Color(0xff000000).withOpacity(0.75),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 10,
                          color: Color(0xff444444),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Text(
                                'Select date',
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                ),
                              ),
                              Spacer(),
                              Text(
                                'August 2023',
                                style: TextStyle(
                                  color: Color(0xff49454F),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                ),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                size: 10,
                                color: Color(0xff49454F),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              'Mon,Aug 17',
                              style: TextStyle(
                                color: Color(0xff1D1B20),
                                fontWeight: FontWeight.w700,
                                fontSize: 28,
                              ),
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            Icon(
                              Icons.arrow_back_ios_new,
                              size: 17,
                              color: Color(0xff444444),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 17,
                              color: Color(0xff444444),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 480,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DottedBorder(
                          color:Color(0xff472723),
                          strokeWidth: 2,
                          dashPattern: [5, 3],
                          child: Container(
                            height: 36,
                            width: 320,
                            child: Center(
                              child: Text(
                                '9:00AM',
                                style: TextStyle(
                                  color:Color(0xff472723),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: (){
                    Get.to(()=>MyAppointments());
                  },
                  child: Container(
                    height: 45 ,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xff472723),
                      borderRadius: BorderRadius.circular(4),),
                    child: Center(
                      child: Text(
                        'Confirm Appointment',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
