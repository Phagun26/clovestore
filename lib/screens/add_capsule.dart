import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/screens/select_clothes.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../functionalities/appwrite_data.dart';
import 'items.dart';


class add_capsule extends StatefulWidget {
  String name;
   add_capsule({super.key, required this.name});

  @override
  State<add_capsule> createState() => _add_capsuleState();
}
class capsul_data extends GetxController{
  RxList<Document> it = <Document>[].obs;
  RxList<Document> ot = <Document>[].obs;
  RxList<Document> sel = <Document>[].obs;
  RxList<Document> temp = <Document>[].obs;
  RxList<Document> out = <Document>[].obs;


}
class _add_capsuleState extends State<add_capsule> {
  appwritedata ap = appwritedata();
  var controller = Get.put(selected());
  var con = Get.put(capsul_data());

  getdata()async{
    con.it.clear();
    con.ot.clear();
    SharedPreferences ss= await SharedPreferences.getInstance();
    DocumentList aa = await ap.databases!.listDocuments(databaseId: ap.databaseid, collectionId: ap.capsuleid,queries: [
      Query.equal('name', widget.name)
    ]);
    controller.ad.value= aa.documents;
    Document og = controller.ad.value[0];
    for (var e in og.data["items_list"]){
      Document at = await ap.databases!.getDocument(databaseId: ap.databaseid, collectionId: ap.itemcollectionId, documentId: e);
      con.it.add(at);
    }

    for (var e in og.data["outfit_list"]){
      Document at = await ap.databases!.getDocument(databaseId: ap.databaseid, collectionId: ap.outfitid,documentId: e);
      con.out.value.add(at);
      Document itemm = await ap.databases!.getDocument(databaseId: ap.databaseid, collectionId: ap.itemcollectionId,documentId: at.data["top_id"]);
      print(itemm);
      con.ot.add(itemm);
    }
    print(" lp ${con.ot}");
    print(" lllp ${con.it}");
  }
  @override
  Widget build(BuildContext context) {
    getdata();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name, style: TextStyle(fontWeight:FontWeight.bold,fontSize: 14),),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Column(
            children: [
              Obx(
                ()=> Column(

                  children:  con.it.value.map((e) {
                    print(e.data["pic_id"]);
                    return Padding(
                      padding: const EdgeInsets.symmetric( horizontal: 10, vertical:10 ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 150,
                              width: 150,
                              color: Colors.white,
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Align(
                                  //   alignment: Alignment.topRight,
                                  //   child: Icon(CupertinoIcons.heart_fill),
                                  // ),

                                  Image(image: NetworkImage("https://cloud.appwrite.io/v1/storage/buckets/${ap.itembucketid}/files/${e.data["pic_id"]}/view?project=66992f2b000f88ffab1c&mode=admin"),height: 70,width: 70,),

                                ],
                              )),
                          Text( e.data["item_name"]?? "Item", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700))
                        ],
                      ),
                    );
                  }).toList()
                ),
              ),
              InkWell(
                onTap: (){
                  Get.to(()=>select_clothes(cap: controller.ad.value[0], a: true));
                },
                child: Container(
                  width: 157,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black,

                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(CupertinoIcons.plus,color: Colors.white,size: 10,),
                      Text(" Items",style: TextStyle(color: Colors.white),),
                    ],
                  )
                ),
              ),
            ],
          ),
            Column(
              children: [
                Obx(
                      ()=> Column(

                    children:  con.ot.value.map((e) {
                      print(e.data["pic_id"]);
                      return Padding(
                        padding: const EdgeInsets.symmetric( horizontal: 10, vertical:10 ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 150,
                                width: 150,
                                color: Colors.white,
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // Align(
                                    //   alignment: Alignment.topRight,
                                    //   child: Icon(CupertinoIcons.heart_fill),
                                    // ),

                                    Image(image: NetworkImage("https://cloud.appwrite.io/v1/storage/buckets/${ap.itembucketid}/files/${e.data["pic_id"]}/view?project=66992f2b000f88ffab1c&mode=admin"),height: 70,width: 70,),

                                  ],
                                )),
                            Text( e.data["item_name"]?? "Item", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700))
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Get.to(()=>select_clothes(cap: controller.ad.value[0], a: false));
                  },
                  child: Container(
                      width: 157,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black,

                      ),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(CupertinoIcons.plus,color: Colors.white,size: 10,),
                          Text(" Outfits",style: TextStyle(color: Colors.white),),
                        ],
                      )
                  ),
                ),
              ],
            ),
        ],),
      ),
    );
  }
}
