import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project/screens/closetroveservice.dart';
import 'package:project/screens/me.dart';
import 'package:project/screens/myAppointments.dart';

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
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
                      'Payment',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/tick.png',
                      height: 45,
                      width: 45,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Payment Successful !',
                      style: TextStyle(
                        color: Color(0xff472723),
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Thank You for the purchase !',
                      style: TextStyle(
                        color: Color(0xff3F434A),
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
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
                      'View  order',
                      style: TextStyle(
                          fontSize: 14,
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
    );
  }
}
