import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class edit_profile extends StatefulWidget {
  const edit_profile({super.key});

  @override
  State<edit_profile> createState() => _edit_profileState();
}

class _edit_profileState extends State<edit_profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text("Edit Profile",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
        backgroundColor: Get.theme.scaffoldBackgroundColor,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/img_2.png'),
              radius: 42,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text("Name", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
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
                    decoration: InputDecoration(
                        hintText: "NAME ABC",
                        hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),
                        border:InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 15, bottom: 13,left: 15)
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15,),

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
                    decoration: InputDecoration(
                      hintText: "xyz@gmail.com",
                      hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),
                      border:InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 15, bottom: 13,left: 15)
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text("Mobile", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
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
                    decoration: InputDecoration(
                        hintText: "+91-70000-00000",
                        hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),
                        border:InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 15, bottom: 13,left: 15)
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text("Bio", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
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
                    decoration: InputDecoration(
                        border:InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 15, bottom: 13,left: 15)
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text("City", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
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
                    decoration: InputDecoration(
                        border:InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 15, bottom: 13,left: 15)
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 70,),
            Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff472723),
                  borderRadius: BorderRadius.circular(4),

                ),
                child: TextButton(onPressed: (){Get.back();}, child: Text("Save",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700,color: Colors.white),))
            ),

          ],
        ),
      ),
    );
  }
}
