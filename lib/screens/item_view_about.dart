import 'package:appwrite/appwrite.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project/functionalities/image.dart';

import '../functionalities/appwrite_data.dart';
import 'items.dart';

class item_view_about extends StatefulWidget {
  final bool xd;
  const item_view_about({super.key, required this.xd});

  @override
  State<item_view_about> createState() => _item_view_aboutState();
}

class data_ts extends GetxController{
  RxList<String> aa = <String>[].obs;
  RxList<String> ab = <String>[].obs;
  RxList ac = [].obs;
  RxList ad = [].obs;
}



class _item_view_aboutState extends State<item_view_about> {
  final _nameController = TextEditingController();
  final _categoryController = TextEditingController();
  final _brandController = TextEditingController();
  final _priceController = TextEditingController();
  final _sizeController = TextEditingController();
  final  _picIdController  = Get.put(ImageController());
  final tags = ["Spring", "Autumn", "Spring", "Black","Black","Black","Black","Black","Black"];
  final season = ["Autumn", "Spring", "Summer", "Monsoon", "Winter", "All year", "No Season"];
  var controller  = Get.put(data_ts());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 320,
          child: FloatingActionButton.extended(
            label: Text("Save Changes",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.white)),
            backgroundColor: Colors.black,
            onPressed: (){
              print(_picIdController.imagePath.value);
              appwritedata ap = appwritedata();
              ap.uploaditemphoto(_picIdController.imagePath.value).then((value){
                String imgId=value.$id;
                ap.uploaditemdetails(ID.unique(),
                    imgId,
                    _nameController.text,
                    _categoryController.text,
                    controller.aa.value,
                    controller.ab.value,
                    _brandController.text,
                    _priceController.text,
                    _sizeController.text);
              });
              },
          ),
        ),
      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 20),child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15,),
            Text("Name",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
            Container(
              width: double.infinity,
              child: TextField(
                controller: _nameController,
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
                controller: _categoryController,
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
                controller: _brandController,
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
                controller: _priceController,
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
                controller: _sizeController,
                decoration: InputDecoration(
                    hintText: "US-6"
                ),
              ),
            ),
            SizedBox(height: 25,),

          ],),
      ),),
    );
  }
}
