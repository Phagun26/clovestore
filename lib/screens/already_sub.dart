import 'package:flutter/material.dart';
class sub extends StatefulWidget {
  const sub({super.key});

  @override
  State<sub> createState() => _subState();
}

class _subState extends State<sub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 20),child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Already Subscribed",style: TextStyle(fontSize: 36),),
          SizedBox(height: 50,),
          Text("Non-Subs User",style: TextStyle(fontSize: 36))
        ],
      ),),
    );
  }
}
