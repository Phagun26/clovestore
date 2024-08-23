import 'package:flutter/material.dart';

class image_temp extends StatelessWidget {
  double height;
  double width;
   image_temp({super.key,required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      height: height,
      width: width,

      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
      child: Image(
        image: AssetImage('assets/images/img_3.png'),
      ),
    );
  }
}
