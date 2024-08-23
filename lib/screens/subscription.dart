import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project/screens/addaddress.dart';


class Subscriptions extends StatelessWidget {
  const Subscriptions({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController pincontroller=TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
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
                    Text(
                      'Subscriptions',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height*0.85,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10),
                          )
                      ),
                      child: Image.asset(
                        'assets/closet_img.jpeg',
                        fit: BoxFit.fill,
                      )
                  ),
                  Positioned(
                    bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.all( 10),
                      child: Container(
                        height: 450,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xffF2F2F2),
                          borderRadius: BorderRadius.circular(4),
                          boxShadow:[ BoxShadow(
                            color: Color(0xff000000).withOpacity(0.04),
                            blurRadius: 16,
                            offset: Offset(0,6),
                            spreadRadius: 0
                          )]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Offer Name ',
                                        style: TextStyle(
                                          color: Color(0xff101010),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                                      Text(
                                        'Chat with stylist',
                                        style: TextStyle(
                                            color: Color(0xff3F434A),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Text(
                                      'Rs. 1999.00',
                                      style: TextStyle(
                                          color: Color(0xff101010),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Description',
                                style: TextStyle(
                                    color: Color(0xff101010),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Jorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos',
                                style: TextStyle(
                                    color: Color(0xff3F434A),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400
                                ),
                                maxLines: 4,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Benefits',
                                style: TextStyle(
                                    color: Color(0xff101010),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Jorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos',
                                style: TextStyle(
                                    color: Color(0xff3F434A),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400
                                ),
                                maxLines: 4,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Check for your Pin Code',
                                style: TextStyle(
                                    color: Color(0xff3F434A),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: 32,
                                    width: MediaQuery.of(context).size.width*0.58,
                                    decoration: BoxDecoration(
                                      color: Color(0xffFAFAFA),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: TextField(
                                      controller: pincontroller,
                                      decoration: InputDecoration.collapsed(hintText: ''),
                                    ),
                                  ),
                                  Container(
                                    height: 32,
                                    width: MediaQuery.of(context).size.width*0.3,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          Color(0xffEEE5DB),
                                          Color(0xffD1B8A2),
                                        ]
                                      ),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Check',
                                        style: TextStyle(
                                            color: Color(0xff3F434A),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Spacer(),
                              InkWell(
                                onTap: (){
                                  Get.to(()=>AddAddress());
                                },
                                child: Container(
                                  height: 45 ,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Color(0xff472723),
                                    borderRadius: BorderRadius.circular(4),),
                                  child: Center(
                                    child: Text(
                                      'Next',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
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
