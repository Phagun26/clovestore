import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project/screens/capsules.dart';
import 'package:project/screens/different_outfits.dart';
import 'package:project/screens/items.dart';

class outfit extends StatefulWidget {
  const outfit({super.key});

  @override
  State<outfit> createState() => _outfitState();
}

class _outfitState extends State<outfit> with TickerProviderStateMixin  {
  @override
  Widget build(BuildContext context) {
    double hh = Get.height;
    TabController tb = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        children: [
          Container(

            height: hh*0.26,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xff472723),Color(0xff110302)]
              )
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/img_4.png'),
                    radius: 32,
                  ),
                  SizedBox(height: 10,),
                  Text("Name Lorem", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700, color: Colors.white)),
                  SizedBox(height:4,),
                  Text("@userxyz",  style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500, color: Colors.white)),
                  SizedBox(height: 10,),
                  TabBar(
                      indicatorColor: Colors.white ,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorWeight: 3,
                      controller: tb,
                      dividerColor: Colors.transparent,
                      dividerHeight: -2,
                      tabs: [
                    Tab(
                      child: Column(
                        children: [
                          Text("10", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700, color: Colors.white)),
                          Text("Items", style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400, color: Colors.white))
                        ],
                      ),
                    ),
                        Tab(
                          child: Column(
                            children: [
                              Text("0", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700, color: Colors.white)),
                              Text("Outfits", style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400, color: Colors.white))
                            ],
                          ),
                        ),
                        Tab(
                          child: Column(
                            children: [
                              Text("0", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700, color: Colors.white)),
                              Text("Capsules", style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400, color: Colors.white))
                            ],
                          ),
                        )
                  ])
                ],
              ),
            ),
          ),
          Container(
          
            child: Expanded(
              child: TabBarView(
                  controller: tb,
                  children: [
                items(),
                   different_outfits(),
                    capsules()
              ]),
            ),
          )
        ],
      ),
    );
  }
}
