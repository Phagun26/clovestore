import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/screens/item_view.dart';

import '../functionalities/image.dart';
import 'items.dart';
class person_wardrobe extends StatefulWidget {
  const person_wardrobe({super.key});

  @override
  State<person_wardrobe> createState() => _person_wardrobeState();
}

class _person_wardrobeState extends State<person_wardrobe> {
  var controller = Get.put(selected());
  List<String> aa = ["Items","Outfits","Capsules"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Person ABC's Wardrobe",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
        backgroundColor: Get.theme.scaffoldBackgroundColor,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 30,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context,index){
                    return Obx(
                          ()=> Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 7.5),
                        child: InkWell(
                          onTap: (){
                            controller.sell.value  = index;
                          },
                          child: Container(

                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: controller.sell.value==index?Color(0xff472723):null,
                              gradient: controller.sell.value==index?null: LinearGradient(
                                colors: [
                                  Color(0xffEEE5DB),
                                  Color(0xffD1B8A2),
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                            ),
                            child: Text(aa[index],  style: TextStyle(fontSize: 11,fontWeight: FontWeight.w400, color: controller.sell.value==index? Colors.white:Colors.black)),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(height: 20,),
            Obx(() => Expanded(child: controller.sell==0?Column(
              children: [
                Wrap(
            alignment:WrapAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: InkWell(
                        onTap: (){
                            Get.to(()=>item_view(xd:false));
                        },
                        child: Container(
                            height: 150,
                            width: 150,
                            color: Colors.white,
                            child: Column(
                              children: [

                                image_temp(width: 100, height: 100),
                                Text("Item 1", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700))
                              ],
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: InkWell(
                        onTap: (){
                          Get.to(()=>item_view(xd:false));
                        },
                        child: Container(
                            height: 150,
                            width: 150,
                            color: Colors.white,
                            child: Column(
                              children: [

                                image_temp(width: 100, height: 100),
                                Text("Item 1", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700))
                              ],
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: InkWell(
                        onTap: (){

                        },
                        child: Container(
                            height: 150,
                            width: 150,
                            color: Colors.white,
                            child: Column(
                              children: [

                                image_temp(width: 100, height: 100),
                                Text("Item 1", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700))
                              ],
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: InkWell(
                        onTap: (){

                        },
                        child: Container(
                            height: 150,
                            width: 150,
                            color: Colors.white,
                            child: Column(
                              children: [

                                image_temp(width: 100, height: 100),
                                Text("Item 1", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700))
                              ],
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: InkWell(
                        onTap: (){

                        },
                        child: Container(
                            height: 150,
                            width: 150,
                            color: Colors.white,
                            child: Column(
                              children: [

                                image_temp(width: 100, height: 100),
                                Text("Item 1", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700))
                              ],
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: InkWell(
                        onTap: (){

                        },
                        child: Container(
                            height: 150,
                            width: 150,
                            color: Colors.white,
                            child: Column(
                              children: [

                                image_temp(width: 100, height: 100),
                                Text("Item 1", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700))
                              ],
                            )),
                      ),
                    ),

                  ],
                )
              ],
            ):controller.sell==1?Column(
              children: [
                Wrap(
                  alignment:WrapAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: InkWell(
                        onTap: (){
                          Get.to(()=>item_view(xd:false));
                        },
                        child: Container(

                            width: 150,
                            color: Colors.white,
                            child:    Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    image_temp(width: 75,height: 75,),
                                    image_temp(width: 75,height: 75,),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    image_temp(width: 75,height: 75,),
                                    image_temp(width: 75,height: 75,),
                                  ],
                                ),
                                SizedBox(height: 6,),
                                Text("Outit A",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),)
                              ],
                            ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: InkWell(
                        onTap: (){

                        },
                        child: Container(

                          width: 150,
                          color: Colors.white,
                          child:    Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  image_temp(width: 75,height: 75,),
                                  image_temp(width: 75,height: 75,),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  image_temp(width: 75,height: 75,),
                                  image_temp(width: 75,height: 75,),
                                ],
                              ),
                              SizedBox(height: 6,),
                              Text("Outit A",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: InkWell(
                        onTap: (){

                        },
                        child: Container(

                          width: 150,
                          color: Colors.white,
                          child:    Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  image_temp(width: 75,height: 75,),
                                  image_temp(width: 75,height: 75,),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  image_temp(width: 75,height: 75,),
                                  image_temp(width: 75,height: 75,),
                                ],
                              ),
                              SizedBox(height: 6,),
                              Text("Outit A",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),)
                            ],
                          ),
                        ),
                      ),
                    ),


                  ],
                )
              ],
            ):Column(
              children: [
                Wrap(
                  alignment:WrapAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: InkWell(
                        onTap: (){
                          Get.to(()=>item_view(xd:false));
                        },
                        child: Container(

                          width: 150,
                          color: Colors.white,
                          child:    Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  image_temp(width: 75,height: 75,),
                                  image_temp(width: 75,height: 75,),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  image_temp(width: 75,height: 75,),
                                  image_temp(width: 75,height: 75,),
                                ],
                              ),
                              SizedBox(height: 6,),
                              Text("Outit A",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: InkWell(
                        onTap: (){

                        },
                        child: Container(

                          width: 150,
                          color: Colors.white,
                          child:    Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  image_temp(width: 75,height: 75,),
                                  image_temp(width: 75,height: 75,),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  image_temp(width: 75,height: 75,),
                                  image_temp(width: 75,height: 75,),
                                ],
                              ),
                              SizedBox(height: 6,),
                              Text("Outit A",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: InkWell(
                        onTap: (){

                        },
                        child: Container(

                          width: 150,
                          color: Colors.white,
                          child:    Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  image_temp(width: 75,height: 75,),
                                  image_temp(width: 75,height: 75,),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  image_temp(width: 75,height: 75,),
                                  image_temp(width: 75,height: 75,),
                                ],
                              ),
                              SizedBox(height: 6,),
                              Text("Outit A",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),)
                            ],
                          ),
                        ),
                      ),
                    ),


                  ],
                )
              ],
            )))
          ],
        ),
      ),
    );
  }
}
