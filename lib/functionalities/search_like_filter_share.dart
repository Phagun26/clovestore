import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project/functionalities/add_filter.dart';
import 'package:project/functionalities/share.dart';

class slfs extends StatefulWidget {
  const slfs({super.key});

  @override
  State<slfs> createState() => _slfsState();
}

class _slfsState extends State<slfs> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          color: Colors.white,
          alignment: Alignment.center,
          height: 26,
          width: 210,
          child: TextField(
            style: TextStyle(
              color: Colors.white,
              fontSize: 12
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Search",
              hintStyle: TextStyle(fontSize: 10,fontWeight: FontWeight.w400, color: Colors.grey.shade600),
              // contentPadding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
              prefixIcon: Icon(Icons.search, size: 13,),
            ),
          ),
        ),
        SizedBox(width: 15,),
        Container(

          height: 26,
          width: 26,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.white),
          alignment: Alignment.center,
          child: Icon(CupertinoIcons.heart_fill,color: Colors.black,size: 14,),
        ),
        SizedBox(width: 15,),
        InkWell(
          onTap: (){Get.to(()=>add_filter());},
          child: Container(
            height: 26,
            width: 26,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.white),
            alignment: Alignment.center,
            child: Icon(CupertinoIcons.slider_horizontal_3,size: 14,),
          ),
        ),  SizedBox(width: 15,),
        InkWell(
          onTap: (){Get.to(()=>share());},
          child: Container(
            height: 26,
            width: 26,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.white),
            alignment: Alignment.center,
            child: Icon(Icons.share,size: 14,),
          ),
        )
      ],
    );
  }
}
