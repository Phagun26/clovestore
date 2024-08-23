import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project/functionalities/image.dart';
import 'package:project/functionalities/search_like_filter_share.dart';
import 'package:project/screens/add_outfit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../functionalities/appwrite_data.dart';
import 'items.dart';


class different_outfits extends StatefulWidget {
  const different_outfits({super.key});

  @override
  State<different_outfits> createState() => _different_outfitsState();
}

class _different_outfitsState extends State<different_outfits> {
  appwritedata ap = appwritedata();
  var controller = Get.put(selected());
  getdata()async{
    SharedPreferences ss= await SharedPreferences.getInstance();
    DocumentList aa = await ap.databases!.listDocuments(databaseId: ap.databaseid, collectionId: ap.outfitid,queries: [
      Query.equal('user_id', ss.getString("userid"))
    ]);
    controller.ac.value= aa.documents;
    for(var e in controller.ac.value){
      Document at = await ap.databases!.getDocument(databaseId: ap.databaseid, collectionId: ap.itemcollectionId, documentId: e.data["top_id"]);
      controller.ae.value.add(at);

    }
    Document at = await ap.databases!.getDocument(databaseId: ap.databaseid, collectionId: ap.itemcollectionId, documentId: controller.ac.value[0].data["top_id"]);
    print(at.data);
    controller.picid.value = at.data["pic_id"];
    print( controller.ac.value[0].data);

  }
  @override
  Widget build(BuildContext context) {
    getdata();
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 320,
          child: FloatingActionButton.extended(
            label: Text("Add Outfits",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.white)),
            icon: Icon(CupertinoIcons.plus,size: 14,color: Colors.white,),

            backgroundColor: Colors.black,

            onPressed: (){Get.to(()=>add_outfit());},

          ),
        ),
      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
          
                SizedBox(height: 12,),
                slfs(),
                SizedBox(height: 20,),
                Wrap(
                  alignment: WrapAlignment.start,
                  children: controller.ae.value.map((e) {
                    return Padding(
                      padding: const EdgeInsets.symmetric( horizontal: 10, vertical:10 ),
                      child: Container(
                          height: 150,
                          width: 150,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Icon(CupertinoIcons.heart_fill),
                              ),

                              Image(image: NetworkImage("https://cloud.appwrite.io/v1/storage/buckets/${ap.itembucketid}/files/${e.data["pic_id"]}/view?project=66992f2b000f88ffab1c&mode=admin"),height: 80,width: 41,),

                            ],
                          )),
                    );
                  }).toList(),
                ),

            ]

            ),
          ),
        ),),
    );
  }
}
