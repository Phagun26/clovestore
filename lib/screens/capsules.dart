import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/functionalities/search_like_filter_share.dart';
import 'package:project/screens/add_capsule.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../functionalities/appwrite_data.dart';
import '../functionalities/image.dart';
import 'items.dart';

class capsules extends StatefulWidget {
  const capsules({super.key});

  @override
  State<capsules> createState() => _capsulesState();
}

class _capsulesState extends State<capsules> {
  appwritedata ap = appwritedata();
  var cc = TextEditingController();
  var controller = Get.put(selected());
  getdata()async{

    SharedPreferences ss= await SharedPreferences.getInstance();
    DocumentList aa = await ap.databases!.listDocuments(databaseId: ap.databaseid, collectionId: ap.capsuleid,queries: [
      Query.equal('user_id', ss.getString("userid"))
    ]);
    controller.af.value= aa.documents;
    print( controller.af);

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
            label: Text("Add Capsule",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.white)),
            icon: Icon(CupertinoIcons.plus,size: 14,color: Colors.white,),

            backgroundColor: Colors.black,

            onPressed: (){
              Get.bottomSheet(

                  backgroundColor: Colors.white,
                  Container(
                    height: 300,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                      Text("Capsule Created",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),
                      SizedBox(height: 40,),
                      Container(

                        child: TextField(

                          controller: cc,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Name your capsule",

                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      InkWell(
                        onTap: (){
                          ap.uploadcapsule([], [], cc.text.toString());
                          Get.to(()=>add_capsule(name: cc.text.toString()));
                        },
                        child: Container(
                          height: 32,width: 260,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text("Save",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                        ),
                      )
                                      ],
                                    ),
                    ),
                  ));

            },

          ),
        ),
      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 20),child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 27,),
            slfs(),
            SizedBox(height: 12,),
            Obx(
              ()=> Wrap(
                alignment: WrapAlignment.start,
                children: controller.af.value.map((e) {

                  return Padding(
                    padding: const EdgeInsets.symmetric( horizontal: 10, vertical:10 ),
                    child: InkWell(
                      onTap: (){
                        Get.to(()=>add_capsule(name: e.data["name"]));
                      },
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

                              // Image(image: NetworkImage("https://cloud.appwrite.io/v1/storage/buckets/${ap.itembucketid}/files/${e.data["pic_id"]}/view?project=66992f2b000f88ffab1c&mode=admin"),height: 80,width: 41,),
                              Text(e.data["name"]?? "Item", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700))
                            ],
                          )),
                    ),
                  );
                }).toList(),
              ),
            ),
        
          ],
        ),
      ),),
    );
  }
}
