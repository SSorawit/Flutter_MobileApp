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
          const Text("งานอดิเรก",
          style: TextStyle(fontSize: 30,fontFamily: "Tahoma",fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          ),
          Image.asset("assets/images/850b1e21ea026ea163ead4bca3e6955a.jpg"),
          const Text("เล่นเกม",
          style: TextStyle(fontSize: 30,fontFamily: "Tahoma"),
          textAlign: TextAlign.center,
          ),
          Image.asset("assets/images/ef9401dbad0036a31129c22b33d04e3c.jpg"),
          const Text("การนอน",
          style: TextStyle(fontSize: 30,fontFamily: "Tahoma"),
          textAlign: TextAlign.center,
          ),

          const Text("คติประจำใจ : อย่าหันหลังให้ไก่",
          style: TextStyle(fontSize: 50,fontFamily: "Tahoma"),
          textAlign: TextAlign.center,
          ),
        ],
      ),
      //4----------------------------------------------------
    );
  }
}