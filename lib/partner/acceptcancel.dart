import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/partner/partnerhome.dart';

class AcceptCancel extends StatelessWidget {
  const AcceptCancel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xff472723),Color(0xff110302)]
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/img_4.png'),
                    radius: 32,
                  ),
                  SizedBox(height: 10,),
                  Text("Name Lorem", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700, color: Colors.white)),
                  SizedBox(height:4,),
                  Text("@userxyz",  style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500, color: Colors.white)),
                  SizedBox(height: 20,),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 20,horizontal: 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xffD9D9D9),
                    backgroundImage: AssetImage(''),
                    radius: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Heading',
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
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 20,horizontal: 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/splash_img.png',
                    height: 23,
                    width: 43,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Requirement',
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
                            'Lorem ipsum dolor sit amet consectetur. Sed sit feugiat pulvinar phasellus. Massa praesent porta nam cum fermentum sem sed mollis. ' ,
                            maxLines: 4,
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 14,
                                fontWeight: FontWeight.w300
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 20,horizontal: 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/schedule.png',
                    height: 23,
                    width: 43,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Schedule',
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
                            'Lorem ipsum dolor sit amet consectetur. Sed sit feugiat pulvinar phasellus. Massa praesent porta nam cum fermentum sem sed mollis. ' ,
                            maxLines: 4,
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 14,
                                fontWeight: FontWeight.w300
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 20,horizontal: 25),
              child: Container(
                width: MediaQuery.of(context).size.width*0.85,
                child: Center(
                  child: Text(
                    'Note: Sed sit feugiat pulvinar phasellus.Massa porta. Dignissim ut lectus ullamcorper scelerisque vulputate justo etiam. ullamcorper scelerisque vulputate.' ,
                    maxLines: 3,
                    style: TextStyle(
                        color: Color(0xff472723),
                        fontSize: 12,
                        fontWeight: FontWeight.w300
                    ),
                  ),
                ),
              ),
            ),
        
            Container(
              width: MediaQuery.of(context).size.width*0.85,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 44,
                    width: 146,
                    decoration: BoxDecoration(
                      color: Color(0xffDBC7B5),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                          color: Color(0xff0A0A0F),
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(()=>PartnerHome());
                    },
                    child: Container(
                      height: 44,
                      width: 146,
                      decoration: BoxDecoration(
                        color: Color(0xff472723),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Text(
                          'Accept',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
