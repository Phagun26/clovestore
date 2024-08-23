
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project/screens/subscription.dart';

class ClosetroveServices extends StatelessWidget {
  const ClosetroveServices({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
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
                  SizedBox(width: 5,),
                  Text(
                    'Closetrove Service Tier',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                    height: MediaQuery.of(context).size.height*0.85,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(10),
                        )
                    ),
                    child: Image.asset(
                      'assets/closet_img.jpeg',
                      fit: BoxFit.fill,
                    )
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 423,
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xffF2F2F2),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                  onTap: (){
                                    Get.to(()=>Subscriptions());
                                  },
                                  child: Customsub()),
                              Customsub(),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Customsub(),
                              Customsub(),
                            ],
                          )
                        ],
                      ),
                    )
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


class Customsub extends StatelessWidget {
  const Customsub({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 147,
          height: 181,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8)
          ),
          child: Image.asset(
            'assets/closet02_img.png',
            fit: BoxFit.fill,
          ),
        ),
        Container(
          width: 147,
          height: 181,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color(0xff0D0D0D).withOpacity(0.46),
                    Color(0xff666666).withOpacity(0),
                  ]
              )
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book a wardrobe organiser',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 9,
                  ),
                ),
                Container(
                  width: 139,
                  child: Text(
                    'staff will come organise your wardrobe and digitise it.',
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 7,
                    ),
                  ),
                ),
                Text(
                  '1499',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
