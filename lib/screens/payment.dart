import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../functionalities/paysuccess.dart';
import 'addcard.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool isChecked = false;
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
              SizedBox(
                height: 15,
              ),
              Text(
                'Use Closetrove Credit Points',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                   color: Color(0xff472723),
                  ),
                  borderRadius: BorderRadius.circular(4),
                  color: Color(0xffFAFAFA).withOpacity(0),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Checkbox(
                      activeColor:Color(0xff472723),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '700',
                          style: TextStyle(
                            color: Color(0xff472723),
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Use Credit Points to Avail Subscription at Discounted Proce',
                          style: TextStyle(
                            color: Color(0xff3F434A),
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Credit & Debit Cards',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: (){
                  Get.to(
                      ()=>AddCard(),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Color(0xff472723),
                    ),
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xffFAFAFA).withOpacity(0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Add Card',
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'More Payment Options',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Color(0xff472723),
                  ),
                  borderRadius: BorderRadius.circular(4),
                  color: Color(0xffFAFAFA).withOpacity(0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/calender.png',
                        height: 15,
                        width: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Google pay',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              InkWell(
                onTap: (){
                  Get.to(()=>PaymentSuccess());
                },
                child: Container(
                  height: 45 ,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xff472723),
                    borderRadius: BorderRadius.circular(4),),
                  child: Center(
                    child: Text(
                      'Continue to Book',
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
