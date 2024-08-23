import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project/screens/Outfits.dart';
import 'package:project/screens/home.dart';
import 'me.dart';
import 'package:icons_plus/icons_plus.dart';


class homepage extends StatefulWidget {
  int index;
   homepage({super.key, required this.index});


  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int selectedindex = 0;
  final screens=[
    home(),
    outfit(),
    Me(),
  ];
  void ontapped(int index){
    setState(() {
      widget.index=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    selectedindex = widget.index;
    return SafeArea(
      child: Scaffold(
        body: screens[selectedindex],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 1,
          selectedItemColor: Color(0xff472723) ,
          currentIndex: selectedindex,
          onTap: ontapped,
          items: [
            BottomNavigationBarItem(icon: Icon(TeenyIcons.home,size: 18,), label: ""),
            BottomNavigationBarItem(icon: Icon(MingCute.wardrobe_fill,size: 22,), label: ""),
            BottomNavigationBarItem(icon: Icon(Bootstrap.person_fill,size: 22,), label: "")
          ],
        ),
      ),
    );
  }
}
