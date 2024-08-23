import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/partner/start_service.dart';

class enter_code extends StatefulWidget {
  String aa;
   enter_code({super.key, required this.aa});

  @override
  State<enter_code> createState() => _enter_codeState();
}

class _enter_codeState extends State<enter_code> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: Get.width*0.7,
          child: FloatingActionButton.extended(
            label: Text(widget.aa,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white)),

            backgroundColor: Colors.black,

            onPressed: (){
              Get.to(()=>start_service(
                aa:  widget.aa=="Upload Closet before"?true:false,
              ));
            },

          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Enter Code",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14),),
        backgroundColor: Get.theme.scaffoldBackgroundColor,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.white
              ),
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Wardrobe Partner",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
                      Container(
                        height: 25,
                        width: 81,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffEEE5DB),
                              Color(0xffD1B8A2),
                            ],


                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Scheduled',
                            style: TextStyle(
                              color: Color(0xff472723),
                              fontWeight: FontWeight.w400,
                              fontSize: 8,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text("6th April 2024, 4:00 pm",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                  SizedBox(height: 5,),
                  Text("Details Corem ipsum dolor sit amet, consectetur adipiscing elit.",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),softWrap: true
                    ,overflow: TextOverflow.visible,),
                  SizedBox(height: 5,),
                ],
              ),
            ),
            SizedBox(height: 35,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xffEEE5DB),
                    Color(0xffD1B8A2),
                  ],


                ),
              ),
              child: Column(
                children: [
                  Text("Enter Code below",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
                SizedBox(height: 10,),
                  Container(
                    height: 50,
                    color: Colors.white,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
