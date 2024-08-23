import 'package:appwrite/models.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project/functionalities/appwrite_data.dart';
import 'package:project/functionalities/image.dart';
import 'package:project/functionalities/search_like_filter_share.dart';
import 'package:project/screens/item_view_styling.dart';

import 'item_view_about.dart';
import 'items.dart';

class add_outfit extends StatefulWidget {
  const add_outfit({super.key});

  @override
  State<add_outfit> createState() => _add_outfitState();
}

class _add_outfitState extends State<add_outfit> {
  appwritedata ap = appwritedata();
  final List<Document> topWearItems = [];
  final List<Document> bottomWearItems = [];
  final List<Document> othersItems = [];
  final List<Document> accessoriesItems = [];
  final List<Document> footwearItems = [];
  var controller = Get.put(selected());
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(selected());
    List<String> categories = ["All", "Bottom", "Top", "Footwear"];
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 320,
          child: FloatingActionButton.extended(
            label: Text("Add Outfit",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.white)),
            icon: Icon(CupertinoIcons.plus,size: 14,color: Colors.white,),

            backgroundColor: Colors.black,

            onPressed:(){
              ap.uploadoutfit(topWearItems[0].$id, bottomWearItems[0].$id, othersItems[0].$id, accessoriesItems[0].$id, footwearItems[0].$id);
              print("done");
            },

          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        title: Text(
          "Add Outfit",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  buildDottedContainer("Top Wear", topWearItems),
                  SizedBox(width: 15),
                  buildDottedContainer("Bottom", bottomWearItems),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      buildDottedContainer("Others", othersItems, height: 69),
                      SizedBox(height: 10),
                      buildDottedContainer("Accessories", accessoriesItems, height: 69),
                      SizedBox(height: 10),
                      buildDottedContainer("Footwears", footwearItems, height: 69),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15),
              Container(
                height: 30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Obx(
                          () => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 7.5),
                        child: InkWell(
                          onTap: () {
                            controller.sel.value = index;
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: controller.sel.value == index ? Color(0xff472723) : null,
                              gradient: controller.sel.value == index
                                  ? null
                                  : LinearGradient(
                                colors: [
                                  Color(0xffEEE5DB),
                                  Color(0xffD1B8A2),
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                            ),
                            child: Text(
                              categories[index],
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                color: controller.sel.value == index ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 15),
              slfs(),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Your Items", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
              ),
              SizedBox(height: 15),
              Wrap(
                alignment: WrapAlignment.start,
                children: controller.ab.value.map((e) {
                  print(e.data["pic_id"]);
                  // Draggable<Item>(
                  //   data: item,
                  //   child: buildItemContainer(item),
                  //   feedback: Material(
                  //     child: buildItemContainer(item, isDragging: true),
                  //   ),
                  //   childWhenDragging: Container(
                  //     height: 100,
                  //     width: 100,
                  //     color: Colors.grey,
                  //   ),
                  // ),
                  return Padding(
                    padding: const EdgeInsets.symmetric( horizontal: 10, vertical:10 ),
                    child: Draggable(
                      data: e,
                      feedback: Container(
                        height: 100,
                        width: 100,
                        color: Colors.transparent,
                      ),
                  childWhenDragging: Container(
                      height: 100,
                      width: 100,
                      color: Colors.grey,
                    ),
                      child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Icon(CupertinoIcons.heart_fill),
                              ),

                              Image(image: NetworkImage("https://cloud.appwrite.io/v1/storage/buckets/${ap.itembucketid}/files/${e.data["pic_id"]}/view?project=66992f2b000f88ffab1c&mode=admin"),height: 43,width: 41,),
                              Text(e.data["item_name"]?? "Item", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700))
                            ],
                          )),
                    ),
                  );
                }).toList(),
              ),
              // buildItemsRow(),
              // SizedBox(height: 15),
              // buildItemsRow(),
              // SizedBox(height: 15),
              // buildItemsRow(),
              // SizedBox(height: 15),
              // buildItemsRow(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDottedContainer(String title, List<Document> items, {double height = 108}) {
    return DottedBorder(
      color: Colors.black,
      strokeWidth: 1,
      radius: Radius.circular(4),
      dashPattern: [3, 2],
      child: Container(
        width: 100,
        height: height,
        alignment: Alignment.center,
        child: DragTarget<Document>(
          onAccept: (d) {
            print(d);
            setState(() {
              items.add(d);
            });
          },
          builder: (context, candidateData, rejectedData) {
            return items.length==0? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(CupertinoIcons.plus, size: 12),
                    Text(title, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                  ],
                ),
                Text("Click or Drag Items here", style: TextStyle(fontSize: 9, fontWeight: FontWeight.w400))

              ],
            ):Column(
              children: items.map((e) =>  Container(
                  height: 100,
                  width: 100,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Icon(CupertinoIcons.heart_fill),
                      ),

                      Image(image: NetworkImage("https://cloud.appwrite.io/v1/storage/buckets/${ap.itembucketid}/files/${e.data["pic_id"]}/view?project=66992f2b000f88ffab1c&mode=admin"),height: 43,width: 41,),
                      Text(e.data["item_name"]?? "Item", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700))
                    ],
                  )),).toList(),
            );
          },
        ),
      ),
    );
  }

  Widget buildItemsRow() {
    return Row(
      children: List.generate(3, (index) {
        final item = Item(name: 'Item ${index + 1}');
        return Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Draggable<Item>(
            data: item,
            child: buildItemContainer(item),
            feedback: Material(
              child: buildItemContainer(item, isDragging: true),
            ),
            childWhenDragging: Container(
              height: 100,
              width: 100,
              color: Colors.grey,
            ),
          ),
        );
      }),
    );
  }

  Widget buildItemContainer(Item item, {bool isDragging = false}) {
    return Container(
      height: 100,
      width: 100,
      color: isDragging ? Colors.transparent : Colors.white,
      child: Column(
        children: [
          SizedBox(height: 18),
          imagee(width: 43, height: 43),
          Text(item.name, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
        ],
      ),
    );
  }
}

class Item {
  final String name;

  Item({required this.name});
}
