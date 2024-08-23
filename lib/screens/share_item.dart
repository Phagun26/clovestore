import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project/screens/item_view_styling.dart';

import '../functionalities/share.dart';

class share_item_contact extends StatefulWidget {
  const share_item_contact({super.key});

  @override
  State<share_item_contact> createState() => _share_item_contactState();
}

class _share_item_contactState extends State<share_item_contact> {
  var controller = Get.put(indexdata());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:  AppBar(
        title: Text("Share",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
        backgroundColor: Get.theme.scaffoldBackgroundColor,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                  color: Get.theme.scaffoldBackgroundColor,
                  border:Border.all(
                      width: 1,
                      color: Colors.grey
                  )
              ),

              child: TextField(
                decoration: InputDecoration(
                  hintStyle:TextStyle(fontSize: 12,fontWeight: FontWeight.w400),
                  hintText: "Search Item.",
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            Expanded(child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context,index){
                  return ListTile(
                    onTap: (){
                      if(controller.aa.contains(index)){
                        controller.aa.remove(index);
                      }
                      else
                        controller.aa.add(index);
                    },
                    leading: imagee(height: 40,width: 40,),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Item 1",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400)),

                      ],
                    ),
                    trailing: Obx(
                          ()=>Container(
                        decoration: BoxDecoration(
                            color: controller.aa.contains(index)?Colors.black:Colors.white  ,
                            border: Border.all(
                                color: Colors.black,
                                width: 0.75
                            )
                        ),
                        height: 18,
                        width: 18,
                        child: controller.aa.contains(index)?Icon(Icons.check,size: 10,color: Colors.white,):null,
                      ),
                    ),

                  );
                })),
          ],
        ),
      ),
    );
  }
}
