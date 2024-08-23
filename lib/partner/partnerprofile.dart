import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/partner/partnerhome.dart';

import '../screens/edit_profile.dart';
import '../screens/me.dart';
import '../screens/shared_wardrobe.dart';

class PartnerProfile extends StatelessWidget {
  const PartnerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(onPressed: (){
                    Get.to(()=>PartnerHome());
                  }, icon: Icon(Icons.arrow_back,color: Colors.black,),),
                ),
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
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                color: Color(0xffFAFAFA),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                child: Column(
                  children: [
                    CustomIconText(icon: Icons.edit_note_outlined, text: 'Edit Profile', onTap: () {  },),
                    SizedBox(
                      height: 10,
                    ),
                    CustomIconText(icon: Icons.calendar_month_outlined, text: 'Bookings', onTap: () {  },),
                    SizedBox(
                      height: 10,
                    ),
                    CustomIconText(icon: Icons.credit_score_rounded, text: 'Current Subscription', onTap: () {  },),
                    SizedBox(
                      height: 10,
                    ),
                    CustomIconText(icon: Icons.notifications, text: 'Notifications', onTap: () {  },),
                    SizedBox(
                      height: 10,
                    ),
                    CustomIconText(icon: Icons.help_outline, text: 'Help  ', onTap: () {  },),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.logout,
                          size: 30,
                          color: Color(0xff472723),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Log out",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff472723),
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Color(0xff000000).withOpacity(0.15),
                          size: 18,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
