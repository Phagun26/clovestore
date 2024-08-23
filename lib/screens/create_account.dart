import 'package:appwrite/appwrite.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project/functionalities/appwrite_data.dart';
import 'package:project/screens/complete_profile.dart';

import 'login.dart';
import 'otp.dart';


class create_account extends StatefulWidget {
  const create_account({super.key});

  @override
  State<create_account> createState() => _create_accountState();
}

class _create_accountState extends State<create_account> {
  var email = TextEditingController();
  var pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Create Account",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),),
            SizedBox(height: 25,),
            Text("Welcome to Closetrove - your digital wardrobe", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
            SizedBox(height: 25,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text("Email*", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
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
                  child: TextField(
                    controller: email,
                  ),
                )
              ],
            ),
            SizedBox(height: 25,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Password*", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
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
                  child: TextField(
                    controller: pass,
                    decoration: InputDecoration(
                        suffixIcon: Icon(CupertinoIcons.eye)
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 25,),
            Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff472723),
                  borderRadius: BorderRadius.circular(4),

                ),
                child: TextButton(onPressed: (){

                  Get.to(()=>complete_profile(email: email.text,pass: pass.text,));
                  }, child: Text("Create Account",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700,color: Colors.white),))
            ),
            SizedBox(height: 25,),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                      thickness: 0.5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text("Or Sign In with", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                      thickness: 0.5,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 52.5,
                  width: 52.5,
                  color: Colors.white,
                  child: Image(
                    height: 18,
                    width: 18,
                    image: AssetImage('assets/images/img.png'),
                  ),
                ),
                SizedBox(width: 18.75 ,),
                Container(
                  height: 52.5,
                  width: 52.5,
                  color: Colors.white,
                  child: Image(
                    height: 18,
                    width: 18,
                    image: AssetImage('assets/images/img_1.png'),
                  ),
                )
              ],
            ),
            SizedBox(height: 25,),

            InkWell(
              onTap: (){



                Get.offAll(()=>login());},
              child: RichText(text: TextSpan(
                  text: "Already have an account? ",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
                  children:  [
                    TextSpan(
                      text: "Sign In",
                      style:TextStyle(fontSize: 14, fontWeight: FontWeight.w700,decoration: TextDecoration.underline, color: Colors.black),
                    )
                  ]
              ),
              ),
            )





          ],
        ),),
    );
  }
}
