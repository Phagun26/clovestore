import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CsCreditPoints extends StatelessWidget {
  const CsCreditPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15,),
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
                    'Closetrove Credit Points',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff472723),
                      Color(0xff110302),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Row(
                      children: [
                        Image.asset('assets/points_img.png',height: 17,width: 17,),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '700',
                          style: TextStyle(
                              fontSize: 23,
                              color: Color(0xffEEE5DB),
                              fontWeight: FontWeight.w700
                          ),
                        )
                      ],
                    ),
                    Text(
                      'Credit Points',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xffEEE5DB),
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                        onTap: (){

                        },
                        child: Container(
                          width: 133,
                          height: 31,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0xffEEE5DB),
                                Color(0xffD1B8A2),
                              ]
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(
                            child: Text(
                              'Invite to earn more',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'History',
              style: TextStyle(
                color: Color(0xff000000),
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 12,
                itemBuilder: (context,index){
                  return ListTile(
                    leading: Image.asset('assets/points_img.png',height: 17,width: 17,),
                    title: Text(
                      '100 Points Credited ',
                      style: TextStyle(
                        color: Color(0xff515151),
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                    trailing: Text(
                      '12th May, 2024 ',
                      style: TextStyle(
                        color: Color(0xff515151).withOpacity(0.75),
                        fontWeight: FontWeight.w400,
                        fontSize: 8,
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
