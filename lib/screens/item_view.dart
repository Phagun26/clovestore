import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project/functionalities/image.dart';
import 'package:project/screens/item_view_styling.dart';

import 'item_view_about.dart';


class item_view extends StatefulWidget {
  final bool xd;
  const item_view({super.key, required this.xd});

  @override
  State<item_view> createState() => _item_viewState();
}

class _item_viewState extends State<item_view> with TickerProviderStateMixin {
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
              child: image_temp(width: 116, height: 145)),
          Container(
            height: 30,
            child: TabBar(
                indicatorWeight:1,
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
                  item_view_about(xd: widget.xd,),
              item_view_styling(),
            ]),
          )
        ],
      ),
    );
  }
}
