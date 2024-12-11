import 'package:flutter/material.dart';
import 'package:hw1/myhome.dart';

class Myhome extends StatelessWidget{
  const Myhome({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      //4----------------------------------------------------
      child: Column(
        children: [
          const Text("ภาควิชาวิศวกรรมคอมพิวเตอร์\nคณะวิศวกรรมศาสตร์ มหาวิทยาลัยเทคโนโลยีราชมงคลธัญบุรี",
          style: TextStyle(fontSize: 20,fontFamily: "Tahoma"),
          textAlign: TextAlign.center,
          ),
          Image.asset("assets/images/1ea8be57df1ba27ac837b1267de51f8c.jpg"),

          const Text("\n\n"),
          Image.asset("assets/images/f552db7c20624372b0d0aa10567c7624.jpg")
        ],
      ),
      //4----------------------------------------------------
    );
  }
}