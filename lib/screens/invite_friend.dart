import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/functionalities/share_item.dart';
import 'package:project/screens/share_item.dart';

import '../functionalities/share.dart';
class invite_friend extends StatefulWidget {
  const invite_friend({super.key});

  @override
  State<invite_friend> createState() => _invite_friendState();
}

class _invite_friendState extends State<invite_friend> {
  var controller = Get.put(indexdata());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Share Items",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
        backgroundColor: Get.theme.scaffoldBackgroundColor,
      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 20),child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            color: Get.theme.scaffoldBackgroundColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Container(
                 height: 144,
                 width: double.infinity,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(4),
                     gradient: LinearGradient(
                       colors: [
                         Color(0xffEEE5DB),
                         Color(0xffD1B8A2),
                       ],
                       begin: Alignment.centerLeft,
                       end: Alignment.centerRight,
                     )
                 ),
                 padding: EdgeInsets.only(top: 14, left: 17),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("INVITE A FRIEND",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700)),
                     SizedBox(height: 15,),
                     Container(height: 28,width: 192,child: Text("Get upto 100 ClosetRove Credits for each Successful referral.",softWrap: true,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)),),
                     SizedBox(height: 15,),
                     Container(height: 31,width: 94,decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(4),
                       color: Colors.black,
                     ),
                     padding: EdgeInsets.only(top: 5),
                     child: Text("Start Now",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white),textAlign: TextAlign.center,),
                     )
                   ],
                 ),
               ),
                SizedBox(height: 15,),
                Text("Copy Link to Share", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width:260,
                      height: 37,
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      color: Colors.white,
                      child: Text("linkxyz.com",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)),
                    ),
                    Container(
                      width: 50,
                      height: 37,
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 6),
                      color: Colors.white,
                      child: Icon(Icons.copy,size: 14,),
                    ),
                    SizedBox(height: 15,),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),

          Expanded(child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context,index){
                return ListTile(
                  onTap: (){
                    
                    if(controller.ab.contains(index)){
                      controller.ab.remove(index);
                    }
                    else
                      controller.ab.add(index);
                  },
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/img_2.png'),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name ABC",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400)),
                      SizedBox(height: 3,),
                      Text("+91-70000-00000",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)),
                    ],
                  ),
                  trailing: Obx(
                        ()=>   Container(height: 31,width: 94,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: controller.ab.contains(index)?Colors.black.withOpacity(0.6):Colors.black,
                        ),
                          padding: EdgeInsets.only(top: 5),
                          child: Text(controller.ab.contains(index)?"Invited":"Invite",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white),textAlign: TextAlign.center,),
                        )
                  ),

                );
              }))
        ],
      ),),
    );
  }
}
