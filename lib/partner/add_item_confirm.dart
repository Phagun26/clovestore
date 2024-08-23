import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/partner/filled_closet.dart';


class add_item_confirm extends StatefulWidget {
  const add_item_confirm({super.key});

  @override
  State<add_item_confirm> createState() => _add_item_confirmState();
}

class _add_item_confirmState extends State<add_item_confirm> {
  double hh = Get.height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 320,
          child: FloatingActionButton.extended(
            label: Text("Done",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.white)),


            backgroundColor: Colors.black,

            onPressed: (){Get.to(()=>filled_closet());},

          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        title: Container(
          width: 270,
          height: 42,
          color: Colors.white,
          alignment: Alignment.center,
          child: Text("Add Item", style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Image(image: AssetImage('assets/images/img_10.png'),height: hh*0.7,),
      ),

    );
  }
}
