import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class EditReview extends StatelessWidget {
  const EditReview({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController essayController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                      child: Container(
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
                    ),
                    Text(
                      'Add Review',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Wardrobe Stylist',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '6th April 2024, 4:00 pm',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                    color: Color(0xff000000)
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Rate Our Service Out of 5 Stars',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Color(0xff000000)
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 20.0, // Set a fixed height for the ListView
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5, // Set the number of stars to 5
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0), // Add some padding between stars
                      child: Icon(
                        Icons.star,
                        size: 20, // Set the star size as needed
                        color: Color(0xff472723),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Add Photos'
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 32,
                width: 85,
                decoration: BoxDecoration(
                  color: Color(0xffFAFAFA),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.camera_alt,
                        size: 12,
                      ),
                      Text(
                        'Add Photos',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontSize: 10
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Write Your Review.',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Color(0xff000000)
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 121 ,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xffFAFAFA),
                  borderRadius: BorderRadius.circular(4),),
                child: SingleChildScrollView(
                  child: TextField(
                    controller: essayController,
                    maxLines: null,
                    decoration: InputDecoration.collapsed(
                      hintStyle: TextStyle(
                        color: Color(0xff939393),
                      ),hintText: 'Write your Answer..',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 45 ,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xff472723),
                  borderRadius: BorderRadius.circular(4),),
                child: Center(
                  child: Text(
                    'Add Review',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
