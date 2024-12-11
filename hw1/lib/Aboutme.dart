import 'package:flutter/material.dart';
import 'package:hw1/Aboutme.dart';

class Aboutme extends StatelessWidget{
  const Aboutme({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      //4----------------------------------------------------
      child: Column(
        children: [
          Image.asset("assets/images/E84C30CB-14A3-4B12-B80C-0521798CE35D (1).jpg"),
          const Text("ข้อมูลส่วนตัว\nชื่อ-นามสกุล : นายสรวิชญ์ ศรีสันต์\nชื่อเล่น : โอ๊ต\nอายุ : 21\nวัน/เดือน/ปีเกิด : 18/09/2003 ",
          style: TextStyle(fontSize: 20,fontFamily: "Tahoma"),
          textAlign: TextAlign.center,
          ),
        ],
      ),
      //4----------------------------------------------------
    );
  }
}