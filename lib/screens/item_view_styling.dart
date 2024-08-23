import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project/functionalities/image.dart';


class item_view_styling extends StatefulWidget {
  const item_view_styling({super.key});

  @override
  State<item_view_styling> createState() => _item_view_stylingState();
}
class imagee extends StatelessWidget {
  double height;
  double width;
   imagee({super.key,required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
      child: Image(
        image: AssetImage('assets/images/img_3.png'),
      ),
    );
  }
}

class _item_view_stylingState extends State<item_view_styling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(17),
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xffEEE5DB),
                    Color(0xffD1B8A2),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        imagee(width: 30,height: 30,),
                        imagee(width: 30,height: 30,),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        imagee(width: 30,height: 30,),
                        imagee  (width: 30,height: 30,),
                      ],
                    ),
                  ],
                ),
              SizedBox(width: 20,),
              Column(
                children: [
                  SizedBox(height: 8,),
                  Text("Part of OUTFIT ABC"),
                  Text("Jeans/Lower")
                ],
              )
              ],
            ),),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.all(17),
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xffEEE5DB),
                    Color(0xffD1B8A2),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          imagee(width: 30,height: 30,),
                          imagee(width: 30,height: 30,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          imagee(width: 30,height: 30,),
                          imagee  (width: 30,height: 30,),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 20,),
                  Column(
                    children: [
                      SizedBox(height: 8,),
                      Text("Part of OUTFIT ABC"),
                      Text("Jeans/Lower")
                    ],
                  )
                ],
              ),),
            SizedBox(height: 15,),
          ],
        ),
      ),
    );
  }
}
