import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/screens/Notifications.dart';
import 'package:project/screens/cscreditpoints.dart';
import 'package:project/screens/currentsubscription.dart';
import 'package:project/screens/edit_profile.dart';
import 'package:project/screens/invite_friend.dart';
import 'package:project/screens/myinbox.dart';
import 'package:project/screens/myinboxpg.dart';
import 'package:project/screens/shared_wardrobe.dart';

import 'myAppointments.dart';

class Me extends StatelessWidget {
  const Me({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
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
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: InkWell(
                    onTap: (){
                      Get.to(()=>CsCreditPoints());
                    },
                    child: Container(
                      height: 17,
                      width: 51,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.25),
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            radius: 5,
                            backgroundImage: AssetImage('Assets/points_img.png'),
                          ),
                          // Image.asset("Assets/points_img.png",height: 1,width: 2,),
                          Text(
                            '700 Points',
                            style: TextStyle(
                                fontSize: 7,
                                color: Color(0xffEEE5DB),
                                fontWeight: FontWeight.w400
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              child: Container(
                height: 500,
                decoration: BoxDecoration(
                  color: Color(0xffFAFAFA),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                  child: Column(
                    children: [
                      CustomIconText(icon: Icons.edit_note_outlined, text: 'Edit Profile', onTap: () { Get.to(()=>edit_profile()); },),
                      SizedBox(
                        height: 10,
                      ),
                      CustomIconText(icon: Icons.folder_shared, text: 'Share Wadrobe', onTap: () {  Get.to(shared_wardrobe());},),
                      SizedBox(
                        height: 10,
                      ),
                      CustomIconText(icon: Icons.calendar_month_outlined, text: 'My Appointments', onTap: () { Get.to(()=>MyAppointments()); },),
                      SizedBox(
                        height: 10,
                      ),
                      CustomIconText(icon: Icons.folder_shared, text: 'My Inbox', onTap: () { Get.to(()=>MyInboxPage()); },),
                      SizedBox(
                        height: 10,
                      ),
                      CustomIconText(icon: Icons.credit_score_rounded, text: 'Current Subscription', onTap: () {  Get.to(()=>CurrentSubscription());},),
                      SizedBox(
                        height: 10,
                      ),
                      CustomIconText(icon: Icons.notifications, text: 'Notifications', onTap: () { Get.to(()=>notifications()); },),
                      SizedBox(
                        height: 10,
                      ),
                      CustomIconText(icon: Icons.supervisor_account, text: 'Invite Friends', onTap: () { Get.to(()=>invite_friend()); },),
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
      ),
    );
  }
}


class CustomIconText extends StatelessWidget {
  IconData icon;
  String text;
  VoidCallback  onTap;
   CustomIconText({super.key,required this.icon,required this.text,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 25,
                color: Color(0xff472723),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                text,
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
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Divider(
                  color: Color(0xff000000).withOpacity(0.15),
                  thickness: 0.5,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
