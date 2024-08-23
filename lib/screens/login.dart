import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project/partner/partnerhome.dart';
import 'package:project/screens/create_account.dart';
import 'package:project/screens/home.dart';
import 'package:project/screens/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../functionalities/appwrite_data.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  double ww = Get.width;
  double hh = Get.height;
  @override
  Widget build(BuildContext context) {
    var email = TextEditingController();
    var pass = TextEditingController();
    return Material(
      child: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Text("Sign In",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),),
          SizedBox(height: 15,),
          Text("Welcome to Closetrove - your digital wardrobe", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
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
          Align(
            alignment: Alignment.bottomRight,
            child: Text("Forgot Password?", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
          ),
          SizedBox(height: 25,),
          Container(
            width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff472723),
                borderRadius: BorderRadius.circular(4),

              ),
              child: TextButton(onPressed: () async{
                appwritedata ap = appwritedata();
                SharedPreferences ss = await SharedPreferences.getInstance();

                await ap.login(email.text, pass.text).then((value) {
                  ss.setString("userid", value.userId);
                  ss.setString("sessionid", value.$id);

                  print(value.userId);
                  print(value.$id);
                });
                User a = await ap.account!.get();
                print(a.name);

                Get.to(homepage(index: 0,));

                }, child: Text("Login",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700,color: Colors.white),))),
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
          SizedBox(height: 25,),
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
            onTap: (){Get.to(()=>create_account());},
            child: RichText(text: TextSpan(
              text: "Don’t have an account? ",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
              children:  [
                TextSpan(
                  text: "Create Account",
                  style:TextStyle(fontSize: 14, fontWeight: FontWeight.w700,decoration: TextDecoration.underline, color: Colors.black),
                )
              ]
            ),
            ),
          ),

          SizedBox(height: 25,),
          Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff472723),
                borderRadius: BorderRadius.circular(4),

              ),
              child: TextButton(onPressed: (){
                appwritedata ap = appwritedata();
                ap.account!.deleteSession(
                  sessionId: "66982bc93d2a94578e39"
                );

                // Get.to(PartnerHome());

                }, child: Text("Login as Partner",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700,color: Colors.white),))),

      
      
      
        ],
      ),),
    );
  }
}
