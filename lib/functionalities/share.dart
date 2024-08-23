import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/functionalities/share_item.dart';
import 'package:project/screens/share_item.dart';


class share extends StatefulWidget {
  const share({super.key});

  @override
  State<share> createState() => _shareState();
}

class indexdata extends GetxController{
  RxList aa = [].obs;
  RxList ab = [].obs;
}

class _shareState extends State<share> {
  
  var controller = Get.put(indexdata());
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 320,
          child: FloatingActionButton.extended(
            label: Text("Share",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.white)),
            backgroundColor: Colors.black,

            onPressed: (){},

          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Share Items",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
        backgroundColor: Get.theme.scaffoldBackgroundColor,
      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 20),child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            color: Get.theme.scaffoldBackgroundColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Select Items", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
                SizedBox(height: 10,),
                InkWell(
                  onTap: (){
                    Get.to(()=>share_item_contact());
                  },
                  child: Container(
                    width: double.infinity,
                    height: 37,
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    color: Colors.white,
                    child: Text("All Items",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)),

                  ),
                ),
                SizedBox(height: 15,),
                Text("Copy Link to Share", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width:260,
                      height: 37,
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      color: Colors.white,
                      child: Text("linkxyz.com",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)),
                    ),
                    Container(
                      width: 50,
                      height: 37,
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 6),
                      color: Colors.white,
                      child: Icon(Icons.copy,size: 14,),
                    ),
                    SizedBox(height: 15,),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border:Border.all(
                width: 1,
                color: Colors.grey
              )
            ),

            child: TextField(
              decoration: InputDecoration(
                hintStyle:TextStyle(fontSize: 12,fontWeight: FontWeight.w400),
                hintText: "Search Name or Mobile Number.",
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context,index){
            return ListTile(
              onTap: (){
                if(controller.aa.contains(index)){
                  controller.aa.remove(index);
                }
                else
                  controller.aa.add(index);
              },
              leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/img_2.png'),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name ABC",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400)),
                SizedBox(height: 3,),
                Text("+91-70000-00000",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)),
              ],
            ),
            trailing: Obx(
              ()=>Container(
                decoration: BoxDecoration(
                  color: controller.aa.contains(index)?Colors.black:Colors.white  ,
                  border: Border.all(
                    color: Colors.black,
                    width: 0.75
                  )
                ),
                height: 18,
                width: 18,
                child: controller.aa.contains(index)?Icon(Icons.check,size: 10,color: Colors.white,):null,
              ),
            ),

            );
          }))
        ],
      ),),
    );
  }
}
