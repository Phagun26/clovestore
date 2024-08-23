import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/partner/add_item_confirm.dart';

import '../screens/item_view_about.dart';

class add_item_partner extends StatefulWidget {
  const add_item_partner({super.key});

  @override
  State<add_item_partner> createState() => _add_item_partnerState();
}

class _add_item_partnerState extends State<add_item_partner> {
  final tags = ["Spring", "Autumn", "Spring", "Black","Black","Black","Black","Black","Black"];
  final season = ["Autumn", "Spring", "Summer", "Monsoon", "Winter", "All year", "No Season"];
  var controller  = Get.put(data_ts());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 320,
          child: FloatingActionButton.extended(
            label: Text("Save Changes",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.white)),


            backgroundColor: Colors.black,

            onPressed: (){
              Get.to(()=>add_item_confirm());
            },

          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        title: Text("Add Item",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image(image: AssetImage('assets/images/img_5.png'), height: 205,width: 128,),),
            Padding(padding: EdgeInsets.symmetric(horizontal: 20),child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15,),
                Text("Item ID",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
                Container(
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Jhg1256"
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Text("Name",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
                Container(
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Item Name"
                    ),
                  ),
                ),
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
                Text("Price",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
                Container(
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "INR"
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                // Text("Colour",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
                //
                // SizedBox(height: 25,),
                Text("Size",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
                Container(
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "US-6"
                    ),
                  ),
                ),
                SizedBox(height: 90,),

              ],),),


          ],
        ),
      ),
    );
  }
}
