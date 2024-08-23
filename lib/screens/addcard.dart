import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project/screens/payment.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  bool isticked = false;
  @override
  Widget build(BuildContext context) {
    TextEditingController namecontroller=TextEditingController();
    TextEditingController cardnamecontroller=TextEditingController();
    TextEditingController expirycontroller=TextEditingController();
    TextEditingController cvvcontroller=TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
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
                    'Add Card Details',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 210,
              width: double.infinity,
              child: Image.asset(
                'assets/card.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Name',
              style: TextStyle(
                  color: Color(0xff3F434A),
                  fontSize: 14,
                  fontWeight: FontWeight.w400
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xffFAFAFA),
                borderRadius: BorderRadius.circular(4),
              ),
              child: TextField(
                controller: namecontroller,
                decoration: InputDecoration.collapsed(hintText: ''),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Card Name',
              style: TextStyle(
                  color: Color(0xff3F434A),
                  fontSize: 14,
                  fontWeight: FontWeight.w400
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xffFAFAFA),
                borderRadius: BorderRadius.circular(4),
              ),
              child: TextField(
                controller: cardnamecontroller,
                decoration: InputDecoration.collapsed(hintText: ''),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Expiry',
                      style: TextStyle(
                          color: Color(0xff3F434A),
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width*0.4,
                      decoration: BoxDecoration(
                        color: Color(0xffFAFAFA),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: TextField(
                        controller: expirycontroller,
                        decoration: InputDecoration.collapsed(hintText: ''),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CVV',
                      style: TextStyle(
                          color: Color(0xff3F434A),
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width*0.4,
                      decoration: BoxDecoration(
                        color: Color(0xffFAFAFA),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: TextField(
                        controller: cvvcontroller,
                        decoration: InputDecoration.collapsed(hintText: ''),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Checkbox(
                  activeColor:Color(0xff472723),
                  value: isticked,
                  onChanged: (bool? value) {
                    setState(() {
                      isticked = value!;
                    });
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Save Card',
                  style: TextStyle(
                    color: Color(0xff472723),
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            Spacer(),
            InkWell(
              onTap: (){
                Get.to(()=>Payment());
              },
              child: Container(
                height: 45 ,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xff472723),
                  borderRadius: BorderRadius.circular(4),),
                child: Center(
                  child: Text(
                    'Continue to Book',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
