import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/functionalities/search_like_filter_share.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../functionalities/appwrite_data.dart';
import 'add_capsule.dart';
import 'items.dart';
class select_clothes extends StatefulWidget {
  Document cap;
  bool a;
   select_clothes({super.key,required this.cap, required this.a});

  @override
  State<select_clothes> createState() => _select_clothesState();
}

class _select_clothesState extends State<select_clothes> {
  appwritedata ap = appwritedata();
  var controller = Get.put(selected());
  var con = Get.put(capsul_data());
  @override
  void initState() {
    // TODO: implement initState
    getdata();
    super.initState();
  }
  void getdata()async{
    con.temp.clear();
    con.sel.clear();
    if(widget.a){
      Set<String> aa = con.it.map((doc)=>doc.$id).toSet();
      con.sel.value = controller.ab.where((p) => !aa.contains(p.$id)).toList();
    }
    else{
      Set<String> aa = con.out.value.map((e) => e.$id).toSet();
      List<Document> ab = controller.ac.where((p) => !aa.contains(p.$id)).toList();
      print(ab[0].data);
      for(var e in ab){

         con.sel.value.add(await ap.databases!.getDocument(databaseId: ap.databaseid, collectionId: ap.itemcollectionId, documentId: e.data["top_id"]));
      }
      // con.sel.value = ab.map((e) async{
      //  return await ;
      // })).toList();
    }

    print("con ${con.sel.value[0].data}");
  }
  @override
  Widget build(BuildContext context) {

    print(con.sel.value.length);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 320,
          child: FloatingActionButton.extended(
            label: Text("Save",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.white)),
            icon: Icon(CupertinoIcons.plus,size: 14,color: Colors.white,),

            backgroundColor: Colors.black,

            onPressed: (){
             if(widget.a){
               List aa = widget.cap.data["items_list"];
               List<String> ab = con.temp.value.map((e) => e.$id).toList();
               aa.addAll(ab);

               ap.databases!.updateDocument(databaseId: ap.databaseid, collectionId: ap.capsuleid, documentId: widget.cap.$id,data: {
                 'items_list' : aa,
               });
             }
             else
               {
                 List aa = widget.cap.data["items_list"];
                 List<String> ab = con.temp.value.map((e) => e.$id).toList();
                 aa.addAll(ab);

                 ap.databases!.updateDocument(databaseId: ap.databaseid, collectionId: ap.capsuleid, documentId: widget.cap.$id,data: {
                   'items_list' : aa,
                 });
               }
              Get.back();
              setState(() {

              });
            },

          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Add Clothes", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Obx(
          ()=>Column(
            children: [
              SizedBox(height: 20,),
              slfs(),
              Wrap(
                alignment: WrapAlignment.start,
                children: con.sel.value.map((e) {
                  // print(e.data["pic_id"]);
                  return InkWell(
                    onTap: (){
                      con.temp.value.add(e);
                      Get.snackbar("Success", "${e.data["name"]} is added successfully",snackPosition: SnackPosition.BOTTOM);
                    },
                    child: Padding(
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
                              Text(e.data["item_name"]?? "Item", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700))
                            ],
                          )),
                    ),
                  );
                }).toList(),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
