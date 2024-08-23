import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project/functionalities/image.dart';
import 'package:project/screens/item_view_styling.dart';

import 'item_view_about.dart';
import 'items.dart';

class add_item extends StatefulWidget {
  const add_item({super.key});

  @override
  State<add_item> createState() => _add_itemState();
}

class _add_itemState extends State<add_item> with TickerProviderStateMixin {
  final ImageController imageController = Get.find();
  @override
  Widget build(BuildContext context) {
    var aa = TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        title: Text("Item A",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
        actions: [
          Container(
            color: Colors.white,
            height: 32.5,
            width: 32.5,
            child: Icon(Icons.share,size: 17,),
          ),
          SizedBox(width: 10.5,),
          Container(
            color: Colors.white,
            height: 32.5,
            width: 32.5,
            child: Icon(CupertinoIcons.delete,size: 17,),
          ),
          SizedBox(width: 13.5,),

        ],
      ),
      body: Column(
        children: [
          Align(
              alignment: Alignment.topCenter,
            child: Obx(() {
              return imageController.imagePath.value.isNotEmpty
                  ? Image.file(File(imageController.imagePath.value),height: 205,width: 128,)
                  : Image(image: AssetImage('assets/images/img_5.png'), height: 205,width: 128,);
            }),
          ),
          Container(
            height: 30,
            child: TabBar(
                indicatorWeight:0.1,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.black,
                indicatorPadding: EdgeInsets.zero,
                controller: aa,
                tabs: [
                  Tab(
                    child: Text("About",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),

                  ),
                  Tab(
                    child: Text("Styling",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                  ),
                ]),
          ),
          Expanded(
            child: TabBarView(
                controller: aa,
                children: [
                  item_view_about(xd: false,),
                  item_view_styling(),
                ]),
          )
        ],
      ),
    );
  }
}
