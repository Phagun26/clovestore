import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project/screens/payment.dart';

class AddAddress extends StatefulWidget {
  const AddAddress({super.key});

  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  int? _selectedValue=1;
  @override
  Widget build(BuildContext context) {
    Widget _buildRadioTile(int value, String title,String subtitle) {
      return Column(
        children: [
          ListTile(
            subtitle: Text(subtitle),
            style: ListTileStyle.list,
            title: Text(title),
            trailing: Radio<int>(
              value: value,
              activeColor:Color(0xff472723),
              groupValue: _selectedValue,
              onChanged: (int? newValue) {
                setState(() {
                  _selectedValue = newValue;
                });
              },
            ),
            onTap: () {
              setState(() {
                _selectedValue = value;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8,),
            child: Row(
              children: [
                Expanded(child: Divider(color: Color(0xff000000).withOpacity(0.15),thickness: 1,)),
              ],
            ),
          )
        ],
      );
    }
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          child: Column(
            children: [
              Row(
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
                  Text(
                    'Add Address',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              Container(
                height: 480,
                width: 380,
                child: ListView(
                  children: [
                    _buildRadioTile(1, 'Address 1','6th April 2024, 4:00 pm'),
                    _buildRadioTile(2, 'Address 1','6th April 2024, 4:00 pm'),
                    _buildRadioTile(3, 'Address 1','6th April 2024, 4:00 pm'),
                    _buildRadioTile(4, 'Address 1','6th April 2024, 4:00 pm'),
                    _buildRadioTile(5, 'Address 1','6th April 2024, 4:00 pm'),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              DottedBorder(
                color:Color(0xff472723),
                strokeWidth: 2,
                dashPattern: [5, 3],
                child: Container(
                  height: 45,
                  width: 360,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color:Color(0xff472723),
                        ),
                        Text(
                            'Add Address',
                          style: TextStyle(
                            color:Color(0xff472723),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
                          fontSize: 14,
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
      ),
    );
  }
}
