import 'dart:async';
import 'dart:io';

import 'package:appwrite/appwrite.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project/screens/homepage.dart';
import 'package:project/screens/reset_password.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../functionalities/appwrite_data.dart';


class profdata extends GetxController{
  var image_path = ''.obs;

}
class complete_profile extends StatefulWidget {

  String email;
  String pass;
   complete_profile({super.key, required this.pass, required this.email});

  @override
  State<complete_profile> createState() => _complete_profileState();
}

class _complete_profileState extends State<complete_profile> {
  var controller = Get.put(profdata());
  ImagePicker picker  = ImagePicker();
  var name = TextEditingController();
  var phone = TextEditingController();
  var pincode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Complete Your Profile",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),),
            SizedBox(height: 15,),
            Text("Only you can see your personal data.", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
            Text("No one else will be able to see it.", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
            SizedBox(height: 25,),
            InkWell(
              onTap: ()async{
                final XFile? image = await picker.pickImage(source: ImageSource.gallery);
                if(image!=null)
                  controller.image_path.value = image.path;
              },
              child: Obx(
                  ()=>CircleAvatar(
                  backgroundImage: controller.image_path.isEmpty
                      ? AssetImage('assets/images/img_2.png') as ImageProvider
                      : FileImage(File(controller.image_path.value)) as ImageProvider,
                  radius: 42,
                ),
              ),
            ),

            SizedBox(height: 17,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text("Name*", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                SizedBox(height: 6,),
                Container(
                  height: 41,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 1,

                      )
                  ),
                  child: TextField(
                    controller: name,
                  ),
                )
              ],
            ),
            SizedBox(height: 17,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text("Mobile Number*", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                SizedBox(height: 6,),
                Container(
                  height: 41,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 1,

                      )
                  ),
                  child: TextField(
                    controller: phone,
                  ),
                )
              ],
            ),
            SizedBox(height: 17,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text("Pincode", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                SizedBox(height: 6,),
                Container(
                  height: 41,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 1,

                      )
                  ),
                  child: TextField(
                    controller: pincode,
                  ),
                )
              ],
            ),
            // Text("Did't Receive OTP?", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
            // Text("Resend Now", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, decoration: TextDecoration.underline),),
            SizedBox(height: 17,),
            Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff472723),
                  borderRadius: BorderRadius.circular(4),

                ),
                child: TextButton(onPressed: ()async{
                  appwritedata ap = appwritedata();
                  ap.signup(ID.unique(), widget.email, widget.pass , name.text);
                  Get.snackbar("Success","Account Created");
                  SharedPreferences ss = await SharedPreferences.getInstance();
                  await Future.delayed(Duration(seconds: 3));
                  ap.login(widget.email, widget.pass).then((value) {
                    ss.setString("userid", value.userId);
                    ss.setString("sessionid", value.$id);
                  });

                  await Future.delayed(Duration(seconds: 1));
                  try{
                    ap.uploaduserphoto(controller.image_path.value).then((value) {
                      final imageid = value.$id;

                      ap.uploaduserdetails(name.text, widget.email, phone.text, imageid, pincode.text);
                      print("details uploaded");

                    });
                  }
                  catch(e){
                    print(e);
                  }
                  Get.offAll(homepage(index: 0));

                  // ap.uploaduserphoto(controller.image_path.value).then((value) {
                  //   final imageid = value.$id;
                  //
                  //   ap.uploaduserdetails(name.text, widget.email, phone.text, imageid, pincode.text);
                  //   print("details uploaded");
                  // });




                  }, child: Text("Complete",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700,color: Colors.white),))
            ),



          ],
        ),),
    );
  }
}
