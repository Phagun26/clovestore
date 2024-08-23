import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project/functionalities/appwrite_data.dart';
import 'package:project/functionalities/image.dart';
import 'package:project/functionalities/search_like_filter_share.dart';
import 'package:project/screens/add_item.dart';
import 'package:project/screens/item_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class items extends StatefulWidget {
  const items({super.key});

  @override
  State<items> createState() => _itemsState();
}

class selected extends GetxController{
  RxInt sel = 0.obs;
  RxInt sell = 0.obs;
  RxList<Document> ab = <Document>[].obs;
  RxList<Document> ac = <Document>[].obs;
  RxList<Document> ae = <Document>[].obs;
  RxList<Document> af = <Document>[].obs;

  RxList<Document> ad = <Document>[].obs;
  RxString picid = "".obs;

}
class _itemsState extends State<items> {
  appwritedata ap = appwritedata();
  getdata()async{

    SharedPreferences ss= await SharedPreferences.getInstance();
    DocumentList aa = await ap.databases!.listDocuments(databaseId: ap.databaseid, collectionId: ap.itemcollectionId,queries: [
      Query.equal('user_id', ss.getString("userid"))
    ]);
    controller.ab.value= aa.documents;
    print( controller.ab.value[0].data);

  }
  var controller = Get.put(selected());
  final ImageController imageController = Get.put(ImageController());
    List<String> aa = ["All","Bottom","Top","Top","Top","Top","Footwear"];
  @override
  Widget build(BuildContext context) {
    getdata();
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 320,
          child: FloatingActionButton.extended(
            label: Text("Add Items",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.white)),
            icon: Icon(CupertinoIcons.plus,size: 14,color: Colors.white,),

            backgroundColor: Colors.black,

            onPressed:()=> imageController.getImage(),

          ),
        ),
      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 30,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 7,
                      itemBuilder: (context,index){
                        return Obx(
                              ()=> Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 7.5),
                            child: InkWell(
                              onTap: (){
                                controller.sel.value  = index;
                              },
                              child: Container(
          
                                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: controller.sel.value==index?Color(0xff472723):null,
                                  gradient: controller.sel.value==index?null: LinearGradient(
                                    colors: [
                                      Color(0xffEEE5DB),
                                      Color(0xffD1B8A2),
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  ),
                                ),
                                child: Text(aa[index],  style: TextStyle(fontSize: 11,fontWeight: FontWeight.w400, color: controller.sel.value==index? Colors.white:Colors.black)),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(height: 12,),
                slfs(),
                SizedBox(height: 20,),
                Wrap(
                  alignment: WrapAlignment.start,
                  children: controller.ab.value.map((e) {
                    print(e.data["pic_id"]);
                    return Padding(
                      padding: const EdgeInsets.symmetric( horizontal: 10, vertical:10 ),
                      child: Container(
                          height: 150,
                          width: 150,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Icon(CupertinoIcons.heart_fill),
                              ),
                              
                              Image(image: NetworkImage("https://cloud.appwrite.io/v1/storage/buckets/${ap.itembucketid}/files/${e.data["pic_id"]}/view?project=66992f2b000f88ffab1c&mode=admin"),height: 80,width: 41,),
                              Text(e.data["item_name"]?? "Item", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700))
                            ],
                          )),
                    );
                  }).toList(),
                ),


              ],
            ),
          ),
        ),),
    );
  }
}
class ImageController extends GetxController {
  var imagePath = ''.obs;

  Future<void> getImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      imagePath.value = image.path;
      Get.to(() => add_item());
    }
  }
}