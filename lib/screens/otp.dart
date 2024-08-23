import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:project/screens/complete_profile.dart';

class otp extends StatefulWidget {
  const otp({super.key});

  @override
  State<otp> createState() => _otpState();
}

class _otpState extends State<otp> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Verify Account",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),),
            SizedBox(height: 15,),
            Text("Please type the verification code sent to", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),),
            Text("example@gmail.com", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),
            SizedBox(height: 15,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 26.88),
              child: Pinput(

                length: 4,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                defaultPinTheme: PinTheme(
                    height: 52.5,
                    width: 52.5,
                    textStyle:
                    TextStyle(fontWeight: FontWeight.w800, fontSize: 20, color: Get.theme.scaffoldBackgroundColor),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.grey.shade300, width: 0.75))),
              ),
            ),
            SizedBox(height: 25,),
            Text("Did't Receive OTP?", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
            Text("Resend Now", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, decoration: TextDecoration.underline),),
            SizedBox(height: 25,),
            Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff472723),
                  borderRadius: BorderRadius.circular(4),

                ),
                child: TextButton(onPressed: (){}, child: Text("Verify",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700,color: Colors.white),))
            ),



          ],
        ),),
    );
  }
}
