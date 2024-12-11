import 'package:flutter/material.dart';
import 'package:hw1/Myschool.dart';

class Myschool extends StatelessWidget{
  const Myschool({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      //4----------------------------------------------------
      child: Column(
        children: [
          const Text("ประถม : โรงเรียนจันทร์ฉายวิทยา",
          style: TextStyle(fontSize: 30,fontFamily: "Tahoma",fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          ),
          Image.asset("assets/images/school1.jpg"),

          const Text("\n"),
          const Text("มัธยม : โรงเรียนตาคลีประชาสรรค์",
          style: TextStyle(fontSize: 30,fontFamily: "Tahoma",fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          ),
          Image.asset("assets/images/school2.jpg"),

          const Text("\n"),
          const Text("มหาวิทยาลัย : มหาวิทยาลัยเทคโนโลยีราชมงคลธัญบุรี",
          style: TextStyle(fontSize: 30,fontFamily: "Tahoma",fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          ),
          Image.asset("assets/images/rmutt.jpg"),
        ],
      ),
      //4----------------------------------------------------
    );
  }
}