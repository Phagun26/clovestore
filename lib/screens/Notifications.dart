import 'package:flutter/material.dart';
import 'package:get/get.dart';
class notifications extends StatefulWidget {
  const notifications({super.key});

  @override
  State<notifications> createState() => _notificationsState();
}

class _notificationsState extends State<notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700)),
        backgroundColor: Get.theme.scaffoldBackgroundColor,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              leading: Container(
                  height: 50,
                width: 50,
                color: Colors.grey.shade300,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Notification Updates of Offers",style: TextStyle(fontSize: 12)),
                  SizedBox(height: 3,),
                  Text("2hrs ago",style: TextStyle(fontSize: 10))
                ],
              ),
            ),
          );
        })
      ),
    );
  }
}
