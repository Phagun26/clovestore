import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class MyInbox extends StatefulWidget {
  const MyInbox({super.key});

  @override
  State<MyInbox> createState() => _MyInboxState();
}

class _MyInboxState extends State<MyInbox> {
  final List<Map<String, String>> messages = [];
  final TextEditingController controller = TextEditingController();

  void sendMessage(String text) {
    if (text.isEmpty) return;

    setState(() {
      messages.add({'text': text, 'sender': 'user'});
      messages.add({'text': 'Open the FinX Stock app to get started and follow the steps. FinX Stock doesn’t charge a fee to create or maintain your FinX Stock account', 'sender': 'support'});
    });

    controller.clear();
  }

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
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  final message = messages[index];
                  final isUserMessage = message['sender'] == 'user';
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: isUserMessage ?MainAxisAlignment.end:MainAxisAlignment.start,
                    children: [
                      isUserMessage ?Container():CircleAvatar(
                        backgroundImage: AssetImage('assets/inbox_img.png',),
                        radius: 24,
                      ),
                      Column(
                        crossAxisAlignment: isUserMessage ?CrossAxisAlignment.end:CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: isUserMessage ? Alignment.centerRight : Alignment.centerLeft,
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: Container(
                              width: 200,
                              decoration: BoxDecoration(
                                color: isUserMessage ? null: Colors.white,
                                gradient: isUserMessage ?LinearGradient(
                                  begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0xffEEE5DB),
                                      Color(0xffD1B8A2),
                                    ],):null,
                                borderRadius: isUserMessage ?BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                  bottomRight: Radius.zero
                                ):BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    topRight: Radius.circular(50),
                                    bottomLeft: Radius.zero,
                                    bottomRight: Radius.circular(50),
                                ),
                              ),
                              padding: EdgeInsets.all(10),
                              child: Text(
                                message['text']!,
                                maxLines: null,
                                style: TextStyle(color: isUserMessage ? Color(0xff472723) : Color(0xff000000),fontSize: 12),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              '08:21AM',
                              style: TextStyle(
                                color: Color(0xff757575),
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
            Container(
              height: 65,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.camera_alt,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.add_photo_alternate_outlined
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 250,
                      height: 42,
                      decoration: BoxDecoration(
                        color: Color(0xffF5F5F5),
                        borderRadius: BorderRadius.circular(24),
                      ),

                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: controller,
                            decoration: InputDecoration.collapsed(
                              hintText: 'Write a comment',
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () => sendMessage(controller.text),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xff472723),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.send_sharp,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
