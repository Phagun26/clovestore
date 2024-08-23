import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/screens/person_wardrobe.dart';
class shared_wardrobe extends StatefulWidget {
  const shared_wardrobe({super.key});

  @override
  State<shared_wardrobe> createState() => _shared_wardrobeState();
}

class _shared_wardrobeState extends State<shared_wardrobe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Wardrobe",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
        backgroundColor: Get.theme.scaffoldBackgroundColor,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){Get.to(()=>person_wardrobe());},
                  child: Container(
                    width: 150,
                    height: 130,
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(image: AssetImage('assets/images/img_6.png'), height: 55,width: 50,),
                        SizedBox(height: 10,),
                        Text("Person a",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700))
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 25,),
                Container(
                  width: 150,
                  height: 130,
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('assets/images/img_6.png'), height: 55,width: 50,),
                      SizedBox(height: 10,),
                      Text("Person a",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700))
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){Get.to(()=>person_wardrobe());},
                  child: Container(
                    width: 150,
                    height: 130,
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(image: AssetImage('assets/images/img_6.png'), height: 55,width: 50,),
                        SizedBox(height: 10,),
                        Text("Person a",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700))
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 25,),
                Container(
                  width: 150,
                  height: 130,
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('assets/images/img_6.png'), height: 55,width: 50,),
                      SizedBox(height: 10,),
                      Text("Person a",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700))
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){Get.to(()=>person_wardrobe());},
                  child: Container(
                    width: 150,
                    height: 130,
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(image: AssetImage('assets/images/img_6.png'), height: 55,width: 50,),
                        SizedBox(height: 10,),
                        Text("Person a",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700))
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 25,),
                Container(
                  width: 150,
                  height: 130,
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('assets/images/img_6.png'), height: 55,width: 50,),
                      SizedBox(height: 10,),
                      Text("Person a",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700))
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 25,),

          ],
        ),
      ),
    );
  }
}
