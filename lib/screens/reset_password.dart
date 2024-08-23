import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';



class reset_password extends StatefulWidget {
  const reset_password({super.key});

  @override
  State<reset_password> createState() => _reset_passwordState();
}

class _reset_passwordState extends State<reset_password> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Reset Password",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),),
            SizedBox(height: 15,),
            Text("New Password should be different from ", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
            Text("previous one.", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
            SizedBox(height: 25,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text("Email", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                SizedBox(height: 6,),
                Container(
                  height: 41,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 1,

                      )
                  ),
                  child: TextField(),
                )
              ],
            ),
            SizedBox(height: 25,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text("Password", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                SizedBox(height: 6,),
                Container(
                  height: 41,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 1,

                      )
                  ),
                  child: TextField( decoration: InputDecoration(
                      suffixIcon: Icon(CupertinoIcons.eye)),
                )
                ),
              ],
            ),
            SizedBox(height: 25,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text("Confirm Password  ", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                SizedBox(height: 6,),
                Container(
                  height: 41,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 1,

                      )
                  ),
                  child: TextField( decoration: InputDecoration(
                      suffixIcon: Icon(CupertinoIcons.eye)),
                ))
              ],
            ),
            // Text("Did't Receive OTP?", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
            // Text("Resend Now", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, decoration: TextDecoration.underline),),
            SizedBox(height: 25,),
            Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff472723),
                  borderRadius: BorderRadius.circular(4),

                ),
                child: TextButton(onPressed: (){}, child: Text("Reset Password",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700,color: Colors.white),))
            ),



          ],
        ),),
    );
  }
}
