import 'package:flutter/material.dart';
import 'package:hw1/Mycat.dart';

class Mycat extends StatelessWidget{
  const Mycat({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      //4----------------------------------------------------
      child: Column(
        children: [
          Image.asset("assets/images/Image (12).jpg"),
          Image.asset("assets/images/Image (13).jpg"),
          Image.asset("assets/images/Image (14).jpg"),
          Image.asset("assets/images/Image (15).jpg"),
          Image.asset("assets/images/Image (16).jpg"),
          Image.asset("assets/images/Image (17).jpg"),
          Image.asset("assets/images/Image (18).jpg"),
          Image.asset("assets/images/Image (20).jpg"),
          Image.asset("assets/images/Image (19).jpg"),
          Image.asset("assets/images/Image (21).jpg"),
          Image.asset("assets/images/Image (22).jpg"),
        ],
      ),
      //4----------------------------------------------------
    );
  }
}