import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project/screens/myinbox.dart';


class MyInboxPage extends StatelessWidget {
  const MyInboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
              child: Row(
                children: [
                  Container(
                    width: 35,
                    height:35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xff472723)),
                    ),
                    child: InkWell(
                      onTap: (){
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 14,
                        color: Color(0xff472723),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'My Inbox',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                InkWell(
                  onTap: (){
                    Get.to(()=>MyInbox());
                  },
                  child: Container(
                    height: 72,
                    width: MediaQuery.of(context).size.width*0.88,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xffEEE5DB),
                          Color(0xffD1B8A2),
                        ]
                      ),
                      borderRadius: BorderRadius.circular(1),
                    ),
                    child: ListTile(
                      leading: Container(
                        height: 48,
                        width: 52,
                        color: Color(0xffD9D9D9),
                      ),
                      title: Text(
                        'Name',
                        style: TextStyle(
                          color:  Color(0xff000000),
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                      subtitle: Text(
                        'Last message',
                        style: TextStyle(
                            color:  Color(0xff5C5C5C),
                            fontSize: 10,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                        color: Color(0xff000000).withOpacity(0.15),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 72,
                  width: MediaQuery.of(context).size.width*0.88,
                  decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.circular(1),
                  ),
                  child: ListTile(
                    leading: Container(
                      height: 48,
                      width: 52,
                      color: Color(0xffD9D9D9),
                    ),
                    title: Text(
                      'Name',
                      style: TextStyle(
                          color:  Color(0xff000000),
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    subtitle: Text(
                      'Last message',
                      style: TextStyle(
                          color:  Color(0xff5C5C5C),
                          fontSize: 10,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                      color: Color(0xff000000).withOpacity(0.15),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
