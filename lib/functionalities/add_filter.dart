import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../screens/item_view_about.dart';

class add_filter extends StatefulWidget {
  const add_filter({super.key});

  @override
  State<add_filter> createState() => _add_filterState();
}

class _add_filterState extends State<add_filter> {

  final tags = ["Spring", "Autumn", "Spring", "Black","Black","Black","Black","Black","Black"];
  final season = ["Autumn", "Spring", "Summer", "Monsoon", "Winter", "All year", "No Season"];
  final up = ["Recently Added","Oldest"];
  final pr = ["Most Expensive","Least Expensive"];
  var controller  = Get.put(data_ts());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        title: Text("Add Filter",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 20),child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(alignment: Alignment.topRight,child: Text("Clear All Filter",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)),),
            SizedBox(height: 25,),
            Text("Sort By",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
            SizedBox(height: 20,),
            Text("Upload Date",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)),
            Wrap(
              direction: Axis.horizontal,
              children: up.map((e){
                return Obx(
                      ()=> Padding(
                    padding:  EdgeInsets.symmetric(horizontal:2, vertical: 5),
                    child: InkWell(
                      onTap: (){
                        if(controller.ac.contains(e))
                          controller.ac.remove(e);
                        else
                          controller.ac.add(e);
                      },
                      child: Container(
                        height: 24,
                        width: 122,
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: controller.ac.contains(e)?Color(0xff472723):null,
                          gradient: controller.ac.contains(e)?null: LinearGradient(
                            colors: [
                              Color(0xffEEE5DB),
                              Color(0xffD1B8A2),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(e,  style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400, color: controller.ac.contains(e)? Colors.white:Colors.black)),
                            Icon(controller.ac.contains(e)?CupertinoIcons.xmark:CupertinoIcons.plus, size: 10,color: controller.ac.contains(e)?Colors.white:Colors.black,)
        
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 20,),
            Text("Price",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)),
            Wrap(
              direction: Axis.horizontal,
              children: pr.map((e){
                return Obx(
                      ()=> Padding(
                    padding:  EdgeInsets.symmetric(horizontal:2, vertical: 5),
                    child: InkWell(
                      onTap: (){
                        if(controller.ad.contains(e))
                          controller.ad.remove(e);
                        else
                          controller.ad.add(e);
                      },
                      child: Container(
                        height: 24,
                        width: 122,
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: controller.ad.contains(e)?Color(0xff472723):null,
                          gradient: controller.ad.contains(e)?null: LinearGradient(
                            colors: [
                              Color(0xffEEE5DB),
                              Color(0xffD1B8A2),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(e,  style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400, color: controller.ad.contains(e)? Colors.white:Colors.black)),
                            Icon(controller.ad.contains(e)?CupertinoIcons.xmark:CupertinoIcons.plus, size: 10,color: controller.ad.contains(e)?Colors.white:Colors.black,)
        
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 20,),
            Divider(color: Colors.black,thickness: 0.5,),
            SizedBox(height: 25,),
            Text("Category",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
            Container(
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Top"
                ),
              ),
            ),
            SizedBox(height: 25,),
            Text("Size",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
            Container(
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "US-6"
                ),
              ),
            ),
            SizedBox(height: 25,),
            Text("Brand",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
            Container(
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Select Brand"
                ),
              ),
            ),
        
            SizedBox(height: 25,),
            Text("Tags",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
            Wrap(
              direction: Axis.horizontal,
              children: tags.map((e){
                return Obx(
                      ()=> Padding(
                    padding:  EdgeInsets.symmetric(horizontal:2, vertical: 5),
                    child: InkWell(
                      onTap: (){
                        if(controller.aa.contains(e))
                          controller.aa.remove(e);
                        else
                          controller.aa.add(e);
                      },
                      child: Container(
                        height: 24,
                        width: 104,
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: controller.aa.contains(e)?Color(0xff472723):null,
                          gradient: controller.aa.contains(e)?null: LinearGradient(
                            colors: [
                              Color(0xffEEE5DB),
                              Color(0xffD1B8A2),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(e,  style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400, color: controller.aa.contains(e)? Colors.white:Colors.black)),
                            Icon(controller.aa.contains(e)?CupertinoIcons.xmark:CupertinoIcons.plus, size: 10,color: controller.aa.contains(e)?Colors.white:Colors.black,)
        
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 25,),
            Text("Season",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
            Wrap(
              direction: Axis.horizontal,
              children: season.map((e){
                return Obx(
                      ()=> Padding(
                    padding:  EdgeInsets.symmetric(horizontal:2, vertical: 5),
                    child: InkWell(
                      onTap: (){
                        if(controller.ab.contains(e))
                          controller.ab.remove(e);
                        else
                          controller.ab.add(e);
                      },
                      child: Container(
                        height: 24,
                        width: 104,
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: controller.ab.contains(e)?Color(0xff472723):null,
                          gradient: controller.ab.contains(e)?null: LinearGradient(
                            colors: [
                              Color(0xffEEE5DB),
                              Color(0xffD1B8A2),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(e,  style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400, color: controller.ab.contains(e)? Colors.white:Colors.black)),
                            Icon(controller.ab.contains(e)?CupertinoIcons.xmark:CupertinoIcons.plus, size: 10,color: controller.ab.contains(e)?Colors.white:Colors.black,)
        
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
        
          ],
        ),
      ),),
    );
  }
}
